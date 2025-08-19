module tb_mux_41();
reg [3:0]data_in;
reg [2:0]select;
wire data_out;

mux_41 dut(.data_in(data_in),.select(select),.data_out(data_out));

initial begin
data_in=4'b1010;
#10; select=2'b00;#10;
select=2'b01;#10;
select=2'b10;#10;
select=2'b11;#10;
end 
endmodule

