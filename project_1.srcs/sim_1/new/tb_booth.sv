`timescale 1ns / 1ps

module BoothMultiplier_TB;
  
  reg clk;
  reg reset;
  reg start;
  reg [7:0] A;
  reg [7:0] B;
  wire [15:0] result;
  wire ready;
  
  BoothMultiplier dut (
    .clk(clk),
    .reset(reset),
    .start(start),
    .A(A),
    .B(B),
    .result(result),
    .ready(ready)
  );
  
  initial begin
    clk = 0;
    reset = 1;
    start = 0;
    A = 8'b0;
    B = 8'b0;
    
    #10 reset = 0;
    
    // Prueba 1: Multiplicación de 5 x 3
    A = 8'b00000101;
    B = 8'b00000011;
    start = 1;
    
    #20 start = 0;
    
    // Esperar hasta que el resultado esté listo
    repeat (10) @(posedge clk);
    
    // Comprobar resultado
    if (result === 16'b0000000000001111) begin
      $display("Prueba 1 aprobada");
    end else begin
      $display("Prueba 1 fallida");
    end
    
    // Prueba 2: Multiplicación de 10 x 7
    A = 8'b00001010;
    B = 8'b00000111;
    start = 1;
    
    #20 start = 0;
    
    // Esperar hasta que el resultado esté listo
    repeat (10) @(posedge clk);
    
    // Comprobar resultado
    if (result === 16'b0000111000010010) begin
      $display("Prueba 2 aprobada");
    end else begin
      $display("Prueba 2 fallida");
    end
    
    // Agregar más pruebas según sea necesario
    
    $finish;
  end
  
  always begin
    #5 clk = ~clk;
  end
  
endmodule