// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue Jun  7 09:29:22 2022
// Host        : CCL15 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -file /home/edvenson/bfasst/build/xilinx_yosys_impl/basic/and3/and3_impl.v
// Design      : and3
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "38aed83e" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module and3
   (a,
    b,
    c,
    o);
  input a;
  input b;
  input c;
  output o;

  wire a;
  wire a_IBUF;
  wire b;
  wire b_IBUF;
  wire c;
  wire c_IBUF;
  wire o;
  wire o_OBUF;

  IBUF a_IBUF_inst
       (.I(a),
        .O(a_IBUF));
  IBUF b_IBUF_inst
       (.I(b),
        .O(b_IBUF));
  IBUF c_IBUF_inst
       (.I(c),
        .O(c_IBUF));
  OBUF o_OBUF_inst
       (.I(o_OBUF),
        .O(o));
  LUT3 #(
    .INIT(8'h80)) 
    o_OBUF_inst_i_1
       (.I0(a_IBUF),
        .I1(b_IBUF),
        .I2(c_IBUF),
        .O(o_OBUF));
endmodule
