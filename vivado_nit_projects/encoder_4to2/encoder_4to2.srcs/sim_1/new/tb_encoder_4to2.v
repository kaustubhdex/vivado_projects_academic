module tb_encoder_4to2 ();

    reg [3:0] test_encoder_4to2_in;
    wire [1:0] test_encoder_4to2_out;
    
    encoder_4to2 tb1 (
        .encoder_4to2_in(test_encoder_4to2_in),
        .encoder_4to2_out(test_encoder_4to2_out)
        );
    
    initial
    begin
        test_encoder_4to2_in = 4'b0000;
        #20
        test_encoder_4to2_in = 4'b0001;
        #20
        test_encoder_4to2_in = 4'b0010;
        #20
        test_encoder_4to2_in = 4'b0100;
        #20
        test_encoder_4to2_in = 4'b1000;
        #20
        test_encoder_4to2_in = 4'b0101;
        
        #20
        test_encoder_4to2_in = 4'b0000;
    
    end
    
    
endmodule