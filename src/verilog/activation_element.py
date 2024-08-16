"""Relevant code regarding building activation elements.
"""
################################################################################
# Local Libs
from generics.verilog_module import VerilogModule
from utils.config import Config
from src.verilog.threshold_element import ThresholdElement
from verilog.accumulator_element import AccumulatorElement
################################################################################
MODULE_NAME = 'activation_element'
MODULE_IO = """
(
    input clk, rstn,
    input reset_accumulate_timer,
    input signed [DATA_WIDTH-1:0] membrane_potential,
    input signed [DATA_WIDTH-1:0] threshold,
    output reg signed [DATA_WIDTH-1:0] accumulated_spikes
);
"""
################################################################################
class ActivationElement(VerilogModule):
    def __init__(self, config: Config):
        self.threshold_unit_generator = ThresholdElement(config=config)
        self. accumulator_generator = AccumulatorElement(config=config)
        super().__init__(config=config, module_name=MODULE_NAME)
    
    def generate_module(self) -> str:
        verilog = (
            f'module {MODULE_NAME}'
            + f'#(parameter DATA_WIDTH={self.config.DATA_WIDTH})'
        )
        verilog += MODULE_IO
        verilog += self.threshold_unit_generator.generate_instance()
        verilog += self.accumulator_generator.generate_instance()
        return verilog
    
    def generate_instance(
            self,
            name,
            col_id: int,
            in_reset_accumulate_timer: str,
            membrane_potential: str,
            accumulated_spikes: str
    ):
        verilog = (
            f'\t{MODULE_NAME} {name} (\n'
            + f'\t\t.clk (clk),\n'
            + f'\t\t.rstn (rstn),\n'
            + f'\t\t.reset_accumulate_timer ({in_reset_accumulate_timer}),\n'
            + f'\t\t.membrane_potential ({membrane_potential}),\n'
            + f'\t\t.threshold (threshold_{col_id}),\n'
            + f'\t\t.accumulated_spikes ({accumulated_spikes})\n'
            + f'\t);\n'
        )
        return verilog