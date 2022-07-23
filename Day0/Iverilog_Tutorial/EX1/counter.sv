module counter(count, clk, reset_n);
  parameter WIDTH = 8;

  output logic [WIDTH-1:0] count;
  input  logic             clk;
  input  logic             reset_n;

  always @(posedge clk or negedge reset_n)
    if (!reset_n)
      count <= 0;
    else
      count <= count + 1; 

endmodule // counter

