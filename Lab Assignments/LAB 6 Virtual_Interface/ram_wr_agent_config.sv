class ram_wr_agent_config extends uvm_object;
  `uvm_object_utils(ram_wr_agent_config)
  function new(string name = "ram_wr_agent_config");
    super.new(name);
  endfunction
   uvm_active_passive_enum is_active = UVM_ACTIVE;
  virtual ram_if vif;
  
endclass