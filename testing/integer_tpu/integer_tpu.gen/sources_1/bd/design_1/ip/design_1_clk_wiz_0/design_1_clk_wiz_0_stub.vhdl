-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Jul 31 01:49:20 2024
-- Host        : S7117-Evolution running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/S7117/Repos/Spike-TPU/testing/integer_tpu/integer_tpu.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0/design_1_clk_wiz_0_stub.vhdl
-- Design      : design_1_clk_wiz_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_clk_wiz_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end design_1_clk_wiz_0;

architecture stub of design_1_clk_wiz_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,locked,clk_in1";
begin
end;
