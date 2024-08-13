"""Relevant code regarding building conventional integer processing elements.
"""
################################################################################
# Std libs
from pathlib import Path

# Local libs
from config import Config
################################################################################
MODULE_NAME = 'integer_mac_pe'
MODULE_IO = """
(
    input clk, rstn,
    input signed [DATA_WIDTH-1:0] in_row,
    input signed [DATA_WIDTH-1:0] in_col,
    output reg signed [DATA_WIDTH-1:0] out_row = 0,
    output reg signed [DATA_WIDTH-1:0] out_col = 0,
    output reg signed [DATA_WIDTH-1:0] out_data = 0
);
"""
MODULE_CONTENTS = f"""
    always @ (posedge clk) begin
        if (! rstn) begin
            out_data <= 0;
            out_row <= 0;
            out_col <= 0;
        end
        else
            out_data <= out_data + (in_row * in_col);
            out_row <= in_row;
            out_col <= in_col;
    end
"""
################################################################################
class MAC_PE:
    def __init__(self, config: Config):
        self.config = config
        self.verilog = self.update_module()

    def write(self, module_path: Path):
        with open(module_path, 'w') as f:
            f.write(self.config.HEADER)
            f.write(self.verilog)


    def update_module(self):
        verilog = ''
        verilog += (
            f'module {MODULE_NAME} '
            + f'#(parameter DATA_WIDTH={self.config.DATA_WIDTH})'
        )
        verilog += MODULE_CONTENTS
        verilog += self.config.ENDMODULE
        return verilog

    def generate(
            self,
            row_id='X',
            col_id='X',
        ):
        if row_id == 0 or col_id == 0:
            # Determine which port is connect to a FIFO
            in_row = f'fifo_out_{row_id}_X' if row_id == 0 else (
                f'out_row_{row_id}_{col_id}'
            )
            in_col = f'fifo_out_X_{col_id}' if col_id == 0 else (
                f'out_col_{row_id}_{col_id}'
            )
            instance_string = (
                f'\tinteger_mac_pe mac_pe_{row_id}_{col_id} (\n'
                + f'\t\t.clk (clk),\n'
                + f'\t\t.rstn (rstn),\n'
                + f'\t\t.in_row ({in_row}),\n'
                + f'\t\t.in_col ({in_col}),\n'
                + f'\t\t.out_data (out_data_{row_id}_{col_id}),\n'
                + f'\t\t.out_col (out_col_{row_id}_{col_id}),\n'
                + f'\t\t.out_row (out_row_{row_id}_{col_id})\n'
                + f'\t);\n'
            )
        else:
            instance_string = (
                f'\tinteger_mac_pe mac_pe_{row_id}_{col_id} (\n'
                + f'\t\t.clk (clk),\n'
                + f'\t\t.rstn (rstn),\n'
                # Connect inputs to previous PE outputs
                + f'\t\t.in_row (out_row_{row_id}_{col_id-1})),\n'
                + f'\t\t.in_col (out_col_{row_id-1}_{col_id}),\n'
                # Output ports
                + f'\t\t.out_data (out_data_{row_id}_{col_id}),\n'
                + f'\t\t.out_col (out_col_{row_id}_{col_id}),\n'
                + f'\t\t.out_row (out_row_{row_id}_{col_id})\n'
                + f'\t);\n'
            )
        
        return instance_string