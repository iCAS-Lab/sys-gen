"""Relevant code for generating TCL scripts for synthesizing the verilog.
"""
################################################################################
from generics.verilog_module import VerilogModule
from pathlib import Path
################################################################################


class TCLGenerator:
    def __init__(self, top_module: VerilogModule):
        top_module.out_file
        # TODO: Loop through each module and generate the proper TCL scripts
        # We will need to modify the verilog classes to store their children in
        # a list to do so.
