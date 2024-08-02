-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Jul 31 03:31:03 2024
-- Host        : S7117-Evolution running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/S7117/Repos/Spike-TPU/testing/integer_tpu/integer_tpu.gen/sources_1/bd/design_1/ip/design_1_systolic_array_2x2_s_0_1/design_1_systolic_array_2x2_s_0_1_stub.vhdl
-- Design      : design_1_systolic_array_2x2_s_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_systolic_array_2x2_s_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    r_en0_w : in STD_LOGIC;
    r_en1_w : in STD_LOGIC;
    r_en0_i : in STD_LOGIC;
    r_en1_i : in STD_LOGIC;
    w_en0_w : in STD_LOGIC;
    w_en1_w : in STD_LOGIC;
    w_en0_i : in STD_LOGIC;
    w_en1_i : in STD_LOGIC;
    test_weight0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    test_weight1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    test_ifmap0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    test_ifmap1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    full0_w : out STD_LOGIC;
    full1_w : out STD_LOGIC;
    full0_i : out STD_LOGIC;
    full1_i : out STD_LOGIC;
    empty0_w : out STD_LOGIC;
    empty1_w : out STD_LOGIC;
    empty0_i : out STD_LOGIC;
    empty1_i : out STD_LOGIC;
    ofmap_wires_00 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_weight_00 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_ifmap_00 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ofmap_wires_01 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_weight_01 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_ifmap_01 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ofmap_wires_10 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_weight_10 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_ifmap_10 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ofmap_wires_11 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_weight_11 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_ifmap_11 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end design_1_systolic_array_2x2_s_0_1;

architecture stub of design_1_systolic_array_2x2_s_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rstn,r_en0_w,r_en1_w,r_en0_i,r_en1_i,w_en0_w,w_en1_w,w_en0_i,w_en1_i,test_weight0[15:0],test_weight1[15:0],test_ifmap0[15:0],test_ifmap1[15:0],full0_w,full1_w,full0_i,full1_i,empty0_w,empty1_w,empty0_i,empty1_i,ofmap_wires_00[15:0],out_weight_00[15:0],out_ifmap_00[15:0],ofmap_wires_01[15:0],out_weight_01[15:0],out_ifmap_01[15:0],ofmap_wires_10[15:0],out_weight_10[15:0],out_ifmap_10[15:0],ofmap_wires_11[15:0],out_weight_11[15:0],out_ifmap_11[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "systolic_array_2x2_syn,Vivado 2024.1";
begin
end;
