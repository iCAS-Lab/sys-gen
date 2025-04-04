"""Relevant code regarding building spiking processing elements.
"""
################################################################################
# Local Libs
from generics.verilog_module import VerilogModule
from utils.config import Config
################################################################################
MODULE_NAME = 'spiking_pe'
MODULE_IO = """
(
    input clk,
    input rstn,
    input in_row,
    input signed [DATA_WIDTH-1:0] in_col,
    output reg signed [DATA_WIDTH-1:0] out_data,
    output reg out_row,
    output reg signed [DATA_WIDTH-1:0] out_col
);
"""
MODULE_DEFINITION = """
    // Integrate spikes into membrane potential
    always @ (posedge clk) begin
        // Reset logic
        if (! rstn) begin
            out_data <= 0;
            out_row <= 0;
            out_col <= 0;
        end
        else if (in_row) begin
            out_data <= out_data + in_col;
        end
        out_row <= in_row;
        out_col <= in_col;
    end
"""
################################################################################


class SpikingPE(VerilogModule):
    def __init__(self, config: Config):
        super().__init__(config=config, module_name=MODULE_NAME)

    def generate_module(self):
        verilog = (
            f'module {MODULE_NAME} '
            + f'#(parameter DATA_WIDTH={self.config.DATA_WIDTH})'
        )
        verilog += MODULE_IO
        verilog += MODULE_DEFINITION
        verilog += self.config.ENDMODULE
        return verilog

    def generate_instance(
            self,
            row_id='X',
            col_id='X',
            rstn='rstn_pe'
    ):
        if row_id == 0 or col_id == 0:
            # Determine which port is connect to a FIFO
            in_row = f'row_fifo_{row_id}_out' if col_id == 0 else (
                f'out_row_{row_id}_{col_id-1}'
            )
            in_col = f'col_fifo_{col_id}_out' if row_id == 0 else (
                f'out_col_{row_id-1}_{col_id}'
            )
            instance_string = (
                f'\t{MODULE_NAME} spiking_pe_{row_id}_{col_id} (\n'
                + f'\t\t.clk (clk),\n'
                + f'\t\t.rstn ({rstn}),\n'
                + f'\t\t.in_row ({in_row}),\n'
                + f'\t\t.in_col ({in_col}),\n'
                + f'\t\t.out_row (out_row_{row_id}_{col_id}),\n'
                + f'\t\t.out_col (out_col_{row_id}_{col_id}),\n'
                + f'\t\t.out_data (out_data_{row_id}_{col_id})\n'
                + f'\t);\n'
            )
        else:
            instance_string = (
                f'\t{MODULE_NAME} spiking_pe_{row_id}_{col_id} (\n'
                + f'\t\t.clk (clk),\n'
                + f'\t\t.rstn ({rstn}),\n'
                # Connect inputs to previous PE outputs
                + f'\t\t.in_row (out_row_{row_id}_{col_id-1}),\n'
                + f'\t\t.in_col (out_col_{row_id-1}_{col_id}),\n'
                # Output ports
                + f'\t\t.out_row (out_row_{row_id}_{col_id}),\n'
                + f'\t\t.out_col (out_col_{row_id}_{col_id}),\n'
                + f'\t\t.out_data (out_data_{row_id}_{col_id})\n'
                + f'\t);\n'
            )

        return instance_string
