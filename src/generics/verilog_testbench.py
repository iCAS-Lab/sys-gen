"""
Contains the Abstract Base Class (ABC) for implementing verilog testbenches.
This requires the following to be implemented:

This class inherits from the VerilogModule class and simply overrides the write
function to point to the testbench directory tbs instead of rtl.

- an __init__ function calling super().__init__(config=config)
- a generate_module function which generates/updates a verilog module
- a generate_instance function which creates an instance of the verilog module
"""
################################################################################
# Std Libs
import abc
import typing as ty

# Local Libs
from utils.config import Config
################################################################################
# To enable easily editing of the functional verilog code please place
# verilog code docstrings at the top of the VerilogModule derived class here.
# For Example:
# MODULE_NAME = 'mac'
# MODULE_IO = """
# (
#     input clk, rstn
#     input a,
#     input b,
#     output c
# );
# """
# MODULE_DEFINITION = """
#    always @ (posedge clk) begin
#       ...
#    end
# """
################################################################################


class VerilogTestbench(abc.ABC):

    @abc.abstractmethod
    def __init__(self, config: Config, module_name: str):
        self.config = config
        self.verilog = self.generate_module()
        self.module_name = module_name
        self.out_file = 'tb_' + self.module_name + '.v'
        self.write(self.out_file)

    def write(self, fname: str):
        """
        Writes the verilog definition of each module to its own
        verilog *.v file.
        """
        with open(self.config.TBS_PATH / fname, 'w') as f:
            f.write(self.config.HEADER)
            # TODO: Write module name/io here
            f.write(self.verilog)
            # TODO: Write endmodule
            # f.write(self.config.ENDMODULE)

    @abc.abstractmethod
    def generate_module(self) -> str:
        """A function which generates the code for a verilog module. In other
        words, this function should declare the verilog module. It is NOT to be
        used to generate an instance of a verilog module.

        :return: The declaration/definition of a verilog module.
        :rtype: str
        """

    @abc.abstractmethod
    def generate_test(self) -> str:
        """The code to generate the testbench verilog code for a specific
        module. 

        :return: The code for testing the respective module which includes
            defining the clk, all of the connecting wires/registers, and
            the input signals consisting of different values.
        :rtype: str
        """
