class ram_wr_monitor extends uvm_monitor ;
`uvm_component_utils(ram_wr_monitor)
 
function new( string name = "ram_wr_monitor",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  task run();
    `uvm_info("RAM_WR_MONITOR","this is write monitor run_phase",UVM_LOW)     
  endtask
  
  
endclass