`include "ram_test_pkg.sv"

module top;
  reg clk ; 
  initial clk = 0;
  always #40 clk = ~clk ;
  ram_if in0(clk);
  
  initial begin
    uvm_config_db #(virtual ram_if ):: set(null,"*","vif",in0);
    
    run_test("ram_odd_addr_test"); // try different test names here
  end
endmodule

// define a interface interface