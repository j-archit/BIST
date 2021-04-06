// Random Pattern Generator testbench

`timescale 1ns/1ns

module rpg_tb;
    
    parameter BITS = 3;

    reg clk;
    reg rst;
    wire END;
    wire [BITS-1:0] op;

    rpg #(.BITS(BITS)) RPG(.clk(clk), .rst(rst), .END(END), .register(op));

    initial clk <= 0;
    always #5 clk <= ~clk;
    
    always begin
        $monitor("Time = %.0f, Pattern = %b", $time, op);
        #3
        rst <= 1;
        #3
        rst <= 0;
        #100 $finish;
    end
endmodule