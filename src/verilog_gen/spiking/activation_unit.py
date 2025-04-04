"""Relevant code regarding building activation elements.
"""
################################################################################
# Local Libs
from generics.verilog_module import VerilogModule
from utils.config import Config
from verilog_gen.spiking.activation_element import ActivationElement
################################################################################
MODULE_NAME = 'activation_unit'
MODULE_IO = """
(
  input clk, rstn,
"""
################################################################################


class ActivationUnit(VerilogModule):
    def __init__(self, config: Config):
        self.activation_element_generator = ActivationElement(config=config)
        super().__init__(
            config=config,
            module_name=f'{MODULE_NAME}_{config.COLS}'
        )

    def generate_module(self) -> str:
        verilog = (
            f'module {MODULE_NAME}_{self.config.COLS} '
            + f'#(parameter DATA_WIDTH={self.config.DATA_WIDTH}, '
            + f'TIMER_WIDTH={self.config.ACCUMULATE_TIME_WIDTH})'
        )
        verilog += MODULE_IO

        for i in range(self.config.COLS):
            verilog += f'\tinput signed [DATA_WIDTH-1:0] threshold_{i},\n'
            verilog += f'\tinput signed [DATA_WIDTH-1:0] membrane_potential_{i},\n'
        for i in range(self.config.COLS):
            verilog += f'\toutput [TIMER_WIDTH-1:0] accumulated_spikes_{i},\n'
            verilog += f'\toutput out_spike_{i},\n'
        verilog = verilog[:-2]
        verilog += '\n);\n'

        # Generate Activation Elements
        for i in range(self.config.COLS):
            verilog += self.activation_element_generator.generate_instance(i)

        verilog += self.config.ENDMODULE

        return verilog

    def generate_instance(self):
        pass
