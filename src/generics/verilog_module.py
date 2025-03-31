"""
Contains the Abstract Base Class (ABC) for implementing verilog modules. This
requires the following to be implemented:

- an __init__ function calling super().__init__(config=config)
- a generate_module function which generates/updates a verilog module
- a generate_instance function which creates an instance of the verilog module
"""
################################################################################
# Std Libs
import abc

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


class VerilogModule(abc.ABC):

    @abc.abstractmethod
    def __init__(self, config: Config, module_name: str):
        self.config = config
        self.verilog = self.generate_module()
        self.out_file = module_name + '.v'
        self.write(self.out_file)
        self.children_modules = []

    def write(self, fname: str):
        """
        Writes the verilog definition of each module to its own
        verilog *.v file.
        """
        with open(self.config.MODULE_PATH / fname, 'w') as f:
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
    def generate_instance(self):
        """
        A function to be used to generate instances of a verilog module.

        For example, if we have a multiply-accumulate i.e. 'mac' unit
        implemented in verilog, then this function should return a string
        which creates a instance of the 'mac' unit. Example verilog:

        ```verilog
        mac example_mac_unit (
            .in_a (a),
            .in_b (b),
            .out_c (c)
        );
        ```
        :return: The verilog code that represents a single instance of the
            verilog module.
        :rtype: str
        """
