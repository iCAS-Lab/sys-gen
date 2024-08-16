"""Relevant code for generating verilog code files.

This file contains the variables that are used when generating the verilog.

These should be changed immediately upon a configuration being loaded. These
variables are then shared/used within the modules to setup the default verilog
templates.
"""
################################################################################
import datetime
import shutil
from pathlib import Path
################################################################################


class Config:
    def __init__(self):
        # Configurations
        self.DATA_WIDTH = 16
        self.FIFO_DEPTH = 8
        self.ROWS = 32
        self.COLS = 32
        self.CLK = 'clk'
        self.RSTN = 'rstn'
        self.ENDMODULE = '\nendmodule\n'
        self.MODULE_PATH = Path.cwd().parent / 'generated_verilog'

        # Accumulator settings
        self.ACCUMULATE_TIME_WIDTH = 5
        self.ACCUMULATE_INTERVAL = 2 ** self.ACCUMULATE_TIME_WIDTH - 1

        # Verilog heading options
        self.TIMESCALE = '`timescale 1ns / 1ps'
        self.COMPANY = 'TODO'
        self.ENGINEER = 'TODO'
        self.DATE = datetime.datetime.now()
        self.TARGET_DEVICES = 'TODO'
        self.TOOL_VERSION = 'TODO'
        self.DESCRIPTION = 'TODO'

        # Styling
        self.LINE_LENGTH = 80
        self.COMMENT = '//'
        self.COMMENT_LINE = self.COMMENT * 40
        self.HALF_COMMENT_LINE = self.COMMENT * 20

        # Generate the verilog heading
        self.HEADER = ''
        self.update_header()

        # Init directories
        shutil.rmtree(self.MODULE_PATH, ignore_errors=True)
        Path.mkdir(self.MODULE_PATH, exist_ok=True)

    def update_header(self):
        """Update the header to be used at the beginning of each verilog module.
        """
        self.HEADER = (
            f'{self.TIMESCALE}\n'
            f'{self.COMMENT_LINE}\n'
            f'// Company: {self.COMPANY}\n'
            f'// Engineer: {self.ENGINEER}\n'
            f'//\n'
            f'// Create Date: {self.DATE}\n'
            f'// Target Devices: {self.TARGET_DEVICES}\n'
            f'// Tool Versions: {self.TOOL_VERSION}\n'
            f'// Description: {self.DESCRIPTION}\n'
            f'//\n'
            f'// Additional Comments:\n'
            f'{self.COMMENT_LINE}\n'
        )

    def section_comment(self, num_tabs: int, comment):
        indentation = '\t'*num_tabs
        divider = (
            indentation + self.COMMENT *
            (self.LINE_LENGTH // (num_tabs+2)) + '\n'
        )
        sec_comment = (
            divider
            + indentation + self.COMMENT + ' ' + comment + '\n'
            + divider
        )
        return sec_comment

    def __iter__(self):
        pass

    def read(self, path: Path):
        pass

    def write(self, path: Path):
        pass
