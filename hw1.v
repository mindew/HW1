module demorgan
(
  input  A,          // Single bit inputs
  input  B,
  output nA,         // Output intermediate complemented inputs
  output nB,

  output nAandnB,     	// Single bit output, (~A)*(~B)
  output nPAorBP,		// Single bit output, ~(A+B)

  output nAornB, 	 	// Single bit output, (~A)+(~B)
  output nPAandBP	 	// Single bit output, ~(A*B)
);

  wire nA;
  wire nB;
  not Ainv(nA, A);  
  not Binv(nB, B);

  and andgate(nAandnB, nA, nB); 	// AND gate produces nAandnB from nA and nB
  nor norgate(nPAorBP, A, B);

  or orgate(nAornB, nA, nB);		// OR gate produces nAornB from nA and nB
  nand nandgate(nPAandBP, A, B);


endmodule