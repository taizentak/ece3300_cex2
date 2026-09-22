`timescale 1ns / 1ps
//
//  Add code inside the adder4 module to implement a four-bit adder, using
//   four instances of the one-bit full adder module "fulladd".
//
//  The github tests will test the output of your code.
//  If it passes, you will see a green check mark at the top of the repository.
//

module adder4(
	      input [3:0]      a,
	      input [3:0]      b,
	      output [4:0] result);

	wire cout0, cout1, cout2, cout3;
	
	fulladd adder0(a[0], b[0], 1'b0, result[0], cout0);
	fulladd adder1(a[1], b[1], cout0, result[1], cout1);
	fulladd adder2(a[2], b[2], cout1, result[2], cout2);
	fulladd adder3(a[3], b[3], cout2, result[3], cout3);

// add your code here -- you must use four instances of the full adder "fulladd", defined below
   
endmodule

module fulladd(
	       input  x,
	       input  y,
	       input  cin,
	       output sum,
	       output cout);

   assign sum = x ^ y ^ cin;
   assign cout = (x & y) | (x & cin) | (y & cin);
   
endmodule

