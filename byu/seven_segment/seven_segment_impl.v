// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue Jun  7 08:37:32 2022
// Host        : CCL15 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -file
//               /home/edvenson/bfasst/build/xilinx_yosys_impl/byu/seven_segment/seven_segment_impl.v
// Design      : seven_segment
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "9b11d5e1" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module seven_segment
   (data,
    segment);
  input [3:0]data;
  output [6:0]segment;

  wire [3:0]data;
  wire [3:0]data_IBUF;
  wire [6:0]segment;
  wire [6:0]segment_OBUF;

  IBUF \data_IBUF[0]_inst 
       (.I(data[0]),
        .O(data_IBUF[0]));
  IBUF \data_IBUF[1]_inst 
       (.I(data[1]),
        .O(data_IBUF[1]));
  IBUF \data_IBUF[2]_inst 
       (.I(data[2]),
        .O(data_IBUF[2]));
  IBUF \data_IBUF[3]_inst 
       (.I(data[3]),
        .O(data_IBUF[3]));
  OBUF \segment_OBUF[0]_inst 
       (.I(segment_OBUF[0]),
        .O(segment[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0892)) 
    \segment_OBUF[0]_inst_i_1 
       (.I0(data_IBUF[0]),
        .I1(data_IBUF[3]),
        .I2(data_IBUF[2]),
        .I3(data_IBUF[1]),
        .O(segment_OBUF[0]));
  OBUF \segment_OBUF[1]_inst 
       (.I(segment_OBUF[1]),
        .O(segment[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hCA28)) 
    \segment_OBUF[1]_inst_i_1 
       (.I0(data_IBUF[2]),
        .I1(data_IBUF[1]),
        .I2(data_IBUF[0]),
        .I3(data_IBUF[3]),
        .O(segment_OBUF[1]));
  OBUF \segment_OBUF[2]_inst 
       (.I(segment_OBUF[2]),
        .O(segment[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8908)) 
    \segment_OBUF[2]_inst_i_1 
       (.I0(data_IBUF[2]),
        .I1(data_IBUF[3]),
        .I2(data_IBUF[0]),
        .I3(data_IBUF[1]),
        .O(segment_OBUF[2]));
  OBUF \segment_OBUF[3]_inst 
       (.I(segment_OBUF[3]),
        .O(segment[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \segment_OBUF[3]_inst_i_1 
       (.I0(data_IBUF[3]),
        .I1(data_IBUF[2]),
        .I2(data_IBUF[0]),
        .I3(data_IBUF[1]),
        .O(segment_OBUF[3]));
  OBUF \segment_OBUF[4]_inst 
       (.I(segment_OBUF[4]),
        .O(segment[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h04DC)) 
    \segment_OBUF[4]_inst_i_1 
       (.I0(data_IBUF[1]),
        .I1(data_IBUF[0]),
        .I2(data_IBUF[2]),
        .I3(data_IBUF[3]),
        .O(segment_OBUF[4]));
  OBUF \segment_OBUF[5]_inst 
       (.I(segment_OBUF[5]),
        .O(segment[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h480E)) 
    \segment_OBUF[5]_inst_i_1 
       (.I0(data_IBUF[1]),
        .I1(data_IBUF[0]),
        .I2(data_IBUF[3]),
        .I3(data_IBUF[2]),
        .O(segment_OBUF[5]));
  OBUF \segment_OBUF[6]_inst 
       (.I(segment_OBUF[6]),
        .O(segment[6]));
  LUT4 #(
    .INIT(16'h0483)) 
    \segment_OBUF[6]_inst_i_1 
       (.I0(data_IBUF[0]),
        .I1(data_IBUF[2]),
        .I2(data_IBUF[1]),
        .I3(data_IBUF[3]),
        .O(segment_OBUF[6]));
endmodule
