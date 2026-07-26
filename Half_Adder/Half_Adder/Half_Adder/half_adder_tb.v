
module half_adder_tb;

    reg a, b;
    wire s, c;
    integer i;

    // DUT Instantiation
    half_adder dut(a, b, s, c);

    initial begin
        $display("A B | S C");
        $monitor("%b %b | %b %b", a, b, s, c);

        for(i = 0; i < 4; i = i + 1) begin
            {a, b} = i;
            #10;
        end

        $finish;
    end

endmodule
