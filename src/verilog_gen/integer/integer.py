"""Generate an integer Systolic Array provided the config.
"""
################################################################################
# Std libs

# Local libs
from utils.config import Config
from src.utils.tcl_generator import TCLGenerator
from verilog_gen.integer.systolic_array import SystolicArray
################################################################################


def generate(config: Config):
    systolic_array = SystolicArray(config=config)
    TCLGenerator(systolic_array, config).write()
