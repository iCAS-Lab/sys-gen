"""Compiler for generating a systolic array with the proper PEs and FIFOs
"""
################################################################################
from pathlib import Path
from config import Config
from mac_pe import MAC_PE
from fifo import FIFO
################################################################################
class SystolicArray:
    def __init__(self, config: Config):
        self.config = config
        self.module = """
        module systolic_array_2x2_syn (
        """
        self.parameters = """
        );
        """
        self.verilog = ''
        self.mac_generator = MAC_PE()
        self.fifo_generator = FIFO()
        self.generate()

    def generate_module_definition(self):
        # Module definition
        self.verilog += (
            f'module systolic_array_{self.config.ROWS}x{self.config.COLS} '
            + f'#(parameter DEPTH={self.config.FIFO_DEPTH}, '
            + f'DATA_WIDTH={self.config.DATA_WIDTH}) ('
        )

        # Module IO
        self.verilog += (
            f'\tinput clk, rstn,'
        )
        for i in range(self.config.ROWS):
            self.verilog += (
                # Row FIFO Inputs
                f'\tinput [DATA_WIDTH-1:0] in_row_{i}_X,\n'
                f'\tinput r_en_{i}_X, w_en_{i}_X\n'
            )
        for j in range(self.config.COLS):
            self.verilog += (
                # Column FIFO Inputs
                f'\tinput [DATA_WIDTH-1:0] in_col_X_{j},\n'
                f'\tinput r_en_{j}_X, w_en_X_{j}\n'
            )
        for i in range(self.config.ROWS):
            for j in range(self.config.COLS):
                self.verilog += (
                    f'\toutput signed [DATA_WIDTH-1:0] out_data_{i}_{j},\n'
                )
        self.verilog += ');\n\n'

    def generate_fifos(self):
        # Instantiate FIFOs
        for i in range(self.config.ROWS):
            self.verilog += (
                self.fifo_generator.generate(
                    'row_fifo',
                    row_id=i,
                    in_data=f'in_row_{i}_X',
            ))

        # Instantiate FIFO connections
        for j in range(self.config.ROWS):
            self.verilog += (
                self.fifo_generator.generate(
                    'col_fifo',
                    col_id=j,
                    in_data=f'in_col_X_{j}',
            ))
    
    def generate_pes(self):
        for i in range(self.config.ROWS):
            for j in range(self.config.COLS):
                # Instantiate the wires for connecting PEs
                self.verilog += \
                    f'wire signed [DATA_WIDTH-1:0] ' \
                    + f'out_col_{i}_{j};'
                self.verilog += \
                    f'wire signed [DATA_WIDTH-1:0] ' \
                    + f'out_row_{i}_{j};'
                # Instantiate the next PE and connect
                self.verilog += self.mac_generator.generate(
                    i, j,
                )


    def generate(self):
        """Generate an ROWSxCOLS systolic array of data_width precision and 
        FIFOs of depth fifo_depth.
        """
        
        # Write the header
        self.verilog += self.config.HEADER

        # Write the module definition code
        self.generate_module_definition()

        # Write FIFO code
        self.generate_fifos()

        # Generate the verilog for the PEs
        self.generate_pes()

        # End module
        self.verilog += self.config.ENDMODULE

    def write(self, path:Path):
        f = open(
            self.config.module_path / 
            f'systolic_array_{self.config.N}x{self.config.M}',
            'w'
        )
        f.write(self.verilog)
        f.close()
