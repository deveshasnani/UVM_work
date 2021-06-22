class ram_wr_agt_top extends uvm_env ;
  `uvm_component_utils(ram_wr_agt_top)
  
  function new(string name = "ram_wr_agt_top",uvm_component parent);
    super.new(name,parent);
  endfunction
  ram_wr_agent agent ;
  
  function  build_phase(uvm_phase phase);
    super.build_phase(phase); // optional i feel
    agent = ram_wr_agent::type_id::create("agent",this);
  endfunction
  
  function run_phase(uvm_phase phase);
    /// print topology
    agent.print(); // check
  endfunction
  
endclass