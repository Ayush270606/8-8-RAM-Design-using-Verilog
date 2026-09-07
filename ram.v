module RAM8_8(
    input clk, rst, wr_enb,
    input [3:0] wr_addr,
    input [7:0] data_in,
    input [3:0] rd_addr,
    output reg [7:0] data_out
);

// creating one internal memory
reg [7:0] mem[7:0];

integer i;

// write logic and read logic
always @(posedge clk or posedge rst)
begin
    if(rst)
    begin
        for(i = 0; i < 8; i = i + 1)
            mem[i] <= 0;
    end
    else
    begin
        if(wr_enb)
            mem[wr_addr] <= data_in;

        else if(wr_enb == 0)
            data_out <= mem[rd_addr];
    end
end

endmodule