module SubsistemaDespliegue_TB;
  reg [15:0] resultados;
  reg clk, reset;
  wire [15:0] led_output;

  SubsistemaDespliegue dut (
    .resultados(resultados),
    .clk(clk),
    .reset(reset),
    .led_output(led_output)
  );

  // Generar se�ales de prueba
  initial begin
    clk = 0;
    reset = 1;
    resultados = 16'b0;
    #5 reset = 0;  // Desactivar la se�al de reinicio despu�s de 5 unidades de tiempo

    // Iniciar la operaci�n y actualizar los resultados
    #10 resultados = 16'b1010101010101010;

    // Esperar a que se muestren los resultados en los LEDs
    #20;

    // Finalizar la simulaci�n
    $finish;
  end

  // Generar un pulso de reloj
  always begin
    #5 clk = ~clk;
  end

  // Imprimir los resultados de los LEDs
  always @(posedge clk) begin
    $display("LEDs: %b", led_output);
  end

endmodule

