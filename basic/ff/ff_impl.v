// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue Jun  7 09:42:09 2022
// Host        : CCL15 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -file /home/edvenson/bfasst/build/xilinx_yosys_impl/basic/ff/ff_impl.v
// Design      : ff
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "df1b3293" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module ff
   (clk,
    d,
    q);
  input clk;
  input d;
  output q;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire d;
  wire d_IBUF;
  wire q;
  wire q_OBUF;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF d_IBUF_inst
       (.I(d),
        .O(d_IBUF));
  OBUF q_OBUF_inst
       (.I(q_OBUF),
        .O(q));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(d_IBUF),
        .Q(q_OBUF),
        .R(\<const0> ));
endmodule
