module train_controller (
    input wire [3:0] train_req,
    output reg [3:0] train_pass
);

always @(*) begin
    train_pass = 4'b0000;
    if (train_req[3])
        train_pass = 4'b1000;
    else if (train_req[2])
        train_pass = 4'b0100;
    else if (train_req[1])
        train_pass = 4'b0010;
    else if (train_req[0])
        train_pass = 4'b0001;
end

endmodule
