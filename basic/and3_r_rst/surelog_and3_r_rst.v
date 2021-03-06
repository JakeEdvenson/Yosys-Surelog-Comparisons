/* Generated by Yosys 0.16+65 (git sha1 UNKNOWN, gcc 9.4.0-1ubuntu1~20.04.1 -fPIC -Os) */

(* top =  1  *)
module and3_r_rst(a, b, c, clk, rst, o);
  wire _0_;
  wire _1_;
  input a;
  wire a;
  input b;
  wire b;
  input c;
  wire c;
  input clk;
  wire clk;
  output o;
  reg o;
  input rst;
  wire rst;
  assign _0_ = a & b;
  assign _1_ = _0_ & c;
  always @(posedge clk)
    if (rst) o <= 1'h0;
    else o <= _1_;
endmodule
