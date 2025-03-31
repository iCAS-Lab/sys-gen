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
    ):
        verilog_instance = (
            f'\t{MODULE_NAME} threshold (\n'
            + f'\t\t.membrane_potential (membrane_potential),\n'
            + f'\t\t.threshold (in_threshold),\n'
            + f'\t\t.spike (spike)\n'
            + f'\t);\n'
        )
        return verilog_instance
