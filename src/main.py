"""Main driver program for building a systolic array of specified size.
"""
################################################################################
# Std Libs
import os
import sys
from pathlib import Path

# Local Libs
from utils.config import Config
from verilog.systolic_array import SystolicArray
from verilog.spiking_systolic_array import SpikingSystolicArray
from verilog.activation_unit import ActivationUnit
################################################################################
if __name__ == '__main__':
    config = Config()
    systolic_array = SystolicArray(config=config)
    spiking_systolic_array = SpikingSystolicArray(config=config)
    activation_unit = ActivationUnit(config=config)
