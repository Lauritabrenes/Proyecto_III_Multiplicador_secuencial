`timescale 1ns / 1ps

module BoothMultiplier (
  input wire clk,           // Reloj
  input wire reset,         // Reset
  input wire start,         // Señal de inicio
  input wire [7:0] A,       // Operando A
  input wire [7:0] B,       // Operando B
  output wire [15:0] result,// Resultado
  output wire ready         // Señal de listo
);

  // Ruta de control (Máquina de estados finita)
  reg [2:0] state;
  reg shift;
  reg [7:0] A_reg;
  reg [7:0] B_reg;
  reg [15:0] partial_sum;
  
  always @(posedge clk or posedge reset) begin
    if (reset) begin
      state <= 3'b000;
      shift <= 1'b0;
      A_reg <= 8'b0;
      B_reg <= 8'b0;
      partial_sum <= 16'b0;
    end else begin
      case (state)
        3'b000: begin
          if (start) begin
            state <= 3'b001;
            A_reg <= A;
            B_reg <= B;
          end
        end
        3'b001: begin
          if (shift) begin
            state <= 3'b010;
            B_reg <= {1'b0, B_reg[7:1]};
          end else begin
            state <= 3'b011;
            B_reg <= {1'b1, B_reg[7:1]};
          end
        end
        3'b010: state <= 3'b011;
        3'b011: begin
          if (shift) begin
            state <= 3'b100;
            B_reg <= {1'b0, B_reg[7:1]};
          end else begin
            state <= 3'b001;
            B_reg <= {1'b1, B_reg[7:1]};
          end
        end
        3'b100: state <= 3'b101;
        3'b101: begin
          if (shift) begin
            state <= 3'b110;
            B_reg <= {1'b0, B_reg[7:1]};
          end else begin
            state <= 3'b111;
            B_reg <= {1'b1, B_reg[7:1]};
          end
        end
        3'b110: state <= 3'b111;
        3'b111: begin
          if (shift) begin
            state <= 3'b000;
            B_reg <= {1'b0, B_reg[7:1]};
          end else begin
            state <= 3'b101;
            B_reg <= {1'b1, B_reg[7:1]};
          end
        end
      endcase
    end
  end
  
  always @(posedge clk or posedge reset) begin
    if (reset)
      shift <= 1'b0;
    else if (state == 3'b000 || state == 3'b010 || state == 3'b100 || state == 3'b110)
      shift <= 1'b1;
    else
      shift <= 1'b0;
  end
endmodule