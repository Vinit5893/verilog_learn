module fulladder(A,B,C,sum,co);
 input A,B,C;
 output sum,co;
//wire w1,w2,w3;

xor g1(w1,A,B),
    g2(sum,C,w1),g5(co,w2,w3);
and g3(w2,A,B),
    g4(w3,C,w1);    

//instantiate (.bottom(top), .bott(top))

//andg1 g3(.C(w2),.A(A),.B(B)),
//      g4(.C(w3),.A(C),.B(w1));


endmodule

//module andg1(A,B,C);
//input A,B;
//output C;

//and g6(C,A,B);

//endmodule

