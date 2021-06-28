class ram_wr_monitor extends uvm_monitor ;
`uvm_component_utils(ram_wr_monitor)
  virtual ram_if.WMON_MP vif;
  ram_wr_agent_config m_cfg;
function new( string name = "ram_wr_monitor",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
 
  uvm_config_db #(ram_wr_agent_config )::get(this,"","ram_config",m_cfg);
    super.build_phase(phase); 
  endfunction
  
  task run();
    `uvm_info("RAM_WR_MONITOR","this is write monitor run_phase",UVM_LOW)  
    collect_data();
  endtask
  
   function void connect_phase(uvm_phase phase);
    vif = m_cfg.vif;
  endfunction
  
  task  collect_data();
    `uvm_info("RAM_WR_MONITOR","Monitor collect_data task",UVM_LOW) 
    // protocol specific data collection code should go here
  endtask
endclass