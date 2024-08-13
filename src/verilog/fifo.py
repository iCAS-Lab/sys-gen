"""Relevant code regarding building conventional integer processing elements.
"""
################################################################################
# Std libs
from pathlib import Path

# Local libs
from config import Config
################################################################################
# Base verilog code
MODULE_NAME = 'fifo'
MODULE_IO = """
(
    input clk, rstn,
    input w_en, r_en,
    input [DATA_WIDTH-1:0] in_data,
    output reg [DATA_WIDTH-1:0] out_data = 0,
    output full, empty
);
"""
MODULE_CONTENTS = """
    reg [$clog2(DEPTH)-1:0] w_ptr, r_ptr;
    reg [DATA_WIDTH-1:0] fifo[DEPTH-1:0];

    // Write enabled and not full
    always @ (posedge clk) begin
        if (! rstn) begin
            w_ptr <= 0;
        end
        else if (w_en & ! full) begin
            fifo[w_ptr] <= in_data;
            w_ptr <= w_ptr + 1;
        end
    end

    // Read enabled and not empty
    always @ (posedge clk) begin
        if (! rstn) begin
            out_data <= 0;
            r_ptr <= 0;
        end
        else if (r_en & ! empty) begin
            out_data <= fifo[r_ptr];
            r_ptr <= r_ptr + 1;
        end
    end
    
    // Evaluate if full and empty should be set
    assign full = ((w_ptr + 1'b1) == r_ptr);
    assign empty = (w_ptr == r_ptr);
"""
################################################################################
class FIFO:
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
            f'module {MODULE_NAME} #(parameter DEPTH={self.config.FIFO_DEPTH}, '
            + f'DATA_WIDTH={self.config.DATA_WIDTH}) '
        )
        verilog += MODULE_CONTENTS
        verilog += self.config.ENDMODULE
        return verilog
    
    def generate(
            self,
            name,
            row_id='X',
            col_id='X',
            in_data=None,
        ):
        out_data = f'fifo_out_{row_id}_{col_id}'
        full = f'fifo_full_{row_id}_{col_id}'
        empty = f'fifo_empty_{row_id}_{col_id}'
        instance_string = (
            f'\tfifo fifo_{name}_{row_id}_{col_id} (\n'
            + f'\t\t.clk (clk),\n'
            + f'\t\t.rstn (rstn),\n'
            + f'\t\t.w_en (w_en_{row_id}_{col_id}),\n'
            + f'\t\t.r_en (r_en_{row_id}_{col_id}),\n'
            + f'\t\t.in_data ({in_data}),\n'
            + f'\t\t.out_data ({out_data}),\n'
            + f'\t\t.full ({full}), .empty({empty})\n'
            + f'\t);\n'
        )
        return instance_string, out_data
