`timescale 1ns/1ps
module train_tb;
    reg [3:0] train_req;
    wire [3:0] train_pass;

    train_controller uut (
        .train_req(train_req),
        .train_pass(train_pass)
    );

    initial begin
        $dumpfile("train_waveform.vcd");
        $dumpvars(0, train_tb);
        $monitor("T=%0t | Req=%b | Pass=%b", $time, train_req, train_pass);

        train_req = 4'b0000; #10;
        train_req = 4'b0001; #10;
        train_req = 4'b0011; #10;
        train_req = 4'b0110; #10;
        train_req = 4'b1111; #10;
        train_req = 4'b1000; #10;
        $finish;
    end
endmodule
