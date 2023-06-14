module SubsistemaDespliegue(
  input wire [15:0] resultados,
  input wire clk,
  input wire reset,
  output wire [15:0] led_output
);
  reg [15:0] leds;

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      leds <= 16'b0;  // Inicializar todos los LEDs en 0
    end else begin
      leds <= resultados;  // Actualizar los LEDs con los resultados al finalizar una operación
    end
  end

  assign led_output = leds;  // Conectar los LEDs de salida

endmodule

