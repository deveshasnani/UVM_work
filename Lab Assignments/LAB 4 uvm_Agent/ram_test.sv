class ram_base_test extends uvm_test;
  `uvm_component_utils(ram_base_test)
  
  function new(string name = "ram_base_test",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  ram_wr_agt_top ram_env;
  ram_wr_agent_config agent_cfg;
  
  function void build_phase(uvm_phase phase);
  super.build_phase(phase);
    agent_cfg = ram_wr_agent_config::type_id::create("agent_cfg");
    agent_cfg.is_active = UVM_ACTIVE;
    uvm_config_db #(ram_wr_agent_config) ::set(this,"*","ram_config",agent_cfg);
   // uvm_config_db #(uvm_object_wrapper)::set(this,"ram_env.agent.sequencer.main_phase","default_sequence",ram_rand_wr_xtns::type_id::get());
    
    ram_env = ram_wr_agt_top::type_id::create("agent_top",this);
  endfunction
  
endclass
    
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