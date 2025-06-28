`timescale 1ns / 1ps

module tb_svm_classifier;
    parameter N = 8100;

    reg signed [N*16-1:0] features_flat;
    wire is_missile;
    wire signed [31:0] sum;
    wire result;

    svm_classifier #(N) uut (
        .features_flat(features_flat),
        .is_missile(is_missile),
        .sum(sum),
        .result(result)
    );

    integer i;

    initial begin
        features_flat = 0;
        
        #10;
        
        features_flat[15:0] = 16'd2;
        features_flat[31:16] = 16'd2;
        features_flat[47:32] = 16'd2;
        features_flat[63:48] = 16'd2;
            
        #50;
        $display("Result: %b", is_missile);
        $finish;
    end
endmodule