"""Relevant code regarding building multiplexers.
"""
################################################################################
# STD libs
import math

# Local libs
from generics.verilog_module import VerilogModule
from utils.config import Config
################################################################################
# Base verilog code
MODULE_NAME = 'mux'
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


class MUX(VerilogModule):
    def __init__(self, config: Config):
        global MODULE_NAME
        self.module_name = (
            f'{MODULE_NAME}_{config.ROWS*config.COLS}_to_'
            + f'1'
        )
        self.select_width = len(bin(config.COLS*config.ROWS)[2:]) - 1
        super().__init__(config=config, module_name=self.module_name)

    def generate_module(self):
        verilog = ''
        verilog += (
            f'module {MODULE_NAME} #(parameter '
            + f'SELECT_WIDTH={self.select_width}, '
            + f'DATA_WIDTH={self.config.DATA_WIDTH}) '
        )
        verilog += MODULE_IO
        for i in range(self.config.ROWS):
            for j in range(self.config.COLS):
                verilog += (
                    f'\tinput signed [DATA_WIDTH-1:0] in_data_{i}_{j},\n'
                )
        verilog += (
            '\toutput reg signed [DATA_WIDTH-1:0] out_data\n);\n'
        )
        cases = ''
        counter = 0
        for i in range(self.config.ROWS):
            for j in range(self.config.COLS):
                binary = bin(counter)[2:]
                binary = '0'*(self.select_width - len(binary)) + binary
                cases += '\t'*3
                cases += (
                    f'{self.select_width}\'b{binary} : '
                    + f'out_data <= in_data_{i}_{j};\n'
                )
                counter += 1
        verilog += MODULE_DEFINITION.replace('REPLACE_INSERT_CASES', cases[:-1])
        verilog += self.config.ENDMODULE
        return verilog

    def generate_instance(
        self,
        instance_name: str = 'mux',
        select_name: str = 'out_select',
        in_data_prefix: str = 'out_data',
        out_data_name: str = 'mux_data_out',
        data_width: int = None
    ):
        new_data_width = ''
        if data_width:
            new_data_width = f'#(.DATA_WIDTH({data_width}))'
        # Select index
        instance_string = (
            f'\t{self.module_name} {new_data_width} {instance_name} (\n'
            + f'\t\t.select ({select_name}),\n'
        )
        for i in range(self.config.ROWS):
            for j in range(self.config.COLS):
                instance_string += (
                    f'\t\t.in_data_{i}_{j} ({in_data_prefix}_{i}_{j}),\n'
                )
        instance_string += (
            f'\t\t.out_data ({out_data_name})\n'
            + f'\t);\n'
        )
        return instance_string
