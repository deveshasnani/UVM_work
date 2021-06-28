class ram_wr_agent extends uvm_agent;
  `uvm_component_utils(ram_wr_agent)
  function new(string name = "ram_wr_agent",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  ram_wr_agent_config m_cfg;
  ram_wr_driver driver;
  ram_wr_monitor monitor;
  ram_wr_sequencer sequencer;
  
  function void build_phase(uvm_phase phase);
    if(! uvm_config_db #(ram_wr_agent_config) ::get(this,"","ram_config",m_cfg))
      `uvm_fatal("AGENT","get config fail")
      super.build_phase(phase);
    monitor = ram_wr_monitor::type_id::create("monitor",this);
    if(m_cfg.is_active == UVM_ACTIVE)
      begin
        driver = ram_wr_driver::type_id::create("driver",this);
        sequencer = ram_wr_sequencer::type_id::create("sequencer",this);
      end
    
  endfunction
  
  function void connect_phase(uvm_phase phase);
    if(m_cfg.is_active == UVM_ACTIVE) begin
      driver.seq_item_port.connect(sequencer.seq_item_export);
      end
  endfunction
endclass