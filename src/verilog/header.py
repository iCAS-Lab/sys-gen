"""Relevant code for generating verilog code files.
"""
################################################################################
import datetime
################################################################################
# Initialization
HEADER = ''

# Mutable variables
TIMESCALE = '`timescale 1ns / 1ps'
COMPANY = 'TODO'
ENGINEER = 'TODO'
DATE = datetime.datetime.now()
TARGET_DEVICES = 'TODO'
TOOL_VERSION = 'TODO'
DESCRIPTION = 'TODO'

# Styling 
LINE_LENGTH = 80
COMMENT_LINE = '/' * LINE_LENGTH
################################################################################
def update_header():
    """Update the header to be used at the beginning of each verilog module.
    """
    global HEADER
    HEADER = f"""
    {TIMESCALE}
    {COMMENT_LINE}
    // Company: {COMPANY}
    // Engineer: {ENGINEER}
    // 
    // Create Date: {DATE}
    // Target Devices: {TARGET_DEVICES} 
    // Tool Versions: {TOOL_VERSION}
    // Description: {DESCRIPTION}
    //
    // Additional Comments:
    {COMMENT_LINE}
    """