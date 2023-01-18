module fa_tb();
reg A=0,B=0,C=0;
wire sum, co;
fulladder f1(.A(A),.B(B),.C(C),.sum(sum),.co(co));
integer i;
initial 
    begin
	$dumpfile ("fa.vcd");
	$dumpvars (0,fa_tb);
	$display ("\t\tTime\tA\tB\tC\tsum\tcout");
	$monitor ($time,"\t%b\t%b\t%b\t%b\t%b",A,B,C,sum,co);
	//#40 $finish;
    
    // using for loop 
    for (i=0;i<8;i=i+1)
    begin
    	{A,B,C}=i;
    	#10;
    end
    end
    
    // using always block
	/*always 
        #20 A = ~A;
        always
        #10 B = ~B;
        always
        #5 C = ~C;*/
endmodule
	

