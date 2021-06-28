class ram_wr_driver extends uvm_driver #(write_xtn);
  `uvm_component_utils(ram_wr_driver)
  write_xtn req;
  virtual ram_if.WDR_MP vif;
  ram_wr_agent_config m_cfg;
  function new( string name = "ram_wr_driver",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  
  function void build_phase(uvm_phase phase);
  
    uvm_config_db #(ram_wr_agent_config )::get(this,"","ram_config",m_cfg);
    super.build_phase(phase);
  endfunction
  
  
  function void connect_phase(uvm_phase phase);
    vif = m_cfg.vif;
  endfunction
  
  task run();
    forever begin
      `uvm_info("RAM_WR_DRIVER","DRIVER RUN PHASE START",UVM_HIGH) 
      seq_item_port.get_next_item(req);
      send_to_dut(req);
      seq_item_port.item_done();
    end   
  endtask
  
  task send_to_dut( write_xtn xtn_send);
    /// display or drive dut
    `uvm_info("RAM_WR_DRIVER","DRIVING TRANSACTION TO DUT",UVM_LOW) 
    xtn_send.print();
  endtask

endclass