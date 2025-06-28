`timescale 1ns / 1ps

module svm_classifier #(parameter N = 8100)(
    input  signed [N*16-1:0] features_flat,
    output is_missile, signed [31:0] sum, result
);

    reg signed [15:0] weights[N-1:0];
    reg signed [15:0] features[N-1:0];
    reg signed [31:0] sum;
    reg result;
    integer i;

    assign is_missile = result;

    initial begin
       $readmemh("weights.hex", weights);
    end
    
    always @(*) begin
        for (i = 0; i < N; i = i + 1) begin
            features[i] = features_flat[i*16 +: 16];       
        end

        sum = 0;
        for (i = 0; i < N; i = i + 1) begin
            sum = sum + features[i] * weights[i];
            
        end
        sum = sum + 2617;
        result = (sum >= 0) ? 1'b1 : 1'b0;
    end
endmodule
