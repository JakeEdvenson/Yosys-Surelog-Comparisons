// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue Jun  7 08:59:39 2022
// Host        : CCL15 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -file /home/edvenson/bfasst/build/xilinx_yosys_impl/basic/add4_r/add4_r_impl.v
// Design      : add4_r
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "9e488001" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module add4_r
   (clk,
    a,
    b,
    o);
  input clk;
  input [3:0]a;
  input [3:0]b;
  output [3:0]o;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]a;
  wire [3:0]a_IBUF;
  wire [3:0]b;
  wire [3:0]b_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]o;
  wire \o[3]_i_2_n_0 ;
  wire [3:0]o_OBUF;
  wire [3:0]p_0_in;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT2 #(
    .INIT(4'h6)) 
    \o[0]_i_1 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \o[1]_i_1 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[1]),
        .I3(a_IBUF[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \o[2]_i_1 
       (.I0(b_IBUF[0]),
        .I1(a_IBUF[0]),
        .I2(a_IBUF[1]),
        .I3(b_IBUF[1]),
        .I4(b_IBUF[2]),
        .I5(a_IBUF[2]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \o[3]_i_1 
       (.I0(\o[3]_i_2_n_0 ),
        .I1(a_IBUF[2]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(a_IBUF[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \o[3]_i_2 
       (.I0(b_IBUF[1]),
        .I1(a_IBUF[1]),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[0]),
        .O(\o[3]_i_2_n_0 ));
  OBUF \o_OBUF[0]_inst 
       (.I(o_OBUF[0]),
        .O(o[0]));
  OBUF \o_OBUF[1]_inst 
       (.I(o_OBUF[1]),
        .O(o[1]));
  OBUF \o_OBUF[2]_inst 
       (.I(o_OBUF[2]),
        .O(o[2]));
  OBUF \o_OBUF[3]_inst 
       (.I(o_OBUF[3]),
        .O(o[3]));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in[0]),
        .Q(o_OBUF[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in[1]),
        .Q(o_OBUF[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in[2]),
        .Q(o_OBUF[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in[3]),
        .Q(o_OBUF[3]),
        .R(\<const0> ));
endmodule
