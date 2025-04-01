"""Relevant code for generating verilog code files.

This file contains the variables that are used when generating the verilog.

These should be changed immediately upon a configuration being loaded. These
variables are then shared/used within the modules to setup the default verilog
templates.
"""
################################################################################
import datetime
import json
import shutil
import textwrap
import typing as ty
from pathlib import Path
################################################################################


class Config:
    def __init__(self):
        # Configurations
        self.DATA_WIDTH = 8
        self.FIFO_DEPTH = 8
        self.ROWS = 32
        self.COLS = 32
        self.VERILOG_SEED = 123
        self.CLK = 'clk'
        self.CLK_T = '1'
        self.RSTN = 'rstn'
        self.ENDMODULE = '\nendmodule\n'
        self.TASKS = []

        # Paths
        self._OUT_PATH = Path.cwd() / 'experiment'
        self.MODULE_PATH = self.OUT_PATH / 'rtl'
        self.TBS_PATH = self.OUT_PATH / 'tbs'
        self.paths = [
            'tbs',
            'rtl',
            'work',
            'logs',
            'reports'
        ]

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
        self.TAB_CHARS = '  '
        self.TAB_LEN = 0
        self.FCMT = '// {}\n'
        self.COMMENT_LINE = self.COMMENT * 40
        self.HALF_COMMENT_LINE = self.COMMENT * 20

        # Generate the verilog heading
        self.HEADER = ''
        self.update_header()

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
        yield 'date', str(self.DATE)
        yield 'rows', self.ROWS
        yield 'cols', self.COLS
        yield 'data_width', self.DATA_WIDTH
        yield 'fifo_depth', self.FIFO_DEPTH
        yield 'accumulate_interval_width', self.ACCUMULATE_TIME_WIDTH
        yield 'module_path', str(self.MODULE_PATH)
        yield 'name', self.ENGINEER
        yield 'company', self.COMPANY
        yield 'tool_version', self.TOOL_VERSION
        yield 'description', self.DESCRIPTION

    def read(self, path: Path):
        pass

    def write(self):
        with open(self.OUT_PATH / f'config_{self.DATE}.json', 'w') as f:
            f.write(json.dumps(dict(self), indent=4))

    def line(self, in_str: str, tabs: int = None) -> str:
        if tabs:
            return self.TAB_CHARS*tabs + in_str + '\n'
        else:
            return self.TAB_CHARS*self.TAB_LEN + in_str + '\n'

    def cline(self, in_str: str, tabs: int = None) -> str:
        if tabs:
            return self.TAB_CHARS*tabs + self.FCMT.format(in_str)
        else:
            return self.TAB_CHARS*self.TAB_LEN + self.FCMT.format(in_str)

    def tinc(self):
        self.TAB_LEN += 1

    def tdec(self):
        self.TAB_LEN -= 1

    def reset_tlen(self):
        self.TAB_LEN = 0

    def indent(self, in_str: str) -> str:
        split_str = textwrap.dedent(in_str).strip().split('\n')
        split_str = '\n'.join(
            [self.TAB_CHARS*self.TAB_LEN + i for i in split_str]
        )
        return split_str

    @property
    def OUT_PATH(self):
        return self._OUT_PATH

    @OUT_PATH.setter
    def OUT_PATH(self, new_path: Path):
        self._OUT_PATH = new_path
        self.MODULE_PATH = self.OUT_PATH / 'rtl'
        self.TBS_PATH = self.OUT_PATH / 'tbs'

    def init_paths(self):
        """Cleanup directory structure and create directories for generated
        output to be stored.
        """
        shutil.rmtree(self.OUT_PATH, ignore_errors=True)
        for p_str in self.paths:
            p = Path(self.OUT_PATH / p_str)
            if not p.exists():
                p.mkdir(parents=True, exist_ok=True)
