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
from utils.tcl_generator import TCLGenerator
from verilog_gen.integer.systolic_array import SystolicArray
from verilog_gen.spiking.spiking_systolic_array import SpikingSystolicArray
from verilog_gen.spiking.activation_unit import ActivationUnit
################################################################################


def match_task(task: str, config: Config):
    if task == 'integer':
        # Default
        systolic_array = SystolicArray(config)
    elif task == 'spiking':
        systolic_array = SpikingSystolicArray(config)
    else:
        raise ValueError(f'Predefined generation task {task} not valid.')
    # Generate TCL Script
    TCLGenerator(systolic_array, config).write()


################################################################################
if __name__ == '__main__':
    # Parse arguments passed in by the user
    args = parse_arguments()

    # Init config and set any parameters passed in by the user
    config = Config()
    set_config(args, config)
    config.write()

    for task in config.TASKS:
        match_task(task, config)
