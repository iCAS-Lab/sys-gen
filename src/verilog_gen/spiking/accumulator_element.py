"""Relevant code for building accumulator units.
"""
################################################################################
# Local libs
from generics.verilog_module import VerilogModule
from utils.config import Config
################################################################################
MODULE_NAME = 'accumulator_element'
MODULE_IO = """
(
    input clk, rstn,
    input spike,
    output reg [TIMER_WIDTH-1:0] accumulated_spikes
);
"""
MODULE_DEFINITION = """
    always @ (posedge clk) begin
        if (! rstn) begin
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
            + f'#(parameter TIMER_WIDTH={self.config.ACCUMULATE_TIME_WIDTH})'
        )
        verilog += MODULE_IO
        verilog += MODULE_DEFINITION
        verilog += self.config.ENDMODULE
        return verilog

    def generate_instance(
            self,
    ):
        verilog_instance = (
            f'\t{MODULE_NAME} accumulator (\n'
            + f'\t\t.clk (clk),\n'
            + f'\t\t.rstn (rstn),\n'
            + f'\t\t.spike (spike),\n'
            + f'\t\t.accumulated_spikes (accumulated_spikes)\n'
            + f'\t);\n'
        )
        return verilog_instance
