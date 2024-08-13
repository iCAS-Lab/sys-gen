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
        self.DATA_WIDTH=16
        self.FIFO_DEPTH=8
        self.ROWS=32
        self.COLS=32
        self.CLK = 'clk'
        self.RSTN = 'rstn'
        self.ENDMODULE = '\nendmodule\n'
        self.MODULE_PATH = Path.parent / 'generated_verilog'

        
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
        self.COMMENT_LINE = '/' * self.LINE_LENGTH

        # Generate the verilog heading
        self.HEADER = ''
        self.update_header()

        # Init directories
        shutil.rmtree(self.MODULE_PATH, ignore_errors=True)
        Path.mkdir(self.MODULE_PATH, exist_ok=True)

    def update_header(self):
        """Update the header to be used at the beginning of each verilog module.
        """
        self.HEADER = f"""
        {self.TIMESCALE}
        {self.COMMENT_LINE}
        // Company: {self.COMPANY}
        // Engineer: {self.ENGINEER}
        // 
        // Create Date: {self.DATE}
        // Target Devices: {self.TARGET_DEVICES} 
        // Tool Versions: {self.TOOL_VERSION}
        // Description: {self.DESCRIPTION}
        //
        // Additional Comments:
        {self.COMMENT_LINE}
        """

    def __iter__(self):
        pass

    def read(self, path: Path):
        pass

    def write(self, path: Path):
        pass