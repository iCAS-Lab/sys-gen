"""Main driver program for building a systolic array of specified size.
"""
################################################################################
# Std Libs
import os
import sys
from pathlib import Path

# Local Libs
from utils.argparser import parse_arguments, set_config
from utils.config import Config
from utils.generate_tcl_script import TCLGenerator
from verilog_gen.integer.systolic_array import SystolicArray
from verilog_gen.spiking.spiking_systolic_array import SpikingSystolicArray
from verilog_gen.spiking.activation_unit import ActivationUnit
################################################################################
if __name__ == '__main__':
    # Parse arguments passed in by the user
    args = parse_arguments()

    # Init config and set any parameters passed in by the user
    config = Config()
    set_config(args, config)
    config.write()

    # Build verilog
    systolic_array = SystolicArray(config=config)
    spiking_systolic_array = SpikingSystolicArray(config=config)
    # activation_unit = ActivationUnit(config=config)

    # Write the TCL scripts
    TCLGenerator(systolic_array, config).write()
    TCLGenerator(spiking_systolic_array, config).write()
