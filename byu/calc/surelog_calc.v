/* Generated by Yosys 0.16+65 (git sha1 UNKNOWN, gcc 9.4.0-1ubuntu1~20.04.1 -fPIC -Os) */

(* top =  1  *)
module calc(clk, btnc, btnl, btnu, btnr, btnd, sw, led);
  wire [3:0] _00_;
  wire [1:0] _01_;
  wire [2:0] _02_;
  (* unused_bits = "0" *)
  wire _03_;
  (* unused_bits = "0" *)
  wire _04_;
  (* unused_bits = "0" *)
  wire _05_;
  (* unused_bits = "0" *)
  wire _06_;
  (* unused_bits = "0" *)
  wire _07_;
  wire [31:0] _08_;
  wire [31:0] _09_;
  wire [31:0] _10_;
  wire [31:0] _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire [31:0] _16_;
  wire _17_;
  (* packed_ranges = 1'h1 *)
  (* unpacked_ranges = 1'h1 *)
  reg [15:0] accumulator;
  (* hdlname = "alu_calc alu_op" *)
  (* packed_ranges = 1'h1 *)
  (* unpacked_ranges = 1'h1 *)
  wire [3:0] \alu_calc.alu_op ;
  (* hdlname = "alu_calc op1" *)
  (* packed_ranges = 1'h1 *)
  (* unpacked_ranges = 1'h1 *)
  wire [31:0] \alu_calc.op1 ;
  (* hdlname = "alu_calc op2" *)
  (* packed_ranges = 1'h1 *)
  (* unpacked_ranges = 1'h1 *)
  wire [31:0] \alu_calc.op2 ;
  (* hdlname = "alu_calc result" *)
  (* packed_ranges = 1'h1 *)
  (* unpacked_ranges = 1'h1 *)
  (* unused_bits = "16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31" *)
  wire [31:0] \alu_calc.result ;
  (* packed_ranges = 1'h1 *)
  (* unpacked_ranges = 1'h1 *)
  wire [3:0] alu_op;
  input btnc;
  wire btnc;
  input btnd;
  wire btnd;
  input btnl;
  wire btnl;
  input btnr;
  wire btnr;
  input btnu;
  wire btnu;
  input clk;
  wire clk;
  (* packed_ranges = 1'h1 *)
  (* unpacked_ranges = 1'h1 *)
  output [15:0] led;
  wire [15:0] led;
  (* packed_ranges = 1'h1 *)
  (* unpacked_ranges = 1'h1 *)
  wire [31:0] op1;
  (* packed_ranges = 1'h1 *)
  (* unpacked_ranges = 1'h1 *)
  wire [31:0] op2;
  (* hdlname = "os clk" *)
  wire \os.clk ;
  (* hdlname = "os in" *)
  wire \os.in ;
  (* hdlname = "os next_state" *)
  (* packed_ranges = 1'h1 *)
  (* unpacked_ranges = 1'h1 *)
  wire [2:0] \os.next_state ;
  (* hdlname = "os os" *)
  wire \os.os ;
  (* hdlname = "os rst" *)
  wire \os.rst ;
  (* hdlname = "os state" *)
  (* packed_ranges = 1'h1 *)
  (* unpacked_ranges = 1'h1 *)
  wire [2:0] \os.state ;
  (* packed_ranges = 1'h1 *)
  (* unpacked_ranges = 1'h1 *)
  (* unused_bits = "16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31" *)
  wire [31:0] result;
  wire rst;
  (* packed_ranges = 1'h1 *)
  (* unpacked_ranges = 1'h1 *)
  input [15:0] sw;
  wire [15:0] sw;
  wire upd;
  always @(posedge clk)
    if (btnu) accumulator <= 16'h0000;
    else if (\os.os ) accumulator <= \alu_calc.result [15:0];
  assign _00_[2] = ~btnc;
  assign _02_[2] = ~_00_[3];
  assign _00_[0] = ~_02_[0];
  assign _01_[0] = ~btnr;
  assign { _09_[31], _09_[15:1], _07_ } = { accumulator[15], accumulator } + { sw[15], sw };
  assign { _10_[31], _10_[14:0] } = accumulator & sw;
  assign { _11_[31], _11_[14:0] } = accumulator | sw;
  function [16:0] _26_;
    input [16:0] a;
    input [67:0] b;
    input [3:0] s;
    (* full_case = 32'd1 *)
    (* parallel_case *)
    casez (s)
      4'b???1:
        _26_ = b[16:0];
      4'b??1?:
        _26_ = b[33:17];
      4'b?1??:
        _26_ = b[50:34];
      4'b1???:
        _26_ = b[67:51];
      default:
        _26_ = a;
    endcase
  endfunction
  assign \alu_calc.result [16:0] = _26_({ _09_[31], _09_[15:0] }, { _10_[31], _10_[31], _10_[14:0], _11_[31], _11_[31], _11_[14:0], _08_[0], _16_[15:1], _09_[0], 16'h0000, _08_[0] }, { _15_, _14_, _13_, _12_ });
  assign _12_ = \alu_calc.alu_op  == (* full_case = 32'd1 *) 3'h7;
  assign _13_ = \alu_calc.alu_op  == (* full_case = 32'd1 *) 3'h6;
  assign _14_ = \alu_calc.alu_op  == (* full_case = 32'd1 *) 1'h1;
  assign _15_ = ! (* full_case = 32'd1 *) \alu_calc.alu_op ;
  assign { _08_[0], _16_[15:1], _09_[0] } = { accumulator[15], accumulator } - { sw[15], sw };
  reg [1:0] _32_;
  always @(posedge clk)
    if (btnu) _32_ <= 2'h0;
    else if (_17_) _32_ <= \os.next_state [1:0];
  assign \os.state [1:0] = _32_;
  assign _17_ = { \os.next_state [0], btnd } != 2'h2;
  assign \os.os  = { \os.state [1], \os.state [1:0] } == (* full_case = 32'd1 *) 1'h1;
  assign \os.next_state [0] = ! (* full_case = 32'd1 *) { \os.state [1], \os.state [1:0] };
  function [1:0] _36_;
    input [1:0] a;
    input [3:0] b;
    input [1:0] s;
    (* full_case = 32'd1 *)
    (* parallel_case *)
    casez (s)
      2'b?1:
        _36_ = b[1:0];
      2'b1?:
        _36_ = b[3:2];
      default:
        _36_ = a;
    endcase
  endfunction
  assign { \os.next_state [1], _03_ } = _36_(2'h0, { 2'h1, btnd, 1'h0 }, { \os.next_state [0], \os.os  });
  assign _02_[0] = btnc ? (* full_case = 32'd1 *) btnr : 1'h0;
  assign { _00_[3], _04_, _06_, _05_ } = btnc ? (* full_case = 32'd1 *) { 2'h2, btnr, _01_[0] } : { _01_[0], 1'h1, btnr, 1'h1 };
  assign \alu_calc.alu_op  = btnl ? (* full_case = 32'd1 *) { _00_[3:2], btnr, _00_[0] } : { 1'h0, _02_[2], _00_[2], _02_[0] };
  assign { _16_[31:16], _16_[0] } = { _08_[0], _08_[0], _08_[0], _08_[0], _08_[0], _08_[0], _08_[0], _08_[0], _08_[0], _08_[0], _08_[0], _08_[0], _08_[0], _08_[0], _08_[0], _08_[0], _09_[0] };
  assign _11_[30:15] = { _11_[31], _11_[31], _11_[31], _11_[31], _11_[31], _11_[31], _11_[31], _11_[31], _11_[31], _11_[31], _11_[31], _11_[31], _11_[31], _11_[31], _11_[31], _11_[31] };
  assign _10_[30:15] = { _10_[31], _10_[31], _10_[31], _10_[31], _10_[31], _10_[31], _10_[31], _10_[31], _10_[31], _10_[31], _10_[31], _10_[31], _10_[31], _10_[31], _10_[31], _10_[31] };
  assign _09_[30:16] = { _09_[31], _09_[31], _09_[31], _09_[31], _09_[31], _09_[31], _09_[31], _09_[31], _09_[31], _09_[31], _09_[31], _09_[31], _09_[31], _09_[31], _09_[31] };
  assign \os.state [2] = \os.state [1];
  assign \os.rst  = btnu;
  assign \os.next_state [2] = \os.next_state [1];
  assign \os.in  = btnd;
  assign \os.clk  = clk;
  assign _08_[31:1] = 31'h00000000;
  assign _00_[1] = btnr;
  assign \alu_calc.result [31:17] = { \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16] };
  assign _01_[1] = btnr;
  assign \alu_calc.op2  = { sw[15], sw[15], sw[15], sw[15], sw[15], sw[15], sw[15], sw[15], sw[15], sw[15], sw[15], sw[15], sw[15], sw[15], sw[15], sw[15], sw };
  assign _02_[1] = _00_[2];
  assign alu_op = \alu_calc.alu_op ;
  assign led = accumulator;
  assign op1 = { accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator };
  assign op2 = { sw[15], sw[15], sw[15], sw[15], sw[15], sw[15], sw[15], sw[15], sw[15], sw[15], sw[15], sw[15], sw[15], sw[15], sw[15], sw[15], sw };
  assign result = { \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16], \alu_calc.result [16:0] };
  assign rst = btnu;
  assign upd = \os.os ;
  assign \alu_calc.op1  = { accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator[15], accumulator };
endmodule
