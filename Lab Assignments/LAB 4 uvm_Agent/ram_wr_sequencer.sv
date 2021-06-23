class ram_wr_sequencer extends uvm_sequencer #(write_xtn) ;
  `uvm_component_utils(ram_wr_sequencer)
  
  function new(string name = "ram_wr_sequencer", uvm_component parent);
    super.new(name,parent);
  endfunction
  
  
  
endclass