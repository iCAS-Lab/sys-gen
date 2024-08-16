"""Relevant code regarding building activation elements.
"""
################################################################################
# Local Libs
from generics.verilog_module import VerilogModule
from utils.config import Config
from verilog.threshold_element import ThresholdElement
from verilog.accumulator_element import AccumulatorElement
################################################################################
MODULE_NAME = 'activation_element'
MODULE_IO = """
(
    input clk, rstn,
    input signed [DATA_WIDTH-1:0] membrane_potential,
    input signed [DATA_WIDTH-1:0] threshold,
    output spike,
    output signed [DATA_WIDTH-1:0] accumulated_spikes
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
            f'module {MODULE_NAME} '
            + f'#(parameter DATA_WIDTH={self.config.DATA_WIDTH})'
        )
        verilog += MODULE_IO
        verilog += self.threshold_unit_generator.generate_instance()
        verilog += self.accumulator_generator.generate_instance()
        verilog += self.config.ENDMODULE
        return verilog

    def generate_instance(
            self,
            col_id: int,

    ):
        in_membrane_potential = f'membrane_potential_{col_id}'
        in_threshold = f'threshold_{col_id}'
        out_spike = f'out_spike_{col_id}'
        out_accumulated_spikes = f'accumulated_spikes_{col_id}'
        verilog = (
            f'\t{MODULE_NAME} activation_element_{col_id} (\n'
            + f'\t\t.clk (clk),\n'
            + f'\t\t.rstn (rstn),\n'
            + f'\t\t.membrane_potential ({in_membrane_potential}),\n'
            + f'\t\t.threshold ({in_threshold}),\n'
            + f'\t\t.spike ({out_spike}),\n'
            + f'\t\t.accumulated_spikes ({out_accumulated_spikes})\n'
            + f'\t);\n'
        )
        return verilog
