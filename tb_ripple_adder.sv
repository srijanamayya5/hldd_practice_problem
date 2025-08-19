module tb_ripple_adder;

    // Declare signals for inputs and outputs
    reg [3:0] A_tb;
    reg [3:0] B_tb;
    reg cin_tb;
    wire [3:0] Sum_tb;
    wire cout_tb;

    // Instantiate the ripple carry adder module
    ripple_adder dut (
        .X(A_tb),
        .Y(B_tb),
        .Z(cin_tb),
        .S(Sum_tb),
        .Co(cout_tb)
    );

    initial begin
        // Dump waveform data for simulation analysis
        
A_tb=4'h0;
B_tb=4'h0;
cin_tb=1'b0;

for(int i=0; i<512; i++)
begin
{A_tb,B_tb,cin_tb}={i};#10;
if({cout_tb,Sum_tb}==(A_tb+B_tb+cin_tb))begin
$display($time,":a= %0d, b=%0d, cin=%d, result=%0d:PASS",A_tb,B_tb,cin_tb,({cout_tb,Sum_tb}));
end
else begin
$display($time,":a= %0d, b=%0d, cin=%d, result=%0d:FAIL",A_tb,B_tb,cin_tb,({cout_tb,Sum_tb}));
end

end
end


endmodule
