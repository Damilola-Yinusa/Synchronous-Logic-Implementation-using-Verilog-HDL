module AND_Gates (wrt_en, A, S);
  input wrt_en, A;
  output S;
  and G(S, wrt_en, A);
endmodule
