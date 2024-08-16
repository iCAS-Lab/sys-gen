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
    output spike,
    output reset_membrane_potential
);
"""
MODULE_DEFINITION = """
    assign spike = (membrane_potential >= threshold) ? 1 : 0;
    assign reset_membrane_potential = spike ? 1 : 0;
"""
################################################################################
class ThresholdElement(VerilogModule):
    def __init__(self, config: Config):
        super().__init__(config, MODULE_NAME)

    def generate_module(self) -> str:
        verilog = (
            f'module {MODULE_NAME} '
            + f'#(parameter DATA_WIDTH={self.config.DATA_WIDTH})\n'
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
        verilog_instance = (
            f'\t{MODULE_NAME} {name} (\n'
            + f'\t\t,\n'
            + f'\t);\n'
        )
        return verilog_instance