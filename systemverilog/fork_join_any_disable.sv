/* systemverilog fork join test */
`timescale 1ns/1ns

module fork_join_any_disable;

initial begin
    $display("[%0t ns]: starte fork..join any example", $time);
    #10 $display("[%0t]: sequential after #10", $time);

    fork: any_test
        $display("[%0t ns]: parallel start", $time);
        #50 $display("[%0t ns]: parallel after #50", $time);
        #10 $display("[%0t ns]: parallel after #10", $time);
        begin
            #30 $display("[%0t ns]: sequential after #30", $time);
            #10 $display("[%0t ns]: sequential after #10", $time);
        end
    join_any
    disable join_any

    $display("[%0t ns]: after join", $time);
    #80 $display("[%0t]: finish after #80", $time);
end        

endmodule
