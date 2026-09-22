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

	wire cout0, cout1, cout2;
	
	fulladd adder0(.x(a[0]), .y(b[0]), .cin(cin), .sum(result[0]), .cout(cout0));
	fulladd adder1(.x(a[1]), .y(b[1]), .cin(cout0), .sum(result[1]), .cout(cout1));
	fulladd adder2(.x(a[2]), .y(b[2]), .cin(cout1), .sum(result[2]), .cout(cout2));
	fulladd adder3(.x(a[3]), .y(b[3]), .cin(cout2), .sum(result[3]), .cout(cout));

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

