`timescale 1ns / 1ps


module direction(
input logic clk, chA, chB,
output logic dir
    );
    
    initial dir = 0;

    logic [2:0] chA_delayed = 3'b000, chB_delayed = 3'b000;

    
    always @(posedge clk) chA_delayed <= {chA_delayed[1:0], chA};
    always @(posedge clk) chB_delayed <= {chB_delayed[1:0], chB};
    
    wire count_enable = chA_delayed[1] ^ chA_delayed[2] ^ chB_delayed[1] ^ chB_delayed[2];
    wire count_direction = chA_delayed[1] ^ chB_delayed[2];
   
    always @(posedge clk)
    begin
        if(count_enable)
        begin
            if(count_direction) dir<=1; else dir <= 0;   
        end
    end  
endmodule