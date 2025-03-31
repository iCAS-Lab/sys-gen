"""Argument parser and configuration parser for building a systolic array.
"""
################################################################################
# Std libs
import argparse
import shutil
from pathlib import Path

# Local libs
from utils.config import Config
################################################################################
################################################################################


def parse_arguments():
    parser = argparse.ArgumentParser(
        prog='Python Systolic Array Verilog Compiler',
        description=(
            'This program builds up and connects verilog modules '
            + 'via Python to enable easy manipulation and generation of '
            + 'verilog code for building systolic arrays.'
        )
    )
    # Output path
    parser.add_argument(
        '-o', '--output-path',
        type=str,
        default="./generated_rtl",
        help='The path to write the verilog and configuration to'
    )
    # Systolic array size
    parser.add_argument(
        '-r', '--rows',
        type=int,
        default=32,
        help='Number of rows in the systolic array'
    )
    parser.add_argument(
        '-c', '--cols',
        type=int,
        default=32,
        help='Number of columns in the systolic array'
    )
    # Precision
    parser.add_argument(
        '-d', '--data-width',
        type=int,
        default=8,
        help='Precision of integer computations'
    )
    parser.add_argument(
        '-t', '--accumulate-interval-width',
        type=int,
        default=5,
        help='Number of bits for the accumulation interval'
    )
    parser.add_argument(
        '-f', '--fifo-depth',
        type=int,
        default=8,
        help='Number of values that can be stored in the FIFOs'
    )
    parser.add_argument(
        '-n', '--name',
        type=str,
        help='Name of the developer in verilog heading'
    )
    parser.add_argument(
        '--target-device',
        type=str,
        help='Name of the device the verilog code is targeting'
    )
    parser.add_argument(
        '--tool-version',
        type=str,
        help='Version of the synthesis tool being used'
    )
    parser.add_argument(
        '--description',
        type=str,
        help='Description to add to the verilog heading comment'
    )
    args = parser.parse_args()
    return args


def set_config(args, config: Config):
    config.ROWS = args.rows
    config.COLS = args.cols
    config.DATA_WIDTH = args.data_width
    config.ACCUMULATE_TIME_WIDTH = args.accumulate_interval_width
    config.FIFO_DEPTH = args.fifo_depth
    config.ENGINEER = str(args.name)
    config.TARGET_DEVICES = str(args.target_device)
    config.TOOL_VERSION = str(args.tool_version)
    config.DESCRIPTION = str(args.description)
    config.OUT_PATH = Path(args.output_path)
    if not config.OUT_PATH.exists():
        config.OUT_PATH.mkdir(parents=True, exist_ok=True)
