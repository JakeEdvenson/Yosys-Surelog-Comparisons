// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue Jun  7 09:14:30 2022
// Host        : CCL15 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -file
//               /home/edvenson/bfasst/build/xilinx_yosys_impl/basic/add16_r_rst/add16_r_rst_impl.v
// Design      : add16_r_rst
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "b667731c" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module add16_r_rst
   (clk,
    rst,
    a,
    b,
    o);
  input clk;
  input rst;
  input [15:0]a;
  input [15:0]b;
  output [15:0]o;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]a;
  wire [15:0]a_IBUF;
  wire [15:0]b;
  wire [15:0]b_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [15:0]o;
  wire \o[11]_i_2_n_0 ;
  wire \o[11]_i_3_n_0 ;
  wire \o[11]_i_4_n_0 ;
  wire \o[11]_i_5_n_0 ;
  wire \o[15]_i_2_n_0 ;
  wire \o[15]_i_3_n_0 ;
  wire \o[15]_i_4_n_0 ;
  wire \o[15]_i_5_n_0 ;
  wire \o[3]_i_2_n_0 ;
  wire \o[3]_i_3_n_0 ;
  wire \o[3]_i_4_n_0 ;
  wire \o[3]_i_5_n_0 ;
  wire \o[7]_i_2_n_0 ;
  wire \o[7]_i_3_n_0 ;
  wire \o[7]_i_4_n_0 ;
  wire \o[7]_i_5_n_0 ;
  wire [15:0]o_OBUF;
  wire \o_reg[11]_i_1_n_0 ;
  wire \o_reg[3]_i_1_n_0 ;
  wire \o_reg[7]_i_1_n_0 ;
  wire [15:0]p_0_in;
  wire rst;
  wire rst_IBUF;
  wire [3:0]\NLW_o_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_reg[3]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_o_reg[7]_i_1_CO_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[10]_inst 
       (.I(a[10]),
        .O(a_IBUF[10]));
  IBUF \a_IBUF[11]_inst 
       (.I(a[11]),
        .O(a_IBUF[11]));
  IBUF \a_IBUF[12]_inst 
       (.I(a[12]),
        .O(a_IBUF[12]));
  IBUF \a_IBUF[13]_inst 
       (.I(a[13]),
        .O(a_IBUF[13]));
  IBUF \a_IBUF[14]_inst 
       (.I(a[14]),
        .O(a_IBUF[14]));
  IBUF \a_IBUF[15]_inst 
       (.I(a[15]),
        .O(a_IBUF[15]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \a_IBUF[4]_inst 
       (.I(a[4]),
        .O(a_IBUF[4]));
  IBUF \a_IBUF[5]_inst 
       (.I(a[5]),
        .O(a_IBUF[5]));
  IBUF \a_IBUF[6]_inst 
       (.I(a[6]),
        .O(a_IBUF[6]));
  IBUF \a_IBUF[7]_inst 
       (.I(a[7]),
        .O(a_IBUF[7]));
  IBUF \a_IBUF[8]_inst 
       (.I(a[8]),
        .O(a_IBUF[8]));
  IBUF \a_IBUF[9]_inst 
       (.I(a[9]),
        .O(a_IBUF[9]));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[10]_inst 
       (.I(b[10]),
        .O(b_IBUF[10]));
  IBUF \b_IBUF[11]_inst 
       (.I(b[11]),
        .O(b_IBUF[11]));
  IBUF \b_IBUF[12]_inst 
       (.I(b[12]),
        .O(b_IBUF[12]));
  IBUF \b_IBUF[13]_inst 
       (.I(b[13]),
        .O(b_IBUF[13]));
  IBUF \b_IBUF[14]_inst 
       (.I(b[14]),
        .O(b_IBUF[14]));
  IBUF \b_IBUF[15]_inst 
       (.I(b[15]),
        .O(b_IBUF[15]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  IBUF \b_IBUF[4]_inst 
       (.I(b[4]),
        .O(b_IBUF[4]));
  IBUF \b_IBUF[5]_inst 
       (.I(b[5]),
        .O(b_IBUF[5]));
  IBUF \b_IBUF[6]_inst 
       (.I(b[6]),
        .O(b_IBUF[6]));
  IBUF \b_IBUF[7]_inst 
       (.I(b[7]),
        .O(b_IBUF[7]));
  IBUF \b_IBUF[8]_inst 
       (.I(b[8]),
        .O(b_IBUF[8]));
  IBUF \b_IBUF[9]_inst 
       (.I(b[9]),
        .O(b_IBUF[9]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT2 #(
    .INIT(4'h6)) 
    \o[11]_i_2 
       (.I0(a_IBUF[11]),
        .I1(b_IBUF[11]),
        .O(\o[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o[11]_i_3 
       (.I0(a_IBUF[10]),
        .I1(b_IBUF[10]),
        .O(\o[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o[11]_i_4 
       (.I0(a_IBUF[9]),
        .I1(b_IBUF[9]),
        .O(\o[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o[11]_i_5 
       (.I0(a_IBUF[8]),
        .I1(b_IBUF[8]),
        .O(\o[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o[15]_i_2 
       (.I0(a_IBUF[15]),
        .I1(b_IBUF[15]),
        .O(\o[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o[15]_i_3 
       (.I0(a_IBUF[14]),
        .I1(b_IBUF[14]),
        .O(\o[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o[15]_i_4 
       (.I0(a_IBUF[13]),
        .I1(b_IBUF[13]),
        .O(\o[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o[15]_i_5 
       (.I0(a_IBUF[12]),
        .I1(b_IBUF[12]),
        .O(\o[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o[3]_i_2 
       (.I0(a_IBUF[3]),
        .I1(b_IBUF[3]),
        .O(\o[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o[3]_i_3 
       (.I0(a_IBUF[2]),
        .I1(b_IBUF[2]),
        .O(\o[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o[3]_i_4 
       (.I0(a_IBUF[1]),
        .I1(b_IBUF[1]),
        .O(\o[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o[3]_i_5 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[0]),
        .O(\o[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o[7]_i_2 
       (.I0(a_IBUF[7]),
        .I1(b_IBUF[7]),
        .O(\o[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o[7]_i_3 
       (.I0(a_IBUF[6]),
        .I1(b_IBUF[6]),
        .O(\o[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o[7]_i_4 
       (.I0(a_IBUF[5]),
        .I1(b_IBUF[5]),
        .O(\o[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \o[7]_i_5 
       (.I0(a_IBUF[4]),
        .I1(b_IBUF[4]),
        .O(\o[7]_i_5_n_0 ));
  OBUF \o_OBUF[0]_inst 
       (.I(o_OBUF[0]),
        .O(o[0]));
  OBUF \o_OBUF[10]_inst 
       (.I(o_OBUF[10]),
        .O(o[10]));
  OBUF \o_OBUF[11]_inst 
       (.I(o_OBUF[11]),
        .O(o[11]));
  OBUF \o_OBUF[12]_inst 
       (.I(o_OBUF[12]),
        .O(o[12]));
  OBUF \o_OBUF[13]_inst 
       (.I(o_OBUF[13]),
        .O(o[13]));
  OBUF \o_OBUF[14]_inst 
       (.I(o_OBUF[14]),
        .O(o[14]));
  OBUF \o_OBUF[15]_inst 
       (.I(o_OBUF[15]),
        .O(o[15]));
  OBUF \o_OBUF[1]_inst 
       (.I(o_OBUF[1]),
        .O(o[1]));
  OBUF \o_OBUF[2]_inst 
       (.I(o_OBUF[2]),
        .O(o[2]));
  OBUF \o_OBUF[3]_inst 
       (.I(o_OBUF[3]),
        .O(o[3]));
  OBUF \o_OBUF[4]_inst 
       (.I(o_OBUF[4]),
        .O(o[4]));
  OBUF \o_OBUF[5]_inst 
       (.I(o_OBUF[5]),
        .O(o[5]));
  OBUF \o_OBUF[6]_inst 
       (.I(o_OBUF[6]),
        .O(o[6]));
  OBUF \o_OBUF[7]_inst 
       (.I(o_OBUF[7]),
        .O(o[7]));
  OBUF \o_OBUF[8]_inst 
       (.I(o_OBUF[8]),
        .O(o[8]));
  OBUF \o_OBUF[9]_inst 
       (.I(o_OBUF[9]),
        .O(o[9]));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in[0]),
        .Q(o_OBUF[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in[10]),
        .Q(o_OBUF[10]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in[11]),
        .Q(o_OBUF[11]),
        .R(rst_IBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_reg[11]_i_1 
       (.CI(\o_reg[7]_i_1_n_0 ),
        .CO({\o_reg[11]_i_1_n_0 ,\NLW_o_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(a_IBUF[11:8]),
        .O(p_0_in[11:8]),
        .S({\o[11]_i_2_n_0 ,\o[11]_i_3_n_0 ,\o[11]_i_4_n_0 ,\o[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in[12]),
        .Q(o_OBUF[12]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in[13]),
        .Q(o_OBUF[13]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in[14]),
        .Q(o_OBUF[14]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in[15]),
        .Q(o_OBUF[15]),
        .R(rst_IBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_reg[15]_i_1 
       (.CI(\o_reg[11]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,a_IBUF[14:12]}),
        .O(p_0_in[15:12]),
        .S({\o[15]_i_2_n_0 ,\o[15]_i_3_n_0 ,\o[15]_i_4_n_0 ,\o[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in[1]),
        .Q(o_OBUF[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in[2]),
        .Q(o_OBUF[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in[3]),
        .Q(o_OBUF[3]),
        .R(rst_IBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_reg[3]_i_1 
       (.CI(\<const0> ),
        .CO({\o_reg[3]_i_1_n_0 ,\NLW_o_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(a_IBUF[3:0]),
        .O(p_0_in[3:0]),
        .S({\o[3]_i_2_n_0 ,\o[3]_i_3_n_0 ,\o[3]_i_4_n_0 ,\o[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in[4]),
        .Q(o_OBUF[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in[5]),
        .Q(o_OBUF[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in[6]),
        .Q(o_OBUF[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in[7]),
        .Q(o_OBUF[7]),
        .R(rst_IBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \o_reg[7]_i_1 
       (.CI(\o_reg[3]_i_1_n_0 ),
        .CO({\o_reg[7]_i_1_n_0 ,\NLW_o_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(a_IBUF[7:4]),
        .O(p_0_in[7:4]),
        .S({\o[7]_i_2_n_0 ,\o[7]_i_3_n_0 ,\o[7]_i_4_n_0 ,\o[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in[8]),
        .Q(o_OBUF[8]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \o_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in[9]),
        .Q(o_OBUF[9]),
        .R(rst_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule
