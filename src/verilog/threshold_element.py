"""Relevant code for building threshold units.
"""
################################################################################
# Local libs
from generics.verilog_module import VerilogModule
from utils.config import Config
################################################################################
MODULE_NAME = 'threshold_element'
MODULE_IO = """
(
    input clk, rstn,
    input signed [DATA_WIDTH-1:0] membrane_potential,
    input signed [DATA_WIDTH-1:0] threshold,
    output spike
);
"""
MODULE_DEFINITION = """
    assign spike = (membrane_potential >= threshold) ? 1 : 0;
"""
################################################################################
class ThresholdElement(VerilogModule):
    def __init__(self, config: Config):
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
            col_id: int
    ):
        in_threshold = f'threshold_{col_id}'
        in_membrane_potential = f'membrane_potential_{col_id}'
        out_spike = f'spike_{col_id}'
        verilog_instance = (
            f'\t{MODULE_NAME} threshold_{col_id} (\n'
            + f'\t\t.clk (clk),\n'
            + f'\t\t.rstn (rstn),\n'
            + f'\t\t.membrane_potential ({in_membrane_potential}),\n'
            + f'\t\t.threshold ({in_threshold}),\n'
            + f'\t\t.spike ({out_spike})\n'
            + f'\t);\n'
        )
        return verilog_instance