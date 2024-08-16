"""Relevant code for building accumulator units.
"""
################################################################################
# Local libs
from generics.verilog_module import VerilogModule
from utils.config import Config\
################################################################################
MODULE_NAME = 'accumulator_element'
MODULE_IO = """
(
    input clk, rstn,
    input reset_accumulated_spikes,
    input spike,
    output reg [DATA_WIDTH-1:0] accumulated_spikes
);
"""
MODULE_DEFINITION = """
    always @ (posedge clk or negedge rstn) begin
        if (! rstn || reset_accumulated_spikes) begin
            accumulated_spikes <= 0;
        end
        else if (spike) begin
            accumulated_spikes <= accumulated_spikes + 1;
        end
    end
"""
################################################################################
class AccumulatorElement(VerilogModule):
    def __init__(self, config):
        super().__init__(config, MODULE_NAME)
    
    def generate_module(self) -> str:
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
            name: str,
            col_id: str
    ):
        out_wires = f'out_{((col_id+1)*self.config.DATA_WIDTH)-1}'
        verilog_instance = (
            f'\t{MODULE_NAME} {name}_{col_id} (\n'
            + f'\t\t.clk (clk),\n'
            + f'\t\t.rstn (rstn),\n'
            + f'\t\t.reset_accumulated_spikes (reset_accumulated_spikes),\n'
            + f'\t\t.spike (spike_{col_id}),\n'
            + f'\t\t.accumulated_spikes ({out_wires})\n'
            + f'\t);\n'
        )
        return verilog_instance