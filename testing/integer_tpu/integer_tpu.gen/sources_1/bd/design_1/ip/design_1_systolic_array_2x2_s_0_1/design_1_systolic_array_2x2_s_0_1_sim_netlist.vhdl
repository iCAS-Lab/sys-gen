-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Jul 31 01:49:18 2024
-- Host        : S7117-Evolution running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/S7117/Repos/Spike-TPU/testing/integer_tpu/integer_tpu.gen/sources_1/bd/design_1/ip/design_1_systolic_array_2x2_s_0_1/design_1_systolic_array_2x2_s_0_1_sim_netlist.vhdl
-- Design      : design_1_systolic_array_2x2_s_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_systolic_array_2x2_s_0_1_fifo is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    full0_i : out STD_LOGIC;
    empty0_i : out STD_LOGIC;
    clk : in STD_LOGIC;
    test_ifmap0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    RSTB : in STD_LOGIC;
    w_en0_i : in STD_LOGIC;
    rstn : in STD_LOGIC;
    r_en0_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_systolic_array_2x2_s_0_1_fifo : entity is "fifo";
end design_1_systolic_array_2x2_s_0_1_fifo;

architecture STRUCTURE of design_1_systolic_array_2x2_s_0_1_fifo is
  signal \^d\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \fifo_reg_0_7_0_13_i_2__1_n_0\ : STD_LOGIC;
  signal out_ofmap_reg_i_5_n_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal r_ptr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \r_ptr[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \r_ptr[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \r_ptr[2]_i_1__1_n_0\ : STD_LOGIC;
  signal w_ptr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal w_ptr0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \w_ptr[2]_i_1__1_n_0\ : STD_LOGIC;
  signal NLW_fifo_reg_0_7_0_13_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_reg_0_7_14_15_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_fifo_reg_0_7_14_15__0_SPO_UNCONNECTED\ : STD_LOGIC;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of fifo_reg_0_7_0_13 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of fifo_reg_0_7_0_13 : label is 128;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of fifo_reg_0_7_0_13 : label is "inst/ifmap_fifo0/fifo_reg_0_7_0_13";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of fifo_reg_0_7_0_13 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of fifo_reg_0_7_0_13 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of fifo_reg_0_7_0_13 : label is 7;
  attribute ram_offset : integer;
  attribute ram_offset of fifo_reg_0_7_0_13 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of fifo_reg_0_7_0_13 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of fifo_reg_0_7_0_13 : label is 13;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fifo_reg_0_7_0_13_i_2__1\ : label is "soft_lutpair0";
  attribute METHODOLOGY_DRC_VIOS of fifo_reg_0_7_14_15 : label is "";
  attribute RTL_RAM_BITS of fifo_reg_0_7_14_15 : label is 128;
  attribute RTL_RAM_NAME of fifo_reg_0_7_14_15 : label is "inst/ifmap_fifo0/fifo_reg_0_7_14_15";
  attribute RTL_RAM_TYPE of fifo_reg_0_7_14_15 : label is "RAM_SDP";
  attribute ram_addr_begin of fifo_reg_0_7_14_15 : label is 0;
  attribute ram_addr_end of fifo_reg_0_7_14_15 : label is 7;
  attribute ram_offset of fifo_reg_0_7_14_15 : label is 0;
  attribute ram_slice_begin of fifo_reg_0_7_14_15 : label is 14;
  attribute ram_slice_end of fifo_reg_0_7_14_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of \fifo_reg_0_7_14_15__0\ : label is "";
  attribute RTL_RAM_BITS of \fifo_reg_0_7_14_15__0\ : label is 128;
  attribute RTL_RAM_NAME of \fifo_reg_0_7_14_15__0\ : label is "inst/ifmap_fifo0/fifo_reg_0_7_14_15";
  attribute RTL_RAM_TYPE of \fifo_reg_0_7_14_15__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \fifo_reg_0_7_14_15__0\ : label is 0;
  attribute ram_addr_end of \fifo_reg_0_7_14_15__0\ : label is 7;
  attribute ram_offset of \fifo_reg_0_7_14_15__0\ : label is 0;
  attribute ram_slice_begin of \fifo_reg_0_7_14_15__0\ : label is 14;
  attribute ram_slice_end of \fifo_reg_0_7_14_15__0\ : label is 15;
  attribute SOFT_HLUTNM of \r_ptr[0]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_ptr[1]_i_1__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_ptr[2]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \w_ptr[1]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \w_ptr[2]_i_2__1\ : label is "soft_lutpair1";
begin
  D(15 downto 0) <= \^d\(15 downto 0);
  E(0) <= \^e\(0);
empty0_i_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_ptr(0),
      I1 => w_ptr(0),
      I2 => w_ptr(1),
      I3 => r_ptr(1),
      I4 => w_ptr(2),
      I5 => r_ptr(2),
      O => empty0_i
    );
fifo_reg_0_7_0_13: unisim.vcomponents.RAM32M16
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => r_ptr(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => r_ptr(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => r_ptr(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => r_ptr(2 downto 0),
      ADDRE(4 downto 3) => B"00",
      ADDRE(2 downto 0) => r_ptr(2 downto 0),
      ADDRF(4 downto 3) => B"00",
      ADDRF(2 downto 0) => r_ptr(2 downto 0),
      ADDRG(4 downto 3) => B"00",
      ADDRG(2 downto 0) => r_ptr(2 downto 0),
      ADDRH(4 downto 3) => B"00",
      ADDRH(2 downto 0) => w_ptr(2 downto 0),
      DIA(1 downto 0) => test_ifmap0(1 downto 0),
      DIB(1 downto 0) => test_ifmap0(3 downto 2),
      DIC(1 downto 0) => test_ifmap0(5 downto 4),
      DID(1 downto 0) => test_ifmap0(7 downto 6),
      DIE(1 downto 0) => test_ifmap0(9 downto 8),
      DIF(1 downto 0) => test_ifmap0(11 downto 10),
      DIG(1 downto 0) => test_ifmap0(13 downto 12),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => \^d\(1 downto 0),
      DOB(1 downto 0) => \^d\(3 downto 2),
      DOC(1 downto 0) => \^d\(5 downto 4),
      DOD(1 downto 0) => \^d\(7 downto 6),
      DOE(1 downto 0) => \^d\(9 downto 8),
      DOF(1 downto 0) => \^d\(11 downto 10),
      DOG(1 downto 0) => \^d\(13 downto 12),
      DOH(1 downto 0) => NLW_fifo_reg_0_7_0_13_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \p_0_in__0\
    );
\fifo_reg_0_7_0_13_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB04000000000"
    )
        port map (
      I0 => r_ptr(1),
      I1 => w_ptr(1),
      I2 => w_en0_i,
      I3 => out_ofmap_reg_i_5_n_0,
      I4 => \fifo_reg_0_7_0_13_i_2__1_n_0\,
      I5 => rstn,
      O => \p_0_in__0\
    );
\fifo_reg_0_7_0_13_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F96F0000"
    )
        port map (
      I0 => r_ptr(1),
      I1 => w_ptr(1),
      I2 => r_ptr(0),
      I3 => w_ptr(0),
      I4 => w_en0_i,
      O => \fifo_reg_0_7_0_13_i_2__1_n_0\
    );
fifo_reg_0_7_14_15: unisim.vcomponents.RAM32X1D
     port map (
      A0 => w_ptr(0),
      A1 => w_ptr(1),
      A2 => w_ptr(2),
      A3 => '0',
      A4 => '0',
      D => test_ifmap0(14),
      DPO => \^d\(14),
      DPRA0 => r_ptr(0),
      DPRA1 => r_ptr(1),
      DPRA2 => r_ptr(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => NLW_fifo_reg_0_7_14_15_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \p_0_in__0\
    );
\fifo_reg_0_7_14_15__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => w_ptr(0),
      A1 => w_ptr(1),
      A2 => w_ptr(2),
      A3 => '0',
      A4 => '0',
      D => test_ifmap0(15),
      DPO => \^d\(15),
      DPRA0 => r_ptr(0),
      DPRA1 => r_ptr(1),
      DPRA2 => r_ptr(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => \NLW_fifo_reg_0_7_14_15__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => \p_0_in__0\
    );
full0_i_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900906900000"
    )
        port map (
      I0 => r_ptr(2),
      I1 => w_ptr(2),
      I2 => r_ptr(1),
      I3 => w_ptr(1),
      I4 => w_ptr(0),
      I5 => r_ptr(0),
      O => full0_i
    );
\out_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(0),
      Q => Q(0),
      R => RSTB
    );
\out_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(10),
      Q => Q(10),
      R => RSTB
    );
\out_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(11),
      Q => Q(11),
      R => RSTB
    );
\out_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(12),
      Q => Q(12),
      R => RSTB
    );
\out_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(13),
      Q => Q(13),
      R => RSTB
    );
\out_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(14),
      Q => Q(14),
      R => RSTB
    );
\out_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(15),
      Q => Q(15),
      R => RSTB
    );
\out_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(1),
      Q => Q(1),
      R => RSTB
    );
\out_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(2),
      Q => Q(2),
      R => RSTB
    );
\out_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(3),
      Q => Q(3),
      R => RSTB
    );
\out_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(4),
      Q => Q(4),
      R => RSTB
    );
\out_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(5),
      Q => Q(5),
      R => RSTB
    );
\out_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(6),
      Q => Q(6),
      R => RSTB
    );
\out_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(7),
      Q => Q(7),
      R => RSTB
    );
\out_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(8),
      Q => Q(8),
      R => RSTB
    );
\out_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(9),
      Q => Q(9),
      R => RSTB
    );
\out_ofmap_reg_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6FF600000000"
    )
        port map (
      I0 => r_ptr(0),
      I1 => w_ptr(0),
      I2 => w_ptr(1),
      I3 => r_ptr(1),
      I4 => out_ofmap_reg_i_5_n_0,
      I5 => r_en0_i,
      O => \^e\(0)
    );
out_ofmap_reg_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_ptr(2),
      I1 => w_ptr(2),
      O => out_ofmap_reg_i_5_n_0
    );
\r_ptr[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_ptr(0),
      O => \r_ptr[0]_i_1__1_n_0\
    );
\r_ptr[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_ptr(0),
      I1 => r_ptr(1),
      O => \r_ptr[1]_i_1__1_n_0\
    );
\r_ptr[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => r_ptr(1),
      I1 => r_ptr(0),
      I2 => r_ptr(2),
      O => \r_ptr[2]_i_1__1_n_0\
    );
\r_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \r_ptr[0]_i_1__1_n_0\,
      Q => r_ptr(0),
      R => RSTB
    );
\r_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \r_ptr[1]_i_1__1_n_0\,
      Q => r_ptr(1),
      R => RSTB
    );
\r_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \r_ptr[2]_i_1__1_n_0\,
      Q => r_ptr(2),
      R => RSTB
    );
\w_ptr[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => w_ptr(0),
      O => w_ptr0(0)
    );
\w_ptr[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w_ptr(0),
      I1 => w_ptr(1),
      O => w_ptr0(1)
    );
\w_ptr[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB00FD00DF00FB00"
    )
        port map (
      I0 => w_ptr(0),
      I1 => r_ptr(0),
      I2 => out_ofmap_reg_i_5_n_0,
      I3 => w_en0_i,
      I4 => w_ptr(1),
      I5 => r_ptr(1),
      O => \w_ptr[2]_i_1__1_n_0\
    );
\w_ptr[2]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => w_ptr(1),
      I1 => w_ptr(0),
      I2 => w_ptr(2),
      O => w_ptr0(2)
    );
\w_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \w_ptr[2]_i_1__1_n_0\,
      D => w_ptr0(0),
      Q => w_ptr(0),
      R => RSTB
    );
\w_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \w_ptr[2]_i_1__1_n_0\,
      D => w_ptr0(1),
      Q => w_ptr(1),
      R => RSTB
    );
\w_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \w_ptr[2]_i_1__1_n_0\,
      D => w_ptr0(2),
      Q => w_ptr(2),
      R => RSTB
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_systolic_array_2x2_s_0_1_fifo_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    full1_i : out STD_LOGIC;
    empty1_i : out STD_LOGIC;
    clk : in STD_LOGIC;
    test_ifmap1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    RSTB : in STD_LOGIC;
    w_en1_i : in STD_LOGIC;
    rstn : in STD_LOGIC;
    r_en1_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_systolic_array_2x2_s_0_1_fifo_0 : entity is "fifo";
end design_1_systolic_array_2x2_s_0_1_fifo_0;

architecture STRUCTURE of design_1_systolic_array_2x2_s_0_1_fifo_0 is
  signal \^d\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \fifo_reg_0_7_0_13_i_2__2_n_0\ : STD_LOGIC;
  signal \out_ofmap_reg_i_2__1_n_0\ : STD_LOGIC;
  signal \p_0_in__2\ : STD_LOGIC;
  signal r_ptr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \r_ptr[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \r_ptr[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \r_ptr[2]_i_1__2_n_0\ : STD_LOGIC;
  signal w_ptr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal w_ptr0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \w_ptr[2]_i_1__2_n_0\ : STD_LOGIC;
  signal NLW_fifo_reg_0_7_0_13_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_reg_0_7_14_15_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_fifo_reg_0_7_14_15__0_SPO_UNCONNECTED\ : STD_LOGIC;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of fifo_reg_0_7_0_13 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of fifo_reg_0_7_0_13 : label is 128;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of fifo_reg_0_7_0_13 : label is "inst/ifmap_fifo1/fifo_reg_0_7_0_13";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of fifo_reg_0_7_0_13 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of fifo_reg_0_7_0_13 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of fifo_reg_0_7_0_13 : label is 7;
  attribute ram_offset : integer;
  attribute ram_offset of fifo_reg_0_7_0_13 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of fifo_reg_0_7_0_13 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of fifo_reg_0_7_0_13 : label is 13;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fifo_reg_0_7_0_13_i_2__2\ : label is "soft_lutpair3";
  attribute METHODOLOGY_DRC_VIOS of fifo_reg_0_7_14_15 : label is "";
  attribute RTL_RAM_BITS of fifo_reg_0_7_14_15 : label is 128;
  attribute RTL_RAM_NAME of fifo_reg_0_7_14_15 : label is "inst/ifmap_fifo1/fifo_reg_0_7_14_15";
  attribute RTL_RAM_TYPE of fifo_reg_0_7_14_15 : label is "RAM_SDP";
  attribute ram_addr_begin of fifo_reg_0_7_14_15 : label is 0;
  attribute ram_addr_end of fifo_reg_0_7_14_15 : label is 7;
  attribute ram_offset of fifo_reg_0_7_14_15 : label is 0;
  attribute ram_slice_begin of fifo_reg_0_7_14_15 : label is 14;
  attribute ram_slice_end of fifo_reg_0_7_14_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of \fifo_reg_0_7_14_15__0\ : label is "";
  attribute RTL_RAM_BITS of \fifo_reg_0_7_14_15__0\ : label is 128;
  attribute RTL_RAM_NAME of \fifo_reg_0_7_14_15__0\ : label is "inst/ifmap_fifo1/fifo_reg_0_7_14_15";
  attribute RTL_RAM_TYPE of \fifo_reg_0_7_14_15__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \fifo_reg_0_7_14_15__0\ : label is 0;
  attribute ram_addr_end of \fifo_reg_0_7_14_15__0\ : label is 7;
  attribute ram_offset of \fifo_reg_0_7_14_15__0\ : label is 0;
  attribute ram_slice_begin of \fifo_reg_0_7_14_15__0\ : label is 14;
  attribute ram_slice_end of \fifo_reg_0_7_14_15__0\ : label is 15;
  attribute SOFT_HLUTNM of \r_ptr[0]_i_1__2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_ptr[1]_i_1__2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_ptr[2]_i_1__2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \w_ptr[1]_i_1__2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \w_ptr[2]_i_2__2\ : label is "soft_lutpair4";
begin
  D(15 downto 0) <= \^d\(15 downto 0);
  E(0) <= \^e\(0);
empty1_i_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_ptr(0),
      I1 => w_ptr(0),
      I2 => w_ptr(1),
      I3 => r_ptr(1),
      I4 => w_ptr(2),
      I5 => r_ptr(2),
      O => empty1_i
    );
fifo_reg_0_7_0_13: unisim.vcomponents.RAM32M16
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => r_ptr(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => r_ptr(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => r_ptr(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => r_ptr(2 downto 0),
      ADDRE(4 downto 3) => B"00",
      ADDRE(2 downto 0) => r_ptr(2 downto 0),
      ADDRF(4 downto 3) => B"00",
      ADDRF(2 downto 0) => r_ptr(2 downto 0),
      ADDRG(4 downto 3) => B"00",
      ADDRG(2 downto 0) => r_ptr(2 downto 0),
      ADDRH(4 downto 3) => B"00",
      ADDRH(2 downto 0) => w_ptr(2 downto 0),
      DIA(1 downto 0) => test_ifmap1(1 downto 0),
      DIB(1 downto 0) => test_ifmap1(3 downto 2),
      DIC(1 downto 0) => test_ifmap1(5 downto 4),
      DID(1 downto 0) => test_ifmap1(7 downto 6),
      DIE(1 downto 0) => test_ifmap1(9 downto 8),
      DIF(1 downto 0) => test_ifmap1(11 downto 10),
      DIG(1 downto 0) => test_ifmap1(13 downto 12),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => \^d\(1 downto 0),
      DOB(1 downto 0) => \^d\(3 downto 2),
      DOC(1 downto 0) => \^d\(5 downto 4),
      DOD(1 downto 0) => \^d\(7 downto 6),
      DOE(1 downto 0) => \^d\(9 downto 8),
      DOF(1 downto 0) => \^d\(11 downto 10),
      DOG(1 downto 0) => \^d\(13 downto 12),
      DOH(1 downto 0) => NLW_fifo_reg_0_7_0_13_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \p_0_in__2\
    );
\fifo_reg_0_7_0_13_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB04000000000"
    )
        port map (
      I0 => r_ptr(1),
      I1 => w_ptr(1),
      I2 => w_en1_i,
      I3 => \out_ofmap_reg_i_2__1_n_0\,
      I4 => \fifo_reg_0_7_0_13_i_2__2_n_0\,
      I5 => rstn,
      O => \p_0_in__2\
    );
\fifo_reg_0_7_0_13_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F96F0000"
    )
        port map (
      I0 => r_ptr(1),
      I1 => w_ptr(1),
      I2 => r_ptr(0),
      I3 => w_ptr(0),
      I4 => w_en1_i,
      O => \fifo_reg_0_7_0_13_i_2__2_n_0\
    );
fifo_reg_0_7_14_15: unisim.vcomponents.RAM32X1D
     port map (
      A0 => w_ptr(0),
      A1 => w_ptr(1),
      A2 => w_ptr(2),
      A3 => '0',
      A4 => '0',
      D => test_ifmap1(14),
      DPO => \^d\(14),
      DPRA0 => r_ptr(0),
      DPRA1 => r_ptr(1),
      DPRA2 => r_ptr(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => NLW_fifo_reg_0_7_14_15_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \p_0_in__2\
    );
\fifo_reg_0_7_14_15__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => w_ptr(0),
      A1 => w_ptr(1),
      A2 => w_ptr(2),
      A3 => '0',
      A4 => '0',
      D => test_ifmap1(15),
      DPO => \^d\(15),
      DPRA0 => r_ptr(0),
      DPRA1 => r_ptr(1),
      DPRA2 => r_ptr(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => \NLW_fifo_reg_0_7_14_15__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => \p_0_in__2\
    );
full1_i_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900906900000"
    )
        port map (
      I0 => r_ptr(2),
      I1 => w_ptr(2),
      I2 => r_ptr(1),
      I3 => w_ptr(1),
      I4 => w_ptr(0),
      I5 => r_ptr(0),
      O => full1_i
    );
\out_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(0),
      Q => Q(0),
      R => RSTB
    );
\out_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(10),
      Q => Q(10),
      R => RSTB
    );
\out_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(11),
      Q => Q(11),
      R => RSTB
    );
\out_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(12),
      Q => Q(12),
      R => RSTB
    );
\out_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(13),
      Q => Q(13),
      R => RSTB
    );
\out_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(14),
      Q => Q(14),
      R => RSTB
    );
\out_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(15),
      Q => Q(15),
      R => RSTB
    );
\out_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(1),
      Q => Q(1),
      R => RSTB
    );
\out_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(2),
      Q => Q(2),
      R => RSTB
    );
\out_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(3),
      Q => Q(3),
      R => RSTB
    );
\out_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(4),
      Q => Q(4),
      R => RSTB
    );
\out_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(5),
      Q => Q(5),
      R => RSTB
    );
\out_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(6),
      Q => Q(6),
      R => RSTB
    );
\out_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(7),
      Q => Q(7),
      R => RSTB
    );
\out_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(8),
      Q => Q(8),
      R => RSTB
    );
\out_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(9),
      Q => Q(9),
      R => RSTB
    );
\out_ofmap_reg_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6FF600000000"
    )
        port map (
      I0 => r_ptr(0),
      I1 => w_ptr(0),
      I2 => w_ptr(1),
      I3 => r_ptr(1),
      I4 => \out_ofmap_reg_i_2__1_n_0\,
      I5 => r_en1_i,
      O => \^e\(0)
    );
\out_ofmap_reg_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_ptr(2),
      I1 => w_ptr(2),
      O => \out_ofmap_reg_i_2__1_n_0\
    );
\r_ptr[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_ptr(0),
      O => \r_ptr[0]_i_1__2_n_0\
    );
\r_ptr[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_ptr(0),
      I1 => r_ptr(1),
      O => \r_ptr[1]_i_1__2_n_0\
    );
\r_ptr[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => r_ptr(1),
      I1 => r_ptr(0),
      I2 => r_ptr(2),
      O => \r_ptr[2]_i_1__2_n_0\
    );
\r_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \r_ptr[0]_i_1__2_n_0\,
      Q => r_ptr(0),
      R => RSTB
    );
\r_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \r_ptr[1]_i_1__2_n_0\,
      Q => r_ptr(1),
      R => RSTB
    );
\r_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \r_ptr[2]_i_1__2_n_0\,
      Q => r_ptr(2),
      R => RSTB
    );
\w_ptr[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => w_ptr(0),
      O => w_ptr0(0)
    );
\w_ptr[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w_ptr(0),
      I1 => w_ptr(1),
      O => w_ptr0(1)
    );
\w_ptr[2]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB00FD00DF00FB00"
    )
        port map (
      I0 => w_ptr(0),
      I1 => r_ptr(0),
      I2 => \out_ofmap_reg_i_2__1_n_0\,
      I3 => w_en1_i,
      I4 => w_ptr(1),
      I5 => r_ptr(1),
      O => \w_ptr[2]_i_1__2_n_0\
    );
\w_ptr[2]_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => w_ptr(1),
      I1 => w_ptr(0),
      I2 => w_ptr(2),
      O => w_ptr0(2)
    );
\w_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \w_ptr[2]_i_1__2_n_0\,
      D => w_ptr0(0),
      Q => w_ptr(0),
      R => RSTB
    );
\w_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \w_ptr[2]_i_1__2_n_0\,
      D => w_ptr0(1),
      Q => w_ptr(1),
      R => RSTB
    );
\w_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \w_ptr[2]_i_1__2_n_0\,
      D => w_ptr0(2),
      Q => w_ptr(2),
      R => RSTB
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_systolic_array_2x2_s_0_1_fifo_4 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    full0_w : out STD_LOGIC;
    empty0_w : out STD_LOGIC;
    clk : in STD_LOGIC;
    test_weight0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    RSTB : in STD_LOGIC;
    w_en0_w : in STD_LOGIC;
    rstn : in STD_LOGIC;
    r_en0_w : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_systolic_array_2x2_s_0_1_fifo_4 : entity is "fifo";
end design_1_systolic_array_2x2_s_0_1_fifo_4;

architecture STRUCTURE of design_1_systolic_array_2x2_s_0_1_fifo_4 is
  signal \^d\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal fifo_reg_0_7_0_13_i_2_n_0 : STD_LOGIC;
  signal out_ofmap_reg_i_4_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal r_ptr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \r_ptr[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_ptr[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_ptr[2]_i_1_n_0\ : STD_LOGIC;
  signal w_ptr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal w_ptr0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \w_ptr[2]_i_1_n_0\ : STD_LOGIC;
  signal NLW_fifo_reg_0_7_0_13_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_reg_0_7_14_15_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_fifo_reg_0_7_14_15__0_SPO_UNCONNECTED\ : STD_LOGIC;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of fifo_reg_0_7_0_13 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of fifo_reg_0_7_0_13 : label is 128;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of fifo_reg_0_7_0_13 : label is "inst/weight_fifo0/fifo_reg_0_7_0_13";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of fifo_reg_0_7_0_13 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of fifo_reg_0_7_0_13 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of fifo_reg_0_7_0_13 : label is 7;
  attribute ram_offset : integer;
  attribute ram_offset of fifo_reg_0_7_0_13 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of fifo_reg_0_7_0_13 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of fifo_reg_0_7_0_13 : label is 13;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of fifo_reg_0_7_0_13_i_2 : label is "soft_lutpair6";
  attribute METHODOLOGY_DRC_VIOS of fifo_reg_0_7_14_15 : label is "";
  attribute RTL_RAM_BITS of fifo_reg_0_7_14_15 : label is 128;
  attribute RTL_RAM_NAME of fifo_reg_0_7_14_15 : label is "inst/weight_fifo0/fifo_reg_0_7_14_15";
  attribute RTL_RAM_TYPE of fifo_reg_0_7_14_15 : label is "RAM_SDP";
  attribute ram_addr_begin of fifo_reg_0_7_14_15 : label is 0;
  attribute ram_addr_end of fifo_reg_0_7_14_15 : label is 7;
  attribute ram_offset of fifo_reg_0_7_14_15 : label is 0;
  attribute ram_slice_begin of fifo_reg_0_7_14_15 : label is 14;
  attribute ram_slice_end of fifo_reg_0_7_14_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of \fifo_reg_0_7_14_15__0\ : label is "";
  attribute RTL_RAM_BITS of \fifo_reg_0_7_14_15__0\ : label is 128;
  attribute RTL_RAM_NAME of \fifo_reg_0_7_14_15__0\ : label is "inst/weight_fifo0/fifo_reg_0_7_14_15";
  attribute RTL_RAM_TYPE of \fifo_reg_0_7_14_15__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \fifo_reg_0_7_14_15__0\ : label is 0;
  attribute ram_addr_end of \fifo_reg_0_7_14_15__0\ : label is 7;
  attribute ram_offset of \fifo_reg_0_7_14_15__0\ : label is 0;
  attribute ram_slice_begin of \fifo_reg_0_7_14_15__0\ : label is 14;
  attribute ram_slice_end of \fifo_reg_0_7_14_15__0\ : label is 15;
  attribute SOFT_HLUTNM of \r_ptr[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_ptr[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_ptr[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \w_ptr[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \w_ptr[2]_i_2\ : label is "soft_lutpair7";
begin
  D(15 downto 0) <= \^d\(15 downto 0);
  E(0) <= \^e\(0);
empty0_w_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_ptr(0),
      I1 => w_ptr(0),
      I2 => w_ptr(1),
      I3 => r_ptr(1),
      I4 => w_ptr(2),
      I5 => r_ptr(2),
      O => empty0_w
    );
fifo_reg_0_7_0_13: unisim.vcomponents.RAM32M16
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => r_ptr(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => r_ptr(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => r_ptr(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => r_ptr(2 downto 0),
      ADDRE(4 downto 3) => B"00",
      ADDRE(2 downto 0) => r_ptr(2 downto 0),
      ADDRF(4 downto 3) => B"00",
      ADDRF(2 downto 0) => r_ptr(2 downto 0),
      ADDRG(4 downto 3) => B"00",
      ADDRG(2 downto 0) => r_ptr(2 downto 0),
      ADDRH(4 downto 3) => B"00",
      ADDRH(2 downto 0) => w_ptr(2 downto 0),
      DIA(1 downto 0) => test_weight0(1 downto 0),
      DIB(1 downto 0) => test_weight0(3 downto 2),
      DIC(1 downto 0) => test_weight0(5 downto 4),
      DID(1 downto 0) => test_weight0(7 downto 6),
      DIE(1 downto 0) => test_weight0(9 downto 8),
      DIF(1 downto 0) => test_weight0(11 downto 10),
      DIG(1 downto 0) => test_weight0(13 downto 12),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => \^d\(1 downto 0),
      DOB(1 downto 0) => \^d\(3 downto 2),
      DOC(1 downto 0) => \^d\(5 downto 4),
      DOD(1 downto 0) => \^d\(7 downto 6),
      DOE(1 downto 0) => \^d\(9 downto 8),
      DOF(1 downto 0) => \^d\(11 downto 10),
      DOG(1 downto 0) => \^d\(13 downto 12),
      DOH(1 downto 0) => NLW_fifo_reg_0_7_0_13_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => p_0_in
    );
fifo_reg_0_7_0_13_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB04000000000"
    )
        port map (
      I0 => r_ptr(1),
      I1 => w_ptr(1),
      I2 => w_en0_w,
      I3 => out_ofmap_reg_i_4_n_0,
      I4 => fifo_reg_0_7_0_13_i_2_n_0,
      I5 => rstn,
      O => p_0_in
    );
fifo_reg_0_7_0_13_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F96F0000"
    )
        port map (
      I0 => r_ptr(1),
      I1 => w_ptr(1),
      I2 => r_ptr(0),
      I3 => w_ptr(0),
      I4 => w_en0_w,
      O => fifo_reg_0_7_0_13_i_2_n_0
    );
fifo_reg_0_7_14_15: unisim.vcomponents.RAM32X1D
     port map (
      A0 => w_ptr(0),
      A1 => w_ptr(1),
      A2 => w_ptr(2),
      A3 => '0',
      A4 => '0',
      D => test_weight0(14),
      DPO => \^d\(14),
      DPRA0 => r_ptr(0),
      DPRA1 => r_ptr(1),
      DPRA2 => r_ptr(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => NLW_fifo_reg_0_7_14_15_SPO_UNCONNECTED,
      WCLK => clk,
      WE => p_0_in
    );
\fifo_reg_0_7_14_15__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => w_ptr(0),
      A1 => w_ptr(1),
      A2 => w_ptr(2),
      A3 => '0',
      A4 => '0',
      D => test_weight0(15),
      DPO => \^d\(15),
      DPRA0 => r_ptr(0),
      DPRA1 => r_ptr(1),
      DPRA2 => r_ptr(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => \NLW_fifo_reg_0_7_14_15__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => p_0_in
    );
full0_w_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900906900000"
    )
        port map (
      I0 => r_ptr(2),
      I1 => w_ptr(2),
      I2 => r_ptr(1),
      I3 => w_ptr(1),
      I4 => w_ptr(0),
      I5 => r_ptr(0),
      O => full0_w
    );
\out_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(0),
      Q => Q(0),
      R => RSTB
    );
\out_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(10),
      Q => Q(10),
      R => RSTB
    );
\out_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(11),
      Q => Q(11),
      R => RSTB
    );
\out_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(12),
      Q => Q(12),
      R => RSTB
    );
\out_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(13),
      Q => Q(13),
      R => RSTB
    );
\out_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(14),
      Q => Q(14),
      R => RSTB
    );
\out_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(15),
      Q => Q(15),
      R => RSTB
    );
\out_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(1),
      Q => Q(1),
      R => RSTB
    );
\out_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(2),
      Q => Q(2),
      R => RSTB
    );
\out_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(3),
      Q => Q(3),
      R => RSTB
    );
\out_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(4),
      Q => Q(4),
      R => RSTB
    );
\out_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(5),
      Q => Q(5),
      R => RSTB
    );
\out_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(6),
      Q => Q(6),
      R => RSTB
    );
\out_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(7),
      Q => Q(7),
      R => RSTB
    );
\out_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(8),
      Q => Q(8),
      R => RSTB
    );
\out_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(9),
      Q => Q(9),
      R => RSTB
    );
out_ofmap_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6FF600000000"
    )
        port map (
      I0 => r_ptr(0),
      I1 => w_ptr(0),
      I2 => w_ptr(1),
      I3 => r_ptr(1),
      I4 => out_ofmap_reg_i_4_n_0,
      I5 => r_en0_w,
      O => \^e\(0)
    );
out_ofmap_reg_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_ptr(2),
      I1 => w_ptr(2),
      O => out_ofmap_reg_i_4_n_0
    );
\r_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_ptr(0),
      O => \r_ptr[0]_i_1_n_0\
    );
\r_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_ptr(0),
      I1 => r_ptr(1),
      O => \r_ptr[1]_i_1_n_0\
    );
\r_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => r_ptr(1),
      I1 => r_ptr(0),
      I2 => r_ptr(2),
      O => \r_ptr[2]_i_1_n_0\
    );
\r_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \r_ptr[0]_i_1_n_0\,
      Q => r_ptr(0),
      R => RSTB
    );
\r_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \r_ptr[1]_i_1_n_0\,
      Q => r_ptr(1),
      R => RSTB
    );
\r_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \r_ptr[2]_i_1_n_0\,
      Q => r_ptr(2),
      R => RSTB
    );
\w_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => w_ptr(0),
      O => w_ptr0(0)
    );
\w_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w_ptr(0),
      I1 => w_ptr(1),
      O => w_ptr0(1)
    );
\w_ptr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB00FD00DF00FB00"
    )
        port map (
      I0 => w_ptr(0),
      I1 => r_ptr(0),
      I2 => out_ofmap_reg_i_4_n_0,
      I3 => w_en0_w,
      I4 => w_ptr(1),
      I5 => r_ptr(1),
      O => \w_ptr[2]_i_1_n_0\
    );
\w_ptr[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => w_ptr(1),
      I1 => w_ptr(0),
      I2 => w_ptr(2),
      O => w_ptr0(2)
    );
\w_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \w_ptr[2]_i_1_n_0\,
      D => w_ptr0(0),
      Q => w_ptr(0),
      R => RSTB
    );
\w_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \w_ptr[2]_i_1_n_0\,
      D => w_ptr0(1),
      Q => w_ptr(1),
      R => RSTB
    );
\w_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \w_ptr[2]_i_1_n_0\,
      D => w_ptr0(2),
      Q => w_ptr(2),
      R => RSTB
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_systolic_array_2x2_s_0_1_fifo_5 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RSTB : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    full1_w : out STD_LOGIC;
    empty1_w : out STD_LOGIC;
    clk : in STD_LOGIC;
    test_weight1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rstn : in STD_LOGIC;
    w_en1_w : in STD_LOGIC;
    r_en1_w : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_systolic_array_2x2_s_0_1_fifo_5 : entity is "fifo";
end design_1_systolic_array_2x2_s_0_1_fifo_5;

architecture STRUCTURE of design_1_systolic_array_2x2_s_0_1_fifo_5 is
  signal \^d\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^rstb\ : STD_LOGIC;
  signal \fifo_reg_0_7_0_13_i_2__0_n_0\ : STD_LOGIC;
  signal out_ofmap_reg_i_2_n_0 : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC;
  signal r_ptr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \r_ptr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_ptr[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_ptr[2]_i_1__0_n_0\ : STD_LOGIC;
  signal w_ptr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal w_ptr0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \w_ptr[2]_i_1__0_n_0\ : STD_LOGIC;
  signal NLW_fifo_reg_0_7_0_13_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_reg_0_7_14_15_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_fifo_reg_0_7_14_15__0_SPO_UNCONNECTED\ : STD_LOGIC;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of fifo_reg_0_7_0_13 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of fifo_reg_0_7_0_13 : label is 128;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of fifo_reg_0_7_0_13 : label is "inst/weight_fifo1/fifo_reg_0_7_0_13";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of fifo_reg_0_7_0_13 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of fifo_reg_0_7_0_13 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of fifo_reg_0_7_0_13 : label is 7;
  attribute ram_offset : integer;
  attribute ram_offset of fifo_reg_0_7_0_13 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of fifo_reg_0_7_0_13 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of fifo_reg_0_7_0_13 : label is 13;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fifo_reg_0_7_0_13_i_2__0\ : label is "soft_lutpair9";
  attribute METHODOLOGY_DRC_VIOS of fifo_reg_0_7_14_15 : label is "";
  attribute RTL_RAM_BITS of fifo_reg_0_7_14_15 : label is 128;
  attribute RTL_RAM_NAME of fifo_reg_0_7_14_15 : label is "inst/weight_fifo1/fifo_reg_0_7_14_15";
  attribute RTL_RAM_TYPE of fifo_reg_0_7_14_15 : label is "RAM_SDP";
  attribute ram_addr_begin of fifo_reg_0_7_14_15 : label is 0;
  attribute ram_addr_end of fifo_reg_0_7_14_15 : label is 7;
  attribute ram_offset of fifo_reg_0_7_14_15 : label is 0;
  attribute ram_slice_begin of fifo_reg_0_7_14_15 : label is 14;
  attribute ram_slice_end of fifo_reg_0_7_14_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of \fifo_reg_0_7_14_15__0\ : label is "";
  attribute RTL_RAM_BITS of \fifo_reg_0_7_14_15__0\ : label is 128;
  attribute RTL_RAM_NAME of \fifo_reg_0_7_14_15__0\ : label is "inst/weight_fifo1/fifo_reg_0_7_14_15";
  attribute RTL_RAM_TYPE of \fifo_reg_0_7_14_15__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \fifo_reg_0_7_14_15__0\ : label is 0;
  attribute ram_addr_end of \fifo_reg_0_7_14_15__0\ : label is 7;
  attribute ram_offset of \fifo_reg_0_7_14_15__0\ : label is 0;
  attribute ram_slice_begin of \fifo_reg_0_7_14_15__0\ : label is 14;
  attribute ram_slice_end of \fifo_reg_0_7_14_15__0\ : label is 15;
  attribute SOFT_HLUTNM of \r_ptr[0]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_ptr[1]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_ptr[2]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \w_ptr[1]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \w_ptr[2]_i_2__0\ : label is "soft_lutpair10";
begin
  D(15 downto 0) <= \^d\(15 downto 0);
  E(0) <= \^e\(0);
  RSTB <= \^rstb\;
empty1_w_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_ptr(0),
      I1 => w_ptr(0),
      I2 => w_ptr(1),
      I3 => r_ptr(1),
      I4 => w_ptr(2),
      I5 => r_ptr(2),
      O => empty1_w
    );
fifo_reg_0_7_0_13: unisim.vcomponents.RAM32M16
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => r_ptr(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => r_ptr(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => r_ptr(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => r_ptr(2 downto 0),
      ADDRE(4 downto 3) => B"00",
      ADDRE(2 downto 0) => r_ptr(2 downto 0),
      ADDRF(4 downto 3) => B"00",
      ADDRF(2 downto 0) => r_ptr(2 downto 0),
      ADDRG(4 downto 3) => B"00",
      ADDRG(2 downto 0) => r_ptr(2 downto 0),
      ADDRH(4 downto 3) => B"00",
      ADDRH(2 downto 0) => w_ptr(2 downto 0),
      DIA(1 downto 0) => test_weight1(1 downto 0),
      DIB(1 downto 0) => test_weight1(3 downto 2),
      DIC(1 downto 0) => test_weight1(5 downto 4),
      DID(1 downto 0) => test_weight1(7 downto 6),
      DIE(1 downto 0) => test_weight1(9 downto 8),
      DIF(1 downto 0) => test_weight1(11 downto 10),
      DIG(1 downto 0) => test_weight1(13 downto 12),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => \^d\(1 downto 0),
      DOB(1 downto 0) => \^d\(3 downto 2),
      DOC(1 downto 0) => \^d\(5 downto 4),
      DOD(1 downto 0) => \^d\(7 downto 6),
      DOE(1 downto 0) => \^d\(9 downto 8),
      DOF(1 downto 0) => \^d\(11 downto 10),
      DOG(1 downto 0) => \^d\(13 downto 12),
      DOH(1 downto 0) => NLW_fifo_reg_0_7_0_13_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \p_0_in__1\
    );
\fifo_reg_0_7_0_13_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB04000000000"
    )
        port map (
      I0 => r_ptr(1),
      I1 => w_ptr(1),
      I2 => w_en1_w,
      I3 => out_ofmap_reg_i_2_n_0,
      I4 => \fifo_reg_0_7_0_13_i_2__0_n_0\,
      I5 => rstn,
      O => \p_0_in__1\
    );
\fifo_reg_0_7_0_13_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F96F0000"
    )
        port map (
      I0 => r_ptr(1),
      I1 => w_ptr(1),
      I2 => r_ptr(0),
      I3 => w_ptr(0),
      I4 => w_en1_w,
      O => \fifo_reg_0_7_0_13_i_2__0_n_0\
    );
fifo_reg_0_7_14_15: unisim.vcomponents.RAM32X1D
     port map (
      A0 => w_ptr(0),
      A1 => w_ptr(1),
      A2 => w_ptr(2),
      A3 => '0',
      A4 => '0',
      D => test_weight1(14),
      DPO => \^d\(14),
      DPRA0 => r_ptr(0),
      DPRA1 => r_ptr(1),
      DPRA2 => r_ptr(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => NLW_fifo_reg_0_7_14_15_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \p_0_in__1\
    );
\fifo_reg_0_7_14_15__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => w_ptr(0),
      A1 => w_ptr(1),
      A2 => w_ptr(2),
      A3 => '0',
      A4 => '0',
      D => test_weight1(15),
      DPO => \^d\(15),
      DPRA0 => r_ptr(0),
      DPRA1 => r_ptr(1),
      DPRA2 => r_ptr(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => \NLW_fifo_reg_0_7_14_15__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => \p_0_in__1\
    );
full1_w_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900906900000"
    )
        port map (
      I0 => r_ptr(2),
      I1 => w_ptr(2),
      I2 => r_ptr(1),
      I3 => w_ptr(1),
      I4 => w_ptr(0),
      I5 => r_ptr(0),
      O => full1_w
    );
\out_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(0),
      Q => Q(0),
      R => \^rstb\
    );
\out_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(10),
      Q => Q(10),
      R => \^rstb\
    );
\out_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(11),
      Q => Q(11),
      R => \^rstb\
    );
\out_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(12),
      Q => Q(12),
      R => \^rstb\
    );
\out_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(13),
      Q => Q(13),
      R => \^rstb\
    );
\out_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(14),
      Q => Q(14),
      R => \^rstb\
    );
\out_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(15),
      Q => Q(15),
      R => \^rstb\
    );
\out_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(1),
      Q => Q(1),
      R => \^rstb\
    );
\out_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(2),
      Q => Q(2),
      R => \^rstb\
    );
\out_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(3),
      Q => Q(3),
      R => \^rstb\
    );
\out_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(4),
      Q => Q(4),
      R => \^rstb\
    );
\out_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(5),
      Q => Q(5),
      R => \^rstb\
    );
\out_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(6),
      Q => Q(6),
      R => \^rstb\
    );
\out_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(7),
      Q => Q(7),
      R => \^rstb\
    );
\out_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(8),
      Q => Q(8),
      R => \^rstb\
    );
\out_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => \^d\(9),
      Q => Q(9),
      R => \^rstb\
    );
\out_ofmap_reg_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6FF600000000"
    )
        port map (
      I0 => r_ptr(0),
      I1 => w_ptr(0),
      I2 => w_ptr(1),
      I3 => r_ptr(1),
      I4 => out_ofmap_reg_i_2_n_0,
      I5 => r_en1_w,
      O => \^e\(0)
    );
out_ofmap_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_ptr(2),
      I1 => w_ptr(2),
      O => out_ofmap_reg_i_2_n_0
    );
out_ofmap_reg_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => \^rstb\
    );
\r_ptr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_ptr(0),
      O => \r_ptr[0]_i_1__0_n_0\
    );
\r_ptr[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_ptr(0),
      I1 => r_ptr(1),
      O => \r_ptr[1]_i_1__0_n_0\
    );
\r_ptr[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => r_ptr(1),
      I1 => r_ptr(0),
      I2 => r_ptr(2),
      O => \r_ptr[2]_i_1__0_n_0\
    );
\r_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \r_ptr[0]_i_1__0_n_0\,
      Q => r_ptr(0),
      R => \^rstb\
    );
\r_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \r_ptr[1]_i_1__0_n_0\,
      Q => r_ptr(1),
      R => \^rstb\
    );
\r_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \r_ptr[2]_i_1__0_n_0\,
      Q => r_ptr(2),
      R => \^rstb\
    );
\w_ptr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => w_ptr(0),
      O => w_ptr0(0)
    );
\w_ptr[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w_ptr(0),
      I1 => w_ptr(1),
      O => w_ptr0(1)
    );
\w_ptr[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB00FD00DF00FB00"
    )
        port map (
      I0 => w_ptr(0),
      I1 => r_ptr(0),
      I2 => out_ofmap_reg_i_2_n_0,
      I3 => w_en1_w,
      I4 => w_ptr(1),
      I5 => r_ptr(1),
      O => \w_ptr[2]_i_1__0_n_0\
    );
\w_ptr[2]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => w_ptr(1),
      I1 => w_ptr(0),
      I2 => w_ptr(2),
      O => w_ptr0(2)
    );
\w_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \w_ptr[2]_i_1__0_n_0\,
      D => w_ptr0(0),
      Q => w_ptr(0),
      R => \^rstb\
    );
\w_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \w_ptr[2]_i_1__0_n_0\,
      D => w_ptr0(1),
      Q => w_ptr(1),
      R => \^rstb\
    );
\w_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \w_ptr[2]_i_1__0_n_0\,
      D => w_ptr0(2),
      Q => w_ptr(2),
      R => \^rstb\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_systolic_array_2x2_s_0_1_integer_mac_pe is
  port (
    ofmap_wires_00 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_weight_00 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_ifmap_00 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    RSTB : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    out_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_systolic_array_2x2_s_0_1_integer_mac_pe : entity is "integer_mac_pe";
end design_1_systolic_array_2x2_s_0_1_integer_mac_pe;

architecture STRUCTURE of design_1_systolic_array_2x2_s_0_1_integer_mac_pe is
  signal NLW_out_ofmap_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_out_ofmap_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_out_ofmap_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_out_ofmap_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal NLW_out_ofmap_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_out_ofmap_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of out_ofmap_reg : label is "yes";
begin
\out_ifmap_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(0),
      Q => out_ifmap_00(0),
      R => '0'
    );
\out_ifmap_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(10),
      Q => out_ifmap_00(10),
      R => '0'
    );
\out_ifmap_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(11),
      Q => out_ifmap_00(11),
      R => '0'
    );
\out_ifmap_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(12),
      Q => out_ifmap_00(12),
      R => '0'
    );
\out_ifmap_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(13),
      Q => out_ifmap_00(13),
      R => '0'
    );
\out_ifmap_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(14),
      Q => out_ifmap_00(14),
      R => '0'
    );
\out_ifmap_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(15),
      Q => out_ifmap_00(15),
      R => '0'
    );
\out_ifmap_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(1),
      Q => out_ifmap_00(1),
      R => '0'
    );
\out_ifmap_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(2),
      Q => out_ifmap_00(2),
      R => '0'
    );
\out_ifmap_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(3),
      Q => out_ifmap_00(3),
      R => '0'
    );
\out_ifmap_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(4),
      Q => out_ifmap_00(4),
      R => '0'
    );
\out_ifmap_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(5),
      Q => out_ifmap_00(5),
      R => '0'
    );
\out_ifmap_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(6),
      Q => out_ifmap_00(6),
      R => '0'
    );
\out_ifmap_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(7),
      Q => out_ifmap_00(7),
      R => '0'
    );
\out_ifmap_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(8),
      Q => out_ifmap_00(8),
      R => '0'
    );
\out_ifmap_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(9),
      Q => out_ifmap_00(9),
      R => '0'
    );
out_ofmap_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => A(15),
      A(28) => A(15),
      A(27) => A(15),
      A(26) => A(15),
      A(25) => A(15),
      A(24) => A(15),
      A(23) => A(15),
      A(22) => A(15),
      A(21) => A(15),
      A(20) => A(15),
      A(19) => A(15),
      A(18) => A(15),
      A(17) => A(15),
      A(16) => A(15),
      A(15 downto 0) => A(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_out_ofmap_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => D(15),
      B(16) => D(15),
      B(15 downto 0) => D(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_out_ofmap_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_out_ofmap_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_out_ofmap_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => E(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => DSP_ALU_INST(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_out_ofmap_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000100101",
      OVERFLOW => NLW_out_ofmap_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 16) => NLW_out_ofmap_reg_P_UNCONNECTED(47 downto 16),
      P(15 downto 0) => ofmap_wires_00(15 downto 0),
      PATTERNBDETECT => NLW_out_ofmap_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_out_ofmap_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_out_ofmap_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => RSTB,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => RSTB,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => RSTB,
      UNDERFLOW => NLW_out_ofmap_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_out_ofmap_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
\out_weight_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(0),
      Q => out_weight_00(0),
      R => '0'
    );
\out_weight_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(10),
      Q => out_weight_00(10),
      R => '0'
    );
\out_weight_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(11),
      Q => out_weight_00(11),
      R => '0'
    );
\out_weight_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(12),
      Q => out_weight_00(12),
      R => '0'
    );
\out_weight_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(13),
      Q => out_weight_00(13),
      R => '0'
    );
\out_weight_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(14),
      Q => out_weight_00(14),
      R => '0'
    );
\out_weight_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(15),
      Q => out_weight_00(15),
      R => '0'
    );
\out_weight_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(1),
      Q => out_weight_00(1),
      R => '0'
    );
\out_weight_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(2),
      Q => out_weight_00(2),
      R => '0'
    );
\out_weight_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(3),
      Q => out_weight_00(3),
      R => '0'
    );
\out_weight_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(4),
      Q => out_weight_00(4),
      R => '0'
    );
\out_weight_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(5),
      Q => out_weight_00(5),
      R => '0'
    );
\out_weight_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(6),
      Q => out_weight_00(6),
      R => '0'
    );
\out_weight_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(7),
      Q => out_weight_00(7),
      R => '0'
    );
\out_weight_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(8),
      Q => out_weight_00(8),
      R => '0'
    );
\out_weight_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(9),
      Q => out_weight_00(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_systolic_array_2x2_s_0_1_integer_mac_pe_1 is
  port (
    ofmap_wires_01 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_weight_01 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_ifmap_01 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    RSTB : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    out_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    out_ifmap_00 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_systolic_array_2x2_s_0_1_integer_mac_pe_1 : entity is "integer_mac_pe";
end design_1_systolic_array_2x2_s_0_1_integer_mac_pe_1;

architecture STRUCTURE of design_1_systolic_array_2x2_s_0_1_integer_mac_pe_1 is
  signal NLW_out_ofmap_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_out_ofmap_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_out_ofmap_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_out_ofmap_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal NLW_out_ofmap_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_out_ofmap_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of out_ofmap_reg : label is "yes";
begin
\out_ifmap_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_00(0),
      Q => out_ifmap_01(0),
      R => '0'
    );
\out_ifmap_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_00(10),
      Q => out_ifmap_01(10),
      R => '0'
    );
\out_ifmap_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_00(11),
      Q => out_ifmap_01(11),
      R => '0'
    );
\out_ifmap_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_00(12),
      Q => out_ifmap_01(12),
      R => '0'
    );
\out_ifmap_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_00(13),
      Q => out_ifmap_01(13),
      R => '0'
    );
\out_ifmap_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_00(14),
      Q => out_ifmap_01(14),
      R => '0'
    );
\out_ifmap_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_00(15),
      Q => out_ifmap_01(15),
      R => '0'
    );
\out_ifmap_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_00(1),
      Q => out_ifmap_01(1),
      R => '0'
    );
\out_ifmap_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_00(2),
      Q => out_ifmap_01(2),
      R => '0'
    );
\out_ifmap_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_00(3),
      Q => out_ifmap_01(3),
      R => '0'
    );
\out_ifmap_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_00(4),
      Q => out_ifmap_01(4),
      R => '0'
    );
\out_ifmap_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_00(5),
      Q => out_ifmap_01(5),
      R => '0'
    );
\out_ifmap_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_00(6),
      Q => out_ifmap_01(6),
      R => '0'
    );
\out_ifmap_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_00(7),
      Q => out_ifmap_01(7),
      R => '0'
    );
\out_ifmap_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_00(8),
      Q => out_ifmap_01(8),
      R => '0'
    );
\out_ifmap_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_00(9),
      Q => out_ifmap_01(9),
      R => '0'
    );
out_ofmap_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => A(15),
      A(28) => A(15),
      A(27) => A(15),
      A(26) => A(15),
      A(25) => A(15),
      A(24) => A(15),
      A(23) => A(15),
      A(22) => A(15),
      A(21) => A(15),
      A(20) => A(15),
      A(19) => A(15),
      A(18) => A(15),
      A(17) => A(15),
      A(16) => A(15),
      A(15 downto 0) => A(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_out_ofmap_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(15),
      B(16) => Q(15),
      B(15 downto 0) => Q(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_out_ofmap_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_out_ofmap_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_out_ofmap_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => E(0),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_out_ofmap_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000100101",
      OVERFLOW => NLW_out_ofmap_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 16) => NLW_out_ofmap_reg_P_UNCONNECTED(47 downto 16),
      P(15 downto 0) => ofmap_wires_01(15 downto 0),
      PATTERNBDETECT => NLW_out_ofmap_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_out_ofmap_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_out_ofmap_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => RSTB,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => RSTB,
      UNDERFLOW => NLW_out_ofmap_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_out_ofmap_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
\out_weight_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(0),
      Q => out_weight_01(0),
      R => '0'
    );
\out_weight_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(10),
      Q => out_weight_01(10),
      R => '0'
    );
\out_weight_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(11),
      Q => out_weight_01(11),
      R => '0'
    );
\out_weight_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(12),
      Q => out_weight_01(12),
      R => '0'
    );
\out_weight_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(13),
      Q => out_weight_01(13),
      R => '0'
    );
\out_weight_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(14),
      Q => out_weight_01(14),
      R => '0'
    );
\out_weight_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(15),
      Q => out_weight_01(15),
      R => '0'
    );
\out_weight_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(1),
      Q => out_weight_01(1),
      R => '0'
    );
\out_weight_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(2),
      Q => out_weight_01(2),
      R => '0'
    );
\out_weight_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(3),
      Q => out_weight_01(3),
      R => '0'
    );
\out_weight_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(4),
      Q => out_weight_01(4),
      R => '0'
    );
\out_weight_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(5),
      Q => out_weight_01(5),
      R => '0'
    );
\out_weight_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(6),
      Q => out_weight_01(6),
      R => '0'
    );
\out_weight_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(7),
      Q => out_weight_01(7),
      R => '0'
    );
\out_weight_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(8),
      Q => out_weight_01(8),
      R => '0'
    );
\out_weight_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_data(9),
      Q => out_weight_01(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_systolic_array_2x2_s_0_1_integer_mac_pe_2 is
  port (
    ofmap_wires_10 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_weight_10 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_ifmap_10 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    RSTB : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    out_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    out_weight_00 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_systolic_array_2x2_s_0_1_integer_mac_pe_2 : entity is "integer_mac_pe";
end design_1_systolic_array_2x2_s_0_1_integer_mac_pe_2;

architecture STRUCTURE of design_1_systolic_array_2x2_s_0_1_integer_mac_pe_2 is
  signal NLW_out_ofmap_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_out_ofmap_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_out_ofmap_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_out_ofmap_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal NLW_out_ofmap_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_out_ofmap_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of out_ofmap_reg : label is "yes";
begin
\out_ifmap_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(0),
      Q => out_ifmap_10(0),
      R => '0'
    );
\out_ifmap_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(10),
      Q => out_ifmap_10(10),
      R => '0'
    );
\out_ifmap_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(11),
      Q => out_ifmap_10(11),
      R => '0'
    );
\out_ifmap_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(12),
      Q => out_ifmap_10(12),
      R => '0'
    );
\out_ifmap_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(13),
      Q => out_ifmap_10(13),
      R => '0'
    );
\out_ifmap_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(14),
      Q => out_ifmap_10(14),
      R => '0'
    );
\out_ifmap_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(15),
      Q => out_ifmap_10(15),
      R => '0'
    );
\out_ifmap_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(1),
      Q => out_ifmap_10(1),
      R => '0'
    );
\out_ifmap_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(2),
      Q => out_ifmap_10(2),
      R => '0'
    );
\out_ifmap_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(3),
      Q => out_ifmap_10(3),
      R => '0'
    );
\out_ifmap_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(4),
      Q => out_ifmap_10(4),
      R => '0'
    );
\out_ifmap_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(5),
      Q => out_ifmap_10(5),
      R => '0'
    );
\out_ifmap_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(6),
      Q => out_ifmap_10(6),
      R => '0'
    );
\out_ifmap_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(7),
      Q => out_ifmap_10(7),
      R => '0'
    );
\out_ifmap_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(8),
      Q => out_ifmap_10(8),
      R => '0'
    );
\out_ifmap_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(9),
      Q => out_ifmap_10(9),
      R => '0'
    );
out_ofmap_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => out_data(15),
      A(28) => out_data(15),
      A(27) => out_data(15),
      A(26) => out_data(15),
      A(25) => out_data(15),
      A(24) => out_data(15),
      A(23) => out_data(15),
      A(22) => out_data(15),
      A(21) => out_data(15),
      A(20) => out_data(15),
      A(19) => out_data(15),
      A(18) => out_data(15),
      A(17) => out_data(15),
      A(16) => out_data(15),
      A(15 downto 0) => out_data(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_out_ofmap_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => D(15),
      B(16) => D(15),
      B(15 downto 0) => D(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_out_ofmap_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_out_ofmap_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_out_ofmap_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => E(0),
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_out_ofmap_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000100101",
      OVERFLOW => NLW_out_ofmap_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 16) => NLW_out_ofmap_reg_P_UNCONNECTED(47 downto 16),
      P(15 downto 0) => ofmap_wires_10(15 downto 0),
      PATTERNBDETECT => NLW_out_ofmap_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_out_ofmap_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_out_ofmap_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => RSTB,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => RSTB,
      UNDERFLOW => NLW_out_ofmap_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_out_ofmap_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
\out_weight_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_00(0),
      Q => out_weight_10(0),
      R => '0'
    );
\out_weight_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_00(10),
      Q => out_weight_10(10),
      R => '0'
    );
\out_weight_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_00(11),
      Q => out_weight_10(11),
      R => '0'
    );
\out_weight_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_00(12),
      Q => out_weight_10(12),
      R => '0'
    );
\out_weight_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_00(13),
      Q => out_weight_10(13),
      R => '0'
    );
\out_weight_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_00(14),
      Q => out_weight_10(14),
      R => '0'
    );
\out_weight_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_00(15),
      Q => out_weight_10(15),
      R => '0'
    );
\out_weight_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_00(1),
      Q => out_weight_10(1),
      R => '0'
    );
\out_weight_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_00(2),
      Q => out_weight_10(2),
      R => '0'
    );
\out_weight_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_00(3),
      Q => out_weight_10(3),
      R => '0'
    );
\out_weight_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_00(4),
      Q => out_weight_10(4),
      R => '0'
    );
\out_weight_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_00(5),
      Q => out_weight_10(5),
      R => '0'
    );
\out_weight_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_00(6),
      Q => out_weight_10(6),
      R => '0'
    );
\out_weight_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_00(7),
      Q => out_weight_10(7),
      R => '0'
    );
\out_weight_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_00(8),
      Q => out_weight_10(8),
      R => '0'
    );
\out_weight_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_00(9),
      Q => out_weight_10(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_systolic_array_2x2_s_0_1_integer_mac_pe_3 is
  port (
    ofmap_wires_11 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_weight_11 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_ifmap_11 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    RSTB : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    out_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    out_weight_01 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    out_ifmap_10 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_systolic_array_2x2_s_0_1_integer_mac_pe_3 : entity is "integer_mac_pe";
end design_1_systolic_array_2x2_s_0_1_integer_mac_pe_3;

architecture STRUCTURE of design_1_systolic_array_2x2_s_0_1_integer_mac_pe_3 is
  signal NLW_out_ofmap_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_out_ofmap_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_out_ofmap_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_out_ofmap_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_out_ofmap_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal NLW_out_ofmap_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_out_ofmap_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of out_ofmap_reg : label is "yes";
begin
\out_ifmap_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_10(0),
      Q => out_ifmap_11(0),
      R => '0'
    );
\out_ifmap_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_10(10),
      Q => out_ifmap_11(10),
      R => '0'
    );
\out_ifmap_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_10(11),
      Q => out_ifmap_11(11),
      R => '0'
    );
\out_ifmap_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_10(12),
      Q => out_ifmap_11(12),
      R => '0'
    );
\out_ifmap_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_10(13),
      Q => out_ifmap_11(13),
      R => '0'
    );
\out_ifmap_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_10(14),
      Q => out_ifmap_11(14),
      R => '0'
    );
\out_ifmap_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_10(15),
      Q => out_ifmap_11(15),
      R => '0'
    );
\out_ifmap_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_10(1),
      Q => out_ifmap_11(1),
      R => '0'
    );
\out_ifmap_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_10(2),
      Q => out_ifmap_11(2),
      R => '0'
    );
\out_ifmap_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_10(3),
      Q => out_ifmap_11(3),
      R => '0'
    );
\out_ifmap_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_10(4),
      Q => out_ifmap_11(4),
      R => '0'
    );
\out_ifmap_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_10(5),
      Q => out_ifmap_11(5),
      R => '0'
    );
\out_ifmap_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_10(6),
      Q => out_ifmap_11(6),
      R => '0'
    );
\out_ifmap_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_10(7),
      Q => out_ifmap_11(7),
      R => '0'
    );
\out_ifmap_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_10(8),
      Q => out_ifmap_11(8),
      R => '0'
    );
\out_ifmap_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_ifmap_10(9),
      Q => out_ifmap_11(9),
      R => '0'
    );
out_ofmap_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BMULTSEL => "B",
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => out_data(15),
      A(28) => out_data(15),
      A(27) => out_data(15),
      A(26) => out_data(15),
      A(25) => out_data(15),
      A(24) => out_data(15),
      A(23) => out_data(15),
      A(22) => out_data(15),
      A(21) => out_data(15),
      A(20) => out_data(15),
      A(19) => out_data(15),
      A(18) => out_data(15),
      A(17) => out_data(15),
      A(16) => out_data(15),
      A(15 downto 0) => out_data(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_out_ofmap_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(15),
      B(16) => Q(15),
      B(15 downto 0) => Q(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_out_ofmap_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_out_ofmap_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_out_ofmap_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_out_ofmap_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000100101",
      OVERFLOW => NLW_out_ofmap_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 16) => NLW_out_ofmap_reg_P_UNCONNECTED(47 downto 16),
      P(15 downto 0) => ofmap_wires_11(15 downto 0),
      PATTERNBDETECT => NLW_out_ofmap_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_out_ofmap_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_out_ofmap_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => RSTB,
      UNDERFLOW => NLW_out_ofmap_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_out_ofmap_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
\out_weight_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_01(0),
      Q => out_weight_11(0),
      R => '0'
    );
\out_weight_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_01(10),
      Q => out_weight_11(10),
      R => '0'
    );
\out_weight_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_01(11),
      Q => out_weight_11(11),
      R => '0'
    );
\out_weight_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_01(12),
      Q => out_weight_11(12),
      R => '0'
    );
\out_weight_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_01(13),
      Q => out_weight_11(13),
      R => '0'
    );
\out_weight_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_01(14),
      Q => out_weight_11(14),
      R => '0'
    );
\out_weight_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_01(15),
      Q => out_weight_11(15),
      R => '0'
    );
\out_weight_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_01(1),
      Q => out_weight_11(1),
      R => '0'
    );
\out_weight_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_01(2),
      Q => out_weight_11(2),
      R => '0'
    );
\out_weight_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_01(3),
      Q => out_weight_11(3),
      R => '0'
    );
\out_weight_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_01(4),
      Q => out_weight_11(4),
      R => '0'
    );
\out_weight_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_01(5),
      Q => out_weight_11(5),
      R => '0'
    );
\out_weight_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_01(6),
      Q => out_weight_11(6),
      R => '0'
    );
\out_weight_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_01(7),
      Q => out_weight_11(7),
      R => '0'
    );
\out_weight_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_01(8),
      Q => out_weight_11(8),
      R => '0'
    );
\out_weight_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_weight_01(9),
      Q => out_weight_11(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_systolic_array_2x2_s_0_1_systolic_array_2x2_syn is
  port (
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
    out_ifmap_11 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    full0_w : out STD_LOGIC;
    empty0_w : out STD_LOGIC;
    full1_w : out STD_LOGIC;
    empty1_w : out STD_LOGIC;
    full0_i : out STD_LOGIC;
    empty0_i : out STD_LOGIC;
    full1_i : out STD_LOGIC;
    empty1_i : out STD_LOGIC;
    clk : in STD_LOGIC;
    test_weight0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    test_ifmap0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    test_weight1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    test_ifmap1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    w_en0_w : in STD_LOGIC;
    rstn : in STD_LOGIC;
    w_en0_i : in STD_LOGIC;
    w_en1_w : in STD_LOGIC;
    w_en1_i : in STD_LOGIC;
    r_en0_w : in STD_LOGIC;
    r_en1_w : in STD_LOGIC;
    r_en0_i : in STD_LOGIC;
    r_en1_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_systolic_array_2x2_s_0_1_systolic_array_2x2_syn : entity is "systolic_array_2x2_syn";
end design_1_systolic_array_2x2_s_0_1_systolic_array_2x2_syn;

architecture STRUCTURE of design_1_systolic_array_2x2_s_0_1_systolic_array_2x2_syn is
  signal ifmap_fifo0_n_16 : STD_LOGIC;
  signal ifmap_fifo0_n_17 : STD_LOGIC;
  signal ifmap_fifo0_n_18 : STD_LOGIC;
  signal ifmap_fifo0_n_19 : STD_LOGIC;
  signal ifmap_fifo0_n_20 : STD_LOGIC;
  signal ifmap_fifo0_n_21 : STD_LOGIC;
  signal ifmap_fifo0_n_22 : STD_LOGIC;
  signal ifmap_fifo0_n_23 : STD_LOGIC;
  signal ifmap_fifo0_n_24 : STD_LOGIC;
  signal ifmap_fifo0_n_25 : STD_LOGIC;
  signal ifmap_fifo0_n_26 : STD_LOGIC;
  signal ifmap_fifo0_n_27 : STD_LOGIC;
  signal ifmap_fifo0_n_28 : STD_LOGIC;
  signal ifmap_fifo0_n_29 : STD_LOGIC;
  signal ifmap_fifo0_n_30 : STD_LOGIC;
  signal ifmap_fifo0_n_31 : STD_LOGIC;
  signal ifmap_fifo0_n_32 : STD_LOGIC;
  signal ifmap_fifo1_n_16 : STD_LOGIC;
  signal ifmap_fifo1_n_17 : STD_LOGIC;
  signal ifmap_fifo1_n_18 : STD_LOGIC;
  signal ifmap_fifo1_n_19 : STD_LOGIC;
  signal ifmap_fifo1_n_20 : STD_LOGIC;
  signal ifmap_fifo1_n_21 : STD_LOGIC;
  signal ifmap_fifo1_n_22 : STD_LOGIC;
  signal ifmap_fifo1_n_23 : STD_LOGIC;
  signal ifmap_fifo1_n_24 : STD_LOGIC;
  signal ifmap_fifo1_n_25 : STD_LOGIC;
  signal ifmap_fifo1_n_26 : STD_LOGIC;
  signal ifmap_fifo1_n_27 : STD_LOGIC;
  signal ifmap_fifo1_n_28 : STD_LOGIC;
  signal ifmap_fifo1_n_29 : STD_LOGIC;
  signal ifmap_fifo1_n_30 : STD_LOGIC;
  signal ifmap_fifo1_n_31 : STD_LOGIC;
  signal ifmap_fifo1_n_32 : STD_LOGIC;
  signal out_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal out_data0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \out_data0__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \out_data0__1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \out_data0__2\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^out_ifmap_00\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^out_ifmap_10\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^out_weight_00\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^out_weight_01\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal weight_fifo0_n_16 : STD_LOGIC;
  signal weight_fifo1_n_16 : STD_LOGIC;
  signal weight_fifo1_n_17 : STD_LOGIC;
  signal weight_fifo1_n_18 : STD_LOGIC;
  signal weight_fifo1_n_19 : STD_LOGIC;
  signal weight_fifo1_n_20 : STD_LOGIC;
  signal weight_fifo1_n_21 : STD_LOGIC;
  signal weight_fifo1_n_22 : STD_LOGIC;
  signal weight_fifo1_n_23 : STD_LOGIC;
  signal weight_fifo1_n_24 : STD_LOGIC;
  signal weight_fifo1_n_25 : STD_LOGIC;
  signal weight_fifo1_n_26 : STD_LOGIC;
  signal weight_fifo1_n_27 : STD_LOGIC;
  signal weight_fifo1_n_28 : STD_LOGIC;
  signal weight_fifo1_n_29 : STD_LOGIC;
  signal weight_fifo1_n_30 : STD_LOGIC;
  signal weight_fifo1_n_31 : STD_LOGIC;
  signal weight_fifo1_n_32 : STD_LOGIC;
  signal weight_fifo1_n_33 : STD_LOGIC;
begin
  out_ifmap_00(15 downto 0) <= \^out_ifmap_00\(15 downto 0);
  out_ifmap_10(15 downto 0) <= \^out_ifmap_10\(15 downto 0);
  out_weight_00(15 downto 0) <= \^out_weight_00\(15 downto 0);
  out_weight_01(15 downto 0) <= \^out_weight_01\(15 downto 0);
ifmap_fifo0: entity work.design_1_systolic_array_2x2_s_0_1_fifo
     port map (
      D(15 downto 0) => \out_data0__0\(15 downto 0),
      E(0) => ifmap_fifo0_n_16,
      Q(15) => ifmap_fifo0_n_17,
      Q(14) => ifmap_fifo0_n_18,
      Q(13) => ifmap_fifo0_n_19,
      Q(12) => ifmap_fifo0_n_20,
      Q(11) => ifmap_fifo0_n_21,
      Q(10) => ifmap_fifo0_n_22,
      Q(9) => ifmap_fifo0_n_23,
      Q(8) => ifmap_fifo0_n_24,
      Q(7) => ifmap_fifo0_n_25,
      Q(6) => ifmap_fifo0_n_26,
      Q(5) => ifmap_fifo0_n_27,
      Q(4) => ifmap_fifo0_n_28,
      Q(3) => ifmap_fifo0_n_29,
      Q(2) => ifmap_fifo0_n_30,
      Q(1) => ifmap_fifo0_n_31,
      Q(0) => ifmap_fifo0_n_32,
      RSTB => weight_fifo1_n_16,
      clk => clk,
      empty0_i => empty0_i,
      full0_i => full0_i,
      r_en0_i => r_en0_i,
      rstn => rstn,
      test_ifmap0(15 downto 0) => test_ifmap0(15 downto 0),
      w_en0_i => w_en0_i
    );
ifmap_fifo1: entity work.design_1_systolic_array_2x2_s_0_1_fifo_0
     port map (
      D(15 downto 0) => \out_data0__2\(15 downto 0),
      E(0) => ifmap_fifo1_n_16,
      Q(15) => ifmap_fifo1_n_17,
      Q(14) => ifmap_fifo1_n_18,
      Q(13) => ifmap_fifo1_n_19,
      Q(12) => ifmap_fifo1_n_20,
      Q(11) => ifmap_fifo1_n_21,
      Q(10) => ifmap_fifo1_n_22,
      Q(9) => ifmap_fifo1_n_23,
      Q(8) => ifmap_fifo1_n_24,
      Q(7) => ifmap_fifo1_n_25,
      Q(6) => ifmap_fifo1_n_26,
      Q(5) => ifmap_fifo1_n_27,
      Q(4) => ifmap_fifo1_n_28,
      Q(3) => ifmap_fifo1_n_29,
      Q(2) => ifmap_fifo1_n_30,
      Q(1) => ifmap_fifo1_n_31,
      Q(0) => ifmap_fifo1_n_32,
      RSTB => weight_fifo1_n_16,
      clk => clk,
      empty1_i => empty1_i,
      full1_i => full1_i,
      r_en1_i => r_en1_i,
      rstn => rstn,
      test_ifmap1(15 downto 0) => test_ifmap1(15 downto 0),
      w_en1_i => w_en1_i
    );
pe00: entity work.design_1_systolic_array_2x2_s_0_1_integer_mac_pe
     port map (
      A(15 downto 0) => out_data0(15 downto 0),
      D(15 downto 0) => \out_data0__0\(15 downto 0),
      DSP_ALU_INST(0) => ifmap_fifo0_n_16,
      E(0) => weight_fifo0_n_16,
      Q(15) => ifmap_fifo0_n_17,
      Q(14) => ifmap_fifo0_n_18,
      Q(13) => ifmap_fifo0_n_19,
      Q(12) => ifmap_fifo0_n_20,
      Q(11) => ifmap_fifo0_n_21,
      Q(10) => ifmap_fifo0_n_22,
      Q(9) => ifmap_fifo0_n_23,
      Q(8) => ifmap_fifo0_n_24,
      Q(7) => ifmap_fifo0_n_25,
      Q(6) => ifmap_fifo0_n_26,
      Q(5) => ifmap_fifo0_n_27,
      Q(4) => ifmap_fifo0_n_28,
      Q(3) => ifmap_fifo0_n_29,
      Q(2) => ifmap_fifo0_n_30,
      Q(1) => ifmap_fifo0_n_31,
      Q(0) => ifmap_fifo0_n_32,
      RSTB => weight_fifo1_n_16,
      clk => clk,
      ofmap_wires_00(15 downto 0) => ofmap_wires_00(15 downto 0),
      out_data(15 downto 0) => out_data(15 downto 0),
      out_ifmap_00(15 downto 0) => \^out_ifmap_00\(15 downto 0),
      out_weight_00(15 downto 0) => \^out_weight_00\(15 downto 0)
    );
pe01: entity work.design_1_systolic_array_2x2_s_0_1_integer_mac_pe_1
     port map (
      A(15 downto 0) => \out_data0__1\(15 downto 0),
      E(0) => weight_fifo1_n_17,
      Q(15) => ifmap_fifo0_n_17,
      Q(14) => ifmap_fifo0_n_18,
      Q(13) => ifmap_fifo0_n_19,
      Q(12) => ifmap_fifo0_n_20,
      Q(11) => ifmap_fifo0_n_21,
      Q(10) => ifmap_fifo0_n_22,
      Q(9) => ifmap_fifo0_n_23,
      Q(8) => ifmap_fifo0_n_24,
      Q(7) => ifmap_fifo0_n_25,
      Q(6) => ifmap_fifo0_n_26,
      Q(5) => ifmap_fifo0_n_27,
      Q(4) => ifmap_fifo0_n_28,
      Q(3) => ifmap_fifo0_n_29,
      Q(2) => ifmap_fifo0_n_30,
      Q(1) => ifmap_fifo0_n_31,
      Q(0) => ifmap_fifo0_n_32,
      RSTB => weight_fifo1_n_16,
      clk => clk,
      ofmap_wires_01(15 downto 0) => ofmap_wires_01(15 downto 0),
      out_data(15) => weight_fifo1_n_18,
      out_data(14) => weight_fifo1_n_19,
      out_data(13) => weight_fifo1_n_20,
      out_data(12) => weight_fifo1_n_21,
      out_data(11) => weight_fifo1_n_22,
      out_data(10) => weight_fifo1_n_23,
      out_data(9) => weight_fifo1_n_24,
      out_data(8) => weight_fifo1_n_25,
      out_data(7) => weight_fifo1_n_26,
      out_data(6) => weight_fifo1_n_27,
      out_data(5) => weight_fifo1_n_28,
      out_data(4) => weight_fifo1_n_29,
      out_data(3) => weight_fifo1_n_30,
      out_data(2) => weight_fifo1_n_31,
      out_data(1) => weight_fifo1_n_32,
      out_data(0) => weight_fifo1_n_33,
      out_ifmap_00(15 downto 0) => \^out_ifmap_00\(15 downto 0),
      out_ifmap_01(15 downto 0) => out_ifmap_01(15 downto 0),
      out_weight_01(15 downto 0) => \^out_weight_01\(15 downto 0)
    );
pe10: entity work.design_1_systolic_array_2x2_s_0_1_integer_mac_pe_2
     port map (
      D(15 downto 0) => \out_data0__2\(15 downto 0),
      E(0) => ifmap_fifo1_n_16,
      Q(15) => ifmap_fifo1_n_17,
      Q(14) => ifmap_fifo1_n_18,
      Q(13) => ifmap_fifo1_n_19,
      Q(12) => ifmap_fifo1_n_20,
      Q(11) => ifmap_fifo1_n_21,
      Q(10) => ifmap_fifo1_n_22,
      Q(9) => ifmap_fifo1_n_23,
      Q(8) => ifmap_fifo1_n_24,
      Q(7) => ifmap_fifo1_n_25,
      Q(6) => ifmap_fifo1_n_26,
      Q(5) => ifmap_fifo1_n_27,
      Q(4) => ifmap_fifo1_n_28,
      Q(3) => ifmap_fifo1_n_29,
      Q(2) => ifmap_fifo1_n_30,
      Q(1) => ifmap_fifo1_n_31,
      Q(0) => ifmap_fifo1_n_32,
      RSTB => weight_fifo1_n_16,
      clk => clk,
      ofmap_wires_10(15 downto 0) => ofmap_wires_10(15 downto 0),
      out_data(15 downto 0) => out_data(15 downto 0),
      out_ifmap_10(15 downto 0) => \^out_ifmap_10\(15 downto 0),
      out_weight_00(15 downto 0) => \^out_weight_00\(15 downto 0),
      out_weight_10(15 downto 0) => out_weight_10(15 downto 0)
    );
pe11: entity work.design_1_systolic_array_2x2_s_0_1_integer_mac_pe_3
     port map (
      Q(15) => ifmap_fifo1_n_17,
      Q(14) => ifmap_fifo1_n_18,
      Q(13) => ifmap_fifo1_n_19,
      Q(12) => ifmap_fifo1_n_20,
      Q(11) => ifmap_fifo1_n_21,
      Q(10) => ifmap_fifo1_n_22,
      Q(9) => ifmap_fifo1_n_23,
      Q(8) => ifmap_fifo1_n_24,
      Q(7) => ifmap_fifo1_n_25,
      Q(6) => ifmap_fifo1_n_26,
      Q(5) => ifmap_fifo1_n_27,
      Q(4) => ifmap_fifo1_n_28,
      Q(3) => ifmap_fifo1_n_29,
      Q(2) => ifmap_fifo1_n_30,
      Q(1) => ifmap_fifo1_n_31,
      Q(0) => ifmap_fifo1_n_32,
      RSTB => weight_fifo1_n_16,
      clk => clk,
      ofmap_wires_11(15 downto 0) => ofmap_wires_11(15 downto 0),
      out_data(15) => weight_fifo1_n_18,
      out_data(14) => weight_fifo1_n_19,
      out_data(13) => weight_fifo1_n_20,
      out_data(12) => weight_fifo1_n_21,
      out_data(11) => weight_fifo1_n_22,
      out_data(10) => weight_fifo1_n_23,
      out_data(9) => weight_fifo1_n_24,
      out_data(8) => weight_fifo1_n_25,
      out_data(7) => weight_fifo1_n_26,
      out_data(6) => weight_fifo1_n_27,
      out_data(5) => weight_fifo1_n_28,
      out_data(4) => weight_fifo1_n_29,
      out_data(3) => weight_fifo1_n_30,
      out_data(2) => weight_fifo1_n_31,
      out_data(1) => weight_fifo1_n_32,
      out_data(0) => weight_fifo1_n_33,
      out_ifmap_10(15 downto 0) => \^out_ifmap_10\(15 downto 0),
      out_ifmap_11(15 downto 0) => out_ifmap_11(15 downto 0),
      out_weight_01(15 downto 0) => \^out_weight_01\(15 downto 0),
      out_weight_11(15 downto 0) => out_weight_11(15 downto 0)
    );
weight_fifo0: entity work.design_1_systolic_array_2x2_s_0_1_fifo_4
     port map (
      D(15 downto 0) => out_data0(15 downto 0),
      E(0) => weight_fifo0_n_16,
      Q(15 downto 0) => out_data(15 downto 0),
      RSTB => weight_fifo1_n_16,
      clk => clk,
      empty0_w => empty0_w,
      full0_w => full0_w,
      r_en0_w => r_en0_w,
      rstn => rstn,
      test_weight0(15 downto 0) => test_weight0(15 downto 0),
      w_en0_w => w_en0_w
    );
weight_fifo1: entity work.design_1_systolic_array_2x2_s_0_1_fifo_5
     port map (
      D(15 downto 0) => \out_data0__1\(15 downto 0),
      E(0) => weight_fifo1_n_17,
      Q(15) => weight_fifo1_n_18,
      Q(14) => weight_fifo1_n_19,
      Q(13) => weight_fifo1_n_20,
      Q(12) => weight_fifo1_n_21,
      Q(11) => weight_fifo1_n_22,
      Q(10) => weight_fifo1_n_23,
      Q(9) => weight_fifo1_n_24,
      Q(8) => weight_fifo1_n_25,
      Q(7) => weight_fifo1_n_26,
      Q(6) => weight_fifo1_n_27,
      Q(5) => weight_fifo1_n_28,
      Q(4) => weight_fifo1_n_29,
      Q(3) => weight_fifo1_n_30,
      Q(2) => weight_fifo1_n_31,
      Q(1) => weight_fifo1_n_32,
      Q(0) => weight_fifo1_n_33,
      RSTB => weight_fifo1_n_16,
      clk => clk,
      empty1_w => empty1_w,
      full1_w => full1_w,
      r_en1_w => r_en1_w,
      rstn => rstn,
      test_weight1(15 downto 0) => test_weight1(15 downto 0),
      w_en1_w => w_en1_w
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_systolic_array_2x2_s_0_1 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_systolic_array_2x2_s_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_systolic_array_2x2_s_0_1 : entity is "design_1_systolic_array_2x2_s_0_1,systolic_array_2x2_syn,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_systolic_array_2x2_s_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_systolic_array_2x2_s_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_systolic_array_2x2_s_0_1 : entity is "systolic_array_2x2_syn,Vivado 2024.1";
end design_1_systolic_array_2x2_s_0_1;

architecture STRUCTURE of design_1_systolic_array_2x2_s_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_systolic_array_2x2_s_0_1_systolic_array_2x2_syn
     port map (
      clk => clk,
      empty0_i => empty0_i,
      empty0_w => empty0_w,
      empty1_i => empty1_i,
      empty1_w => empty1_w,
      full0_i => full0_i,
      full0_w => full0_w,
      full1_i => full1_i,
      full1_w => full1_w,
      ofmap_wires_00(15 downto 0) => ofmap_wires_00(15 downto 0),
      ofmap_wires_01(15 downto 0) => ofmap_wires_01(15 downto 0),
      ofmap_wires_10(15 downto 0) => ofmap_wires_10(15 downto 0),
      ofmap_wires_11(15 downto 0) => ofmap_wires_11(15 downto 0),
      out_ifmap_00(15 downto 0) => out_ifmap_00(15 downto 0),
      out_ifmap_01(15 downto 0) => out_ifmap_01(15 downto 0),
      out_ifmap_10(15 downto 0) => out_ifmap_10(15 downto 0),
      out_ifmap_11(15 downto 0) => out_ifmap_11(15 downto 0),
      out_weight_00(15 downto 0) => out_weight_00(15 downto 0),
      out_weight_01(15 downto 0) => out_weight_01(15 downto 0),
      out_weight_10(15 downto 0) => out_weight_10(15 downto 0),
      out_weight_11(15 downto 0) => out_weight_11(15 downto 0),
      r_en0_i => r_en0_i,
      r_en0_w => r_en0_w,
      r_en1_i => r_en1_i,
      r_en1_w => r_en1_w,
      rstn => rstn,
      test_ifmap0(15 downto 0) => test_ifmap0(15 downto 0),
      test_ifmap1(15 downto 0) => test_ifmap1(15 downto 0),
      test_weight0(15 downto 0) => test_weight0(15 downto 0),
      test_weight1(15 downto 0) => test_weight1(15 downto 0),
      w_en0_i => w_en0_i,
      w_en0_w => w_en0_w,
      w_en1_i => w_en1_i,
      w_en1_w => w_en1_w
    );
end STRUCTURE;
