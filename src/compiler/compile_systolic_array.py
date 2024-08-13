"""Compiler for generating a systolic array with the proper PEs and FIFOs
"""
################################################################################
from pathlib import Path
################################################################################
################################################################################
def generate_systolic_array(N: int, M: int, data_width: int, fifo_depth: int):
    """Generate an NxM systolic array of data_width precision and FIFOs of
    depth fifo_depth.

    :param N: Number of rows in the systolic array.
    :type N: int
    :param M: Number of columns in the systolic array.
    :type M: int
    :param data_width: Number of bits for the inputs/outputs.
    :type data_width: int
    :param fifo_depth: Number of memory cells in the FIFOs.
    :type fifo_depth: int
    """
    # Loop over the dimensions and generate the verilog for the systolic array
    for i in range(N):
        for j in range(M):
            pass