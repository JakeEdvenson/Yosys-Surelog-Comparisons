// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue Jun  7 09:35:43 2022
// Host        : CCL15 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -file
//               /home/edvenson/bfasst/build/xilinx_yosys_impl/basic/and3_r_rst/and3_r_rst_impl.v
// Design      : and3_r_rst
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "f7e2ab77" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module and3_r_rst
   (a,
    b,
    c,
    clk,
    o,
    rst);
  input a;
  input b;
  input c;
  input clk;
  output o;
  input rst;

  wire \<const1> ;
  wire a;
  wire a_IBUF;
  wire b;
  wire b_IBUF;
  wire c;
  wire c_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire o;
  wire o_OBUF;
  wire o_i_1_n_0;
  wire rst;
  wire rst_IBUF;

  VCC VCC
       (.P(\<const1> ));
  IBUF a_IBUF_inst
       (.I(a),
        .O(a_IBUF));
  IBUF b_IBUF_inst
       (.I(b),
        .O(b_IBUF));
  IBUF c_IBUF_inst
       (.I(c),
        .O(c_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF o_OBUF_inst
       (.I(o_OBUF),
        .O(o));
  LUT3 #(
    .INIT(8'h80)) 
    o_i_1
       (.I0(a_IBUF),
        .I1(b_IBUF),
        .I2(c_IBUF),
        .O(o_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(o_i_1_n_0),
        .Q(o_OBUF),
        .R(rst_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule
