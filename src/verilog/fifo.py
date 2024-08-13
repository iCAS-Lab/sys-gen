"""Relevant code regarding building conventional integer processing elements.
"""
################################################################################
# Std libs
from pathlib import Path

# Local libs
from generics.verilog_module import VerilogModule
from utils.config import Config
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
MODULE_DEFINITION = """
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
class FIFO(VerilogModule):
    def __init__(self, config: Config):
        super().__init__(config=config, module_name=MODULE_NAME)
    
    def generate_module(self):
        verilog = ''
        verilog += (
            f'module {MODULE_NAME} #(parameter DEPTH={self.config.FIFO_DEPTH}, '
            + f'DATA_WIDTH={self.config.DATA_WIDTH}) '
        )
        verilog += MODULE_IO
        verilog += MODULE_DEFINITION
        verilog += self.config.ENDMODULE
        return verilog
    
    def generate_instance(
            self,
            name,
            row_id='X',
            col_id='X',
            in_data=None,
        ):
        # Select index
        idx = row_id if row_id != 'X' else col_id
        out_data = f'{name}_{idx}_out'
        full = f'{name}_{idx}_full'
        empty = f'{name}_{idx}_empty'
        instance_string = (
            f'\tfifo {name}_{idx} (\n'
            + f'\t\t.clk (clk),\n'
            + f'\t\t.rstn (rstn),\n'
            + f'\t\t.w_en ({name}_{idx}_w_en),\n'
            + f'\t\t.r_en ({name}_{idx}_r_en),\n'
            + f'\t\t.in_data ({in_data}),\n'
            + f'\t\t.out_data ({out_data}),\n'
            + f'\t\t.full ({full}),\n'
            + f'\t\t.empty({empty})\n'
            + f'\t);\n'
        )
        return instance_string
