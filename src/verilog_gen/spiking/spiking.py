"""Generate a Spiking Systolic Array provided the config.
"""
################################################################################
# Std libs

# Local libs
from utils.config import Config
from src.utils.tcl_generator import TCLGenerator
from verilog_gen.spiking.spiking_systolic_array import SpikingSystolicArray
################################################################################


def generate(config: Config):
    systolic_array = SpikingSystolicArray(config=config)
    TCLGenerator(systolic_array, config).write()
