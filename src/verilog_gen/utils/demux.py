"""Relevant code regarding building de-multiplexers.
"""
################################################################################
# STD libs
import math

# Local libs
from generics.verilog_module import VerilogModule
from utils.config import Config
################################################################################
# Base verilog code
MODULE_NAME = 'demux'
MODULE_IO = """
(
  input [SELECT_WIDTH-1:0] select,
"""
MODULE_DEFINITION = """
  // Perform mux operation
  always @ (select) begin
    case (select)
REPLACE_INSERT_CASES
  endcase
end
"""
################################################################################


class DEMUX(VerilogModule):
    def __init__(self, config: Config, num_out: int):
        self.num_out = num_out
        self.module_name = (
            f'{MODULE_NAME}_1_to_'
            + f'{num_out}'
        )
        self.select_width = len(bin(self.num_out)[2:]) - 1
        super().__init__(config=config, module_name=self.module_name)

    def generate_module(self):
        verilog = ''
        verilog += (
            f'module {self.module_name} #(parameter '
            + f'SELECT_WIDTH={self.select_width}, '
            + f'DATA_WIDTH={self.config.DATA_WIDTH}) '
        )
        verilog += MODULE_IO
        verilog += (
            f'\tinput signed [DATA_WIDTH-1:0] in_data,\n'
        )
        for i in range(self.num_out):
            verilog += (
                f'\toutput reg signed [DATA_WIDTH-1:0] out_data_{i},\n'
            )
        verilog = verilog[:-2]
        verilog += '\n);\n'
        cases = ''
        counter = 0
        for i in range(self.num_out):
            binary = bin(counter)[2:]
            binary = '0'*(self.select_width - len(binary)) + binary
            cases += '\t'*3
            cases += (
                f'{self.select_width}\'b{binary} : '
                + f'out_data_{i} <= in_data;\n'
            )
            counter += 1
        verilog += MODULE_DEFINITION.replace('REPLACE_INSERT_CASES', cases[:-1])
        verilog += self.config.ENDMODULE
        return verilog

    def generate_instance(
        self,
        instance_name: str = 'demux',
        select_wires_name: str = 'select',
        in_data_wire_names: str = 'in_demux_data',
        out_data_prefix: str = 'demux_data_out',
        data_width: int = None
    ):
        new_data_width = ''
        if data_width:
            new_data_width = f'#(.DATA_WIDTH({data_width}))'
        # Select index
        instance_string = (
            f'\t{self.module_name} {new_data_width} {instance_name} (\n'
            + f'\t\t.select ({select_wires_name}),\n'
        )
        instance_string += (
            f'\t\t.in_data ({in_data_wire_names}),\n'
        )
        for i in range(self.num_out):
            instance_string += (
                f'\t\t.out_data_{i} ({out_data_prefix}_{i}),\n'
            )
        instance_string = instance_string[:-2] + '\n'
        instance_string += f'\t);\n'
        return instance_string

    def generate_testbench(self):
        demux_generator = DEMUX(config=self.config, num_out=self.num_out)
        verilog = ''
        verilog += self.config.line(f'module {self.tb_name};')
        self.config.tinc()
        verilog += self.config.cline('Define IO')
        verilog += self.config.line(f'reg {self.config.CLK};')
        verilog += self.config.line(f'reg {self.config.RSTN};')
        verilog += self.config.line(f'reg [{self.select_width-1}:0] select;')
        verilog += self.config.line(
            f'reg [{self.config.DATA_WIDTH-1}:0] input_data;'
        )
        verilog += self.config.line(
            f'wire [{self.config.DATA_WIDTH-1}:0] out_data '
            + f'[0:{self.config.ROWS-1}];'
        )
        for i in range(self.config.ROWS):
            verilog += self.config.line(
                f'wire [{self.config.DATA_WIDTH-1}:0] '
                + f'out_data_{i} = out_data[{i}];', 1
            )
        verilog += demux_generator.generate_instance(
            in_data_wire_names='input_data',
            out_data_prefix='out_data'
        )
        verilog += self.config.line('initial begin')
        self.config.tinc()
        verilog += self.config.line(
            f'$monitor("Time=%0t | select=%b -> input_data=%b %s", '
            + f'$time, select, input_data, (out_data[select] == input_data) '
            + f'? "PASS" : "FAIL");'
        )
        selecter = 0
        counter = 0
        for i in range(self.config.ROWS):
            binary = bin(counter)[2:]
            select_bin = '0'*(self.select_width - len(binary)) + binary
            binary = '0'*(self.config.DATA_WIDTH - len(binary)) + binary
            verilog += self.config.line(
                f'inputs = {self.config.DATA_WIDTH}\'b{binary}; '
                + f'select = {self.select_width}\'b{select_bin}; #10;'
            )
            counter += 1
            selecter += 1
        # If the precision of each input is lower than the select width i.e.
        # the number of of inputs exceeds the precision of each, then we
        # must duplicate some of our values to test the MUX.
        # Here we shift start each row with its corresponding index and
        # increase the values by 1
        if self.config.DATA_WIDTH < self.select_width:
            counter = counter % min(self.config.COLS, self.config.ROWS) + 1
        return verilog
