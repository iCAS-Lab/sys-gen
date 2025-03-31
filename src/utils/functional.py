"""Relevant functions for navigation and performing certain operations on
verilog modules.
"""
################################################################################
# STD
import typing as ty

# Local
from generics.verilog_module import VerilogModule
################################################################################


def get_all_verilog_files(
    parent_module: VerilogModule,
    out_files: ty.List[str]
):
    """Recursively navigates through the modules using BFS to get all of the
    module files/names.

    :param parent_module: A parent module to start the recursion from.
    :type parent_module: VerilogModule
    :param out_files: List of verilog files for all verilog modules.
    :type out_files: ty.List[str]
    """
    out_files.append(parent_module.out_file)
    for child in parent_module.children_modules:
        get_all_verilog_files(child, out_files)


def replace_middle_string(
        big_string: str,
        middle_string: str
):
    """Replace the middle of a string with a specific string/word.

    :param big_string: The string to add the middle string into the middle of.
    :type big_string: str
    :param middle_string: The smaller string to insert into the big string.
    :type middle_string: str
    """
    len_big = len(big_string)
    len_mid = len(middle_string)
    if len_big < len_mid:
        raise IndexError('Cannot insert a middle string larger than first.')
    mid_start = (len_big - len_mid) // 2
    mid_end = mid_start + len_mid
    return big_string[:mid_start] + middle_string + big_string[mid_end:]
