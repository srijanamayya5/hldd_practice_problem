module tb_full_add();
reg a,b,c;
wire sum,cout;

full_add dut(.a(a),.b(b),.cin(c),.sum(sum),.cout(cout));

initial begin

a=0;b=0;c=0;#10;
a=0;b=0;c=1;#10;
a=0;b=1;c=0;#10;
a=0;b=1;c=1;#10;

a=1;b=0;c=0;#10;
a=1;b=0;c=1;#10;
a=1;b=1;c=0;#10;
a=1;b=1;c=1;#10;

end

initial begin
$monitor("out=%b",sum);
end

endmodule
