module dig_nand2(
 input A,
 input B,
 output O
);

assign O = ~(A & B);

endmodule