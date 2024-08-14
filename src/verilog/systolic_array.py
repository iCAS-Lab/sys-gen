"""Compiler for generating a systolic array with the proper PEs and FIFOs
"""
################################################################################
# Std Libs
from pathlib import Path

# Local Libs
from generics.verilog_module import VerilogModule
from utils.config import Config
from verilog.integer_mac_pe import INTEGER_MAC_PE
from verilog.fifo import FIFO
################################################################################
MODULE_NAME = 'systolic_array'
################################################################################
class SystolicArray(VerilogModule):
    def __init__(self, config: Config):
        self.mac_generator = INTEGER_MAC_PE(config)
        self.fifo_generator = FIFO(config)
        self.row_fifo_prefix = 'row_fifo'
        self.col_fifo_prefix = 'col_fifo'
        super().__init__(
            config=config,
            module_name=f'{MODULE_NAME}_{config.ROWS}x{config.COLS}'
        )

    def generate_definition(self):
        # Module definition
        verilog = (
            f'module {MODULE_NAME}_{self.config.ROWS}x{self.config.COLS} '
            + f'#(parameter DEPTH={self.config.FIFO_DEPTH}, '
            + f'DATA_WIDTH={self.config.DATA_WIDTH}) (\n'
        )

        # Module IO
        verilog += (
            f'\tinput clk, rstn,\n'
        )
        for i in range(self.config.ROWS):
            verilog += (
                # Row FIFO Inputs
                f'\tinput [DATA_WIDTH-1:0] in_row_{i},\n'
                + f'\tinput {self.row_fifo_prefix}_{i}_r_en, '
                + f'{self.row_fifo_prefix}_{i}_w_en,\n'
            )
        for j in range(self.config.COLS):
            verilog += (
                # Column FIFO Inputs
                f'\tinput [DATA_WIDTH-1:0] in_col_{j},\n'
                + f'\tinput {self.col_fifo_prefix}_{j}_r_en, '
                + f'{self.col_fifo_prefix}_{j}_w_en,\n'
            )
        for i in range(self.config.ROWS):
            for j in range(self.config.COLS):
                verilog += (
                    f'\toutput signed [DATA_WIDTH-1:0] out_data_{i}_{j},\n'
                )
            if i == self.config.ROWS - 1:
                verilog = verilog[:-2]

        verilog += '\n);\n'
        return verilog

    def generate_fifos(self):
        # Instantiate FIFOs
        verilog = self.config.section_comment(1, 'FIFO Instantiations')
        for i in range(self.config.ROWS):
            verilog += self.fifo_generator.generate_instance(
                    self.row_fifo_prefix,
                    row_id=i,
                    in_data=f'in_row_{i}',
            )

        # Instantiate FIFO connections
        for j in range(self.config.ROWS):
            verilog += self.fifo_generator.generate_instance(
                    self.col_fifo_prefix,
                    col_id=j,
                    in_data=f'in_col_{j}',
            )
        return verilog
    
    def generate_pes(self):
        verilog = self.config.section_comment(1, 'MAC PE Instantiations')
        for i in range(self.config.ROWS):
            for j in range(self.config.COLS):
                # Instantiate the wires for connecting PEs
                verilog += \
                    f'\twire signed [DATA_WIDTH-1:0] ' \
                    + f'out_col_{i}_{j};\n'
                verilog += \
                    f'\twire signed [DATA_WIDTH-1:0] ' \
                    + f'out_row_{i}_{j};\n'
                # Instantiate the next PE and connect
                verilog += self.mac_generator.generate_instance(
                    i, j,
                )
        return verilog


    def generate_module(self):
        """Generate an ROWSxCOLS systolic array of data_width precision and 
        FIFOs of depth fifo_depth.
        """
        # Write the module definition code
        verilog = self.generate_definition()

        # Write FIFO code
        verilog += self.generate_fifos()

        # Generate the verilog for the PEs
        verilog += self.generate_pes()

        # End module
        verilog += self.config.ENDMODULE

        return verilog

    def generate_instance(self):
        pass