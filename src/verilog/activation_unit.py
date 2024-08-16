"""Relevant code regarding building activation elements.
"""
################################################################################
# Local Libs
from generics.verilog_module import VerilogModule
from utils.config import Config
from verilog.activation_element import ActivationElement
################################################################################
MODULE_NAME = 'activation_unit'
MODULE_IO = """
(
    input clk, rstn,
    input [TIMER_WIDTH-1:0] accumulate_interval,
    input signed [DATA_WIDTH*COLS-1:0] thresholds,
    output [DATA_WIDTH*COLS-1:0] out_data
);
"""
MODULE_DEFINITION = """
    reg [TIMER_WIDTH-1:0] timer;
    wire reset_accumulated_spikes;
    
    always @ (posedge clk or negedge rstn) begin
        if (! rstn) begin
            timer <= 0;
        end
    end

    // Reset the number of accumulated spikes if the interval has been reached
    assign reset_accumulated_spikes = (time >= accumulate_interval) ? 1 : 0;
"""
################################################################################
class ActivationUnit(VerilogModule):
    def __init__(self, config: Config, module_name: str):
        self.activation_element_generator = ActivationElement(config=config)
        super().__init__(config, module_name)

    def generate_module(self) -> str:
        verilog = (
            f'module {MODULE_NAME} '
            + f'#(parameter DATA_WIDTH={self.config.DATA_WIDTH}, '
            + f'TIMER_WIDTH={self.config.ACCUMULATE_TIME_WIDTH})\n'
        )
        verilog += MODULE_IO
        verilog += MODULE_DEFINITION
        
        # Generate Activation Elements
        for i in range(self.config.COLS):
            verilog += self.activation_element_generator.generate_instance(
                f'activation_element_{i}')
        
        return verilog
    
    def generate_instance(self):
        pass