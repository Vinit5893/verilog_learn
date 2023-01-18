/* Generated by Yosys 0.9 (git sha1 1979e0b) */

module fulladder(A, B, C, sum, co);
  input A;
  input B;
  input C;
  output co;
  output sum;
  sky130_fd_sc_hd__xor3_1 _0_ (
    .A(B),
    .B(A),
    .C(C),
    .X(sum)
  );
  sky130_fd_sc_hd__maj3_1 _1_ (
    .A(B),
    .B(A),
    .C(C),
    .X(co)
  );
endmodule
