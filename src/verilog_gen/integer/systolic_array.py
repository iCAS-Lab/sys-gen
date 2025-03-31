"""Compiler for generating a systolic array with the proper PEs and FIFOs
"""
################################################################################
# Local Libs
from generics.verilog_module import VerilogModule
from utils.config import Config
from verilog_gen.utils.fifo import FIFO
from verilog_gen.integer.integer_mac_pe import IntegerMACPE
from verilog_gen.utils.mux import MUX
from verilog_gen.utils.demux import DEMUX
################################################################################
MODULE_NAME = 'systolic_array'
################################################################################


class SystolicArray(VerilogModule):
    def __init__(self, config: Config):
        self.row_demux_select_width = len(bin(config.ROWS)[2:]) - 1
        self.col_demux_select_width = len(bin(config.COLS)[2:]) - 1
        self.mux_select_width = len(bin(config.ROWS*config.COLS)[2:]) - 1
        self.row_fifo_prefix = 'row_fifo'
        self.col_fifo_prefix = 'col_fifo'
        self.mac_generator = IntegerMACPE(config)
        self.fifo_generator = FIFO(config)
        self.mux_generator = MUX(config)
        self.row_demux_generator = DEMUX(config, config.ROWS)
        self.col_demux_generator = DEMUX(config, config.COLS)

        super().__init__(
            config=config,
            module_name=f'{MODULE_NAME}_{config.ROWS}x{config.COLS}'
        )

    def generate_definition(self):
        # Module definition
        verilog = (
            f'module {MODULE_NAME}_{self.config.ROWS}x{self.config.COLS} '
            + f'#(parameter DEPTH={self.config.FIFO_DEPTH}, '
            + f'DATA_WIDTH={self.config.DATA_WIDTH}, '
            + f'OUT_SELECT_WIDTH={self.mux_select_width}) (\n'
        )

        # Module IO
        verilog += (
            f'\tinput clk, rstn,\n'
        )
        # Single r/w enable
        verilog += (
            f'\tinput r_en, w_en,\n'
        )
        verilog += (
            f'\tinput [{self.row_demux_select_width-1}:0] row_select,\n'
            + f'\tinput [{self.col_demux_select_width-1}:0] col_select,\n'
        )
        verilog += (
            f'\tinput [OUT_SELECT_WIDTH-1:0] out_select,\n'
        )
        # for i in range(self.config.ROWS):
        verilog += (
            # Row FIFO Inputs
            f'\tinput signed [DATA_WIDTH-1:0] in_row,\n'
        )
        # for j in range(self.config.COLS):
        verilog += (
            # Column FIFO Inputs
            f'\tinput signed [DATA_WIDTH-1:0] in_col,\n'
        )
        verilog += (
            f'\toutput signed [DATA_WIDTH-1:0] mux_data_out,\n'
        )
        # FIFO state signals
        for i in range(self.config.ROWS):
            verilog += (
                f'\toutput row_fifo_{i}_full,\n'
                + f'\toutput row_fifo_{i}_empty,\n'
            )
        for j in range(self.config.COLS):
            verilog += (
                f'\toutput col_fifo_{j}_full,\n'
                + f'\toutput col_fifo_{j}_empty,\n'
            )
        verilog = verilog[:-2]
        verilog += '\n);\n'
        return verilog

    def generate_demuxes(self):
        verilog = ''
        for i in range(self.config.ROWS):
            verilog += (
                f'\twire [DATA_WIDTH-1:0] row_demux_out_data_{i};\n'
            )
        verilog += self.row_demux_generator.generate_instance(
            'row_demux',
            'row_select',
            'in_row',
            'row_demux_out_data'
        )
        for i in range(self.config.COLS):
            verilog += (
                f'\twire [DATA_WIDTH-1:0] col_demux_out_data_{i};\n'
            )
        verilog += self.col_demux_generator.generate_instance(
            'col_demux',
            'col_select',
            'in_col',
            'col_demux_out_data'
        )
        return verilog

    def generate_fifos(self):
        # Instantiate FIFOs
        verilog = self.config.section_comment(1, 'FIFO Instantiations')
        for i in range(self.config.ROWS):
            verilog += (
                f'\twire signed [DATA_WIDTH-1:0] {self.row_fifo_prefix}_'
                + f'{i}_out;\n'
            )
            verilog += self.fifo_generator.generate_instance(
                self.row_fifo_prefix,
                row_id=i,
                in_data=f'row_demux_out_data_{i}'
            )

        # Instantiate FIFO connections
        for j in range(self.config.ROWS):
            verilog += (
                f'\twire signed [DATA_WIDTH-1:0] {self.col_fifo_prefix}_'
                + f'{j}_out;\n'
            )
            verilog += self.fifo_generator.generate_instance(
                self.col_fifo_prefix,
                col_id=j,
                in_data=f'col_demux_out_data_{j}',
            )
        return verilog

    def generate_pes(self):
        verilog = self.config.section_comment(1, 'MAC PE Instantiations')
        for i in range(self.config.ROWS):
            for j in range(self.config.COLS):
                # Instantiate the wires for connecting PEs
                verilog += \
                    f'\twire signed [DATA_WIDTH-1:0] ' \
                    + f'out_row_{i}_{j};\n'
                verilog += \
                    f'\twire signed [DATA_WIDTH-1:0] ' \
                    + f'out_col_{i}_{j};\n'
                verilog += \
                    f'\twire signed [DATA_WIDTH-1:0] ' \
                    + f'out_data_{i}_{j};\n'
                # Instantiate the next PE and connect
                verilog += self.mac_generator.generate_instance(
                    i, j,
                )
        return verilog

    def generate_muxes(self):
        verilog = self.mux_generator.generate_instance()
        return verilog

    def generate_module(self):
        """Generate an ROWSxCOLS systolic array of data_width precision and 
        FIFOs of depth fifo_depth.
        """
        # Write the module definition code
        verilog = self.generate_definition()

        # Write FIFO demuxes
        verilog += self.generate_demuxes()

        # Write FIFO code
        verilog += self.generate_fifos()

        # Generate the verilog for the PEs
        verilog += self.generate_pes()

        # Generate Output MUX
        verilog += self.generate_muxes()

        # End module
        verilog += self.config.ENDMODULE

        return verilog

    def generate_instance(self):
        pass
