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
import typing as ty

# Local Libs
from utils.config import Config
################################################################################


class VerilogModule(abc.ABC):

    @abc.abstractmethod
    def __init__(self, config: Config, module_name: str):
        self.config = config
        self.children_modules: ty.List[VerilogModule] = []
        self.config.reset_tlen()
        self.module_verilog = self.generate_module()
        self.module_name = module_name
        self.tb_name = 'tb_' + self.module_name
        self.mod_out_file = self.module_name + '.v'
        self.tb_out_file = self.tb_name + '.v'
        self.write_module(self.mod_out_file)

    def write_module(self, fname: str):
        """
        Writes the verilog definition of each module to its own
        verilog *.v file.
        """
        with open(self.config.MODULE_PATH / fname, 'w') as f:
            f.write(self.config.HEADER)
            f.write(self.module_verilog)

    def write_testbench(self, fname: str):
        """
        Writes the verilog definition of each module to its own
        verilog *.v file.
        """
        tb_verilog = self.generate_testbench()
        with open(self.config.TBS_PATH / fname, 'w') as f:
            f.write(self.config.HEADER)
            f.write(tb_verilog)

    @abc.abstractmethod
    def generate_module(self) -> str:
        """
        A function which generates the code for a verilog module. In other
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

    @abc.abstractmethod
    def generate_testbench(self):
        """
        A function to be used to generate testbenches for each module.

        This will create modules for testing the verilog modules so that each
        design can be independently verified.

        :return: The testbench verilog code that will test each module for
            functionality.
        :rtype: str
        """
