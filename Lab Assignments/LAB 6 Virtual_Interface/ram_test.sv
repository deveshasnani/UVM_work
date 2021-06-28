class ram_base_test extends uvm_test;
  `uvm_component_utils(ram_base_test)
  
  function new(string name = "ram_base_test",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  ram_wr_agt_top ram_env;
  ram_wr_agent_config agent_cfg; // x change name to mramconfig
  ///////////////////////////////////////////////////////////
  function void config_ram();
    uvm_config_db #(virtual ram_if) :: get(this,"","vif",agent_cfg.vif); // try this.vif here
  endfunction
  ////////////////////////////////////////////////////////////////////////
  function void build_phase(uvm_phase phase);
  super.build_phase(phase);
    agent_cfg = ram_wr_agent_config::type_id::create("agent_cfg");
    agent_cfg.is_active = UVM_ACTIVE;
    $display("JUST BEFORE  get vif callfrom test");
    config_ram();
    $display("JUST BEFORE Calling set ram_config");
    uvm_config_db #(ram_wr_agent_config) ::set(this,"*","ram_config",agent_cfg);
   // uvm_config_db #(uvm_object_wrapper)::set(this,"ram_env.agent.sequencer.main_phase","default_sequence",ram_rand_wr_xtns::type_id::get());
    $display("JUST AFTER Calling set ram_config");
    ram_env = ram_wr_agt_top::type_id::create("agent_top",this);
  endfunction
  
endclass
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////    
 class ram_random_test extends ram_base_test ;
  `uvm_component_utils(ram_random_test)
  
  function new(string name = "ram_random_test",uvm_component parent);
    super.new(name,parent);
  endfunction

      ram_rand_wr_xtns random_seq;
  
  function void build_phase(uvm_phase phase);
       super.build_phase(phase);
  endfunction
    
   virtual task run_phase(uvm_phase phase);
     phase.raise_objection(this);
     random_seq = ram_rand_wr_xtns::type_id::create("random_seq");
     random_seq.start(ram_env.agent.sequencer);  /// <-figure out what to fill here
     phase.drop_objection(this);
   endtask
 endclass
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   
   class ram_single_addr_test extends ram_base_test;
     `uvm_component_utils(ram_single_addr_test)
  
  function new(string name = "ram_single_addr_test",uvm_component parent);
    super.new(name,parent);
  endfunction

      ram_single_addr_wr_xtns seq;
  
  function void build_phase(uvm_phase phase);
       super.build_phase(phase);
  endfunction
    
   virtual task run_phase(uvm_phase phase);
     phase.raise_objection(this);
     seq = ram_single_addr_wr_xtns::type_id::create("seq");
     seq.start(ram_env.agent.sequencer); 
     phase.drop_objection(this);
   endtask
   endclass
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   
   class ram_ten_addr_test extends ram_base_test;
     `uvm_component_utils(ram_ten_addr_test)
  
     function new(string name = "ram_ten_addr_test",uvm_component parent);
    super.new(name,parent);
  endfunction

      ram_ten_wr_xtns seq;
  
  function void build_phase(uvm_phase phase);
       super.build_phase(phase);
  endfunction
    
   virtual task run_phase(uvm_phase phase);
     phase.raise_objection(this);
     seq = ram_ten_wr_xtns::type_id::create("seq");
     seq.start(ram_env.agent.sequencer); 
     phase.drop_objection(this);
   endtask
     
   endclass ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   
   class ram_odd_addr_test extends ram_base_test;
     `uvm_component_utils(ram_odd_addr_test)
  
  function new(string name = "ram_odd_addr_test",uvm_component parent);
    super.new(name,parent);
  endfunction

      ram_odd_wr_xtns seq;
  
  function void build_phase(uvm_phase phase);
       super.build_phase(phase);
  endfunction
    
   virtual task run_phase(uvm_phase phase);
     phase.raise_objection(this);
     seq = ram_odd_wr_xtns::type_id::create("seq");
     seq.start(ram_env.agent.sequencer); 
     phase.drop_objection(this);
   endtask
     
   endclass ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   
   class ram_even_addr_test extends ram_base_test;
     `uvm_component_utils(ram_even_addr_test)
  
  function new(string name = "ram_even_addr_test",uvm_component parent);
    super.new(name,parent);
  endfunction

      ram_even_wr_xtns seq;
  
  function void build_phase(uvm_phase phase);
       super.build_phase(phase);
  endfunction
    
   virtual task run_phase(uvm_phase phase);
     phase.raise_objection(this);
     seq = ram_even_wr_xtns::type_id::create("seq");
     seq.start(ram_env.agent.sequencer); 
     phase.drop_objection(this);
   endtask
     
endclass