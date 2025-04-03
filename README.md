# sys-gen: An Arbitrary Precision Systolic Array Generator

**SYS-GEN** or <ins>**SYS**</ins>tolic Array <ins>**GEN**</ins>erator is a Python tool that generates Register-Transfer Level (RTL) code in the Verilog High Description Language (HDL) for implementing systolic arrays of arbitrary bit precision. The Verilog code is verifiable and synthesizable by using the tool's automatically generated testbenches in tools such as Synopsys Design Compiler and in the Vitis/Vivado AMD-Xilinx tools. Additionally, the tool dynamically generates TCL scripts to run different synthesis routines easily (right now the tool only generates a timing closure TCL script, but more TCL scripts supporting different optimizations will be added in the future).

In the future, SYS-GEN will support more than systolic arrays. It will help define more digital designs after we build up the basic logic modules. At this point, **SYS-GEN** will be migrated from <ins>**SYS**</ins>tolic Array <ins>**GEN**</ins>erator to a digital <ins>**SYS**</ins>tem <ins>**GEN**</ins>erator. 

## Use:

```
$ python src/main.py -h
usage: Python Systolic Array Verilog Compiler [-h] [-o OUTPUT_PATH] [-r ROWS] [-c COLS]
                                              [-d DATA_WIDTH]
                                              [-t ACCUMULATE_INTERVAL_WIDTH]
                                              [-f FIFO_DEPTH] [-n NAME] [-g GENERATE]
                                              [--target-device TARGET_DEVICE]
                                              [--tool-version TOOL_VERSION]
                                              [--description DESCRIPTION]

This program builds up and connects verilog modules via Python to enable easy
manipulation and generation of verilog code for building systolic arrays.

options:
  -h, --help            show this help message and exit
  -o OUTPUT_PATH, --output-path OUTPUT_PATH
                        The path to write the verilog and configuration to
  -r ROWS, --rows ROWS  Number of rows in the systolic array
  -c COLS, --cols COLS  Number of columns in the systolic array
  -d DATA_WIDTH, --data-width DATA_WIDTH
                        Precision of integer computations
  -t ACCUMULATE_INTERVAL_WIDTH, --accumulate-interval-width ACCUMULATE_INTERVAL_WIDTH
                        Number of bits for the accumulation interval
  -f FIFO_DEPTH, --fifo-depth FIFO_DEPTH
                        Number of values that can be stored in the FIFOs
  -n NAME, --name NAME  Name of the developer in verilog heading
  -g GENERATE, --generate GENERATE
                        Specify a comma separated list of predefined systolic arrays to
                        generate.
  --target-device TARGET_DEVICE
                        Name of the device the verilog code is targeting
  --tool-version TOOL_VERSION
                        Version of the synthesis tool being used
  --description DESCRIPTION
                        Description to add to the verilog heading comment
```

## Quickstart:

Initialize the Python environment using the packages included in `env.yml`:

```
conda env create -f ./env.yml
```

Run the following command to generate a simple 32x32 8-bit integer Output-Stationary (OS) systolic array.

```
python src/main.py
```

The resulting generated code can be found in the `experiment` directory as follows:

```
experiment
├── config_2025-03-31 18:42:56.413556.json
├── logs
├── reports
├── rtl
│   ├── demux_1_to_32.v
│   ├── fifo.v
│   ├── integer_mac_pe.v
│   ├── mux_1024_to_1.v
│   └── systolic_array_32x32.v
├── script_systolic_array_32x32.tcl
└── work
```

- `experiment` - root project directory for using in synthesis tools.
- `config_2025-03-31 18:42:56.413556.json` - Configuration file for reproducing results.
- `logs` - directory for logs.
- `reports` - directory for synthesis results.
- `rtl` - location of the Verilog code.
- `script_systolic_array_32x32.tcl` - script for synthesizing the design in Synopsys Design Compiler.
- `work` - directory for generated design files.

For some sample code generated by the tool see the contents of the [`output_sample`](output_sample/) directory.

## TCL Scripts

The tool has a built in TCL script generator which generates a timing closure TCL script for optimizing the design timing.

## Tools Supported for Synthesis

- Support for Synopsys Design Compiler V-2023.12-SP5
- Support for Vitis/Vivado 2024.2 (TBD)

## Deployment

In the future, we hope to further develop this pipeline to deploy the synthesized designs onto Field Programmable Gate Arrays (FPGAs) utilizing libraries like PYNQ.

## Current Limitations/Caveats/TODOs:

- Support multiple TCL script configurations
- Create an option to disable timing closure loop in TCL script
- TCL Script needs to be parameterized and integrated into the config
- Configurations are not able to be read in and need to be further developed
- Need to implement Fixed-Point and Floating-Point architectures
- Need to ensure that logic is signed for weights and membrane potential
- More than one type of design optimization (Area? Power? etc.)
- Add systolic arrays with different dataflows (IS and WS)
- Currently, the outputs of the PEs is truncated to the same input bitwidth. Need to parameterize this.
- Make the code interoperable with [SCALE Sim v2](https://github.com/scalesim-project/scale-sim-v2)
