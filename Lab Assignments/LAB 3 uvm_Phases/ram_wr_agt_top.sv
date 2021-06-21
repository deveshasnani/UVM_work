class ram_wr_agt_top extends uvm_env;
  `uvm_component_utils(ram_wr_agt_top)
  ram_wr_agent wr_agt;
   
      function new(string name = "ram_wr_agt_top",uvm_component parent);
    super.new(name,parent);
  endfunction
    
  function void build_phase(uvm_phase phase);
  super.build_phase(phase);
  `uvm_info("RAM_AGT_TOP","build phase is executing",UVM_LOW);
  wr_agt = ram_wr_agent::type_id::create("wr_agt",this);
  endfunction
  
  function void connect_phase(uvm_phase phase);
      super.connect_phase(phase);
      `uvm_info("RAM_AGT_TOP","connect phase is executing",UVM_LOW);
  endfunction
  
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    `uvm_info("RAM_AGT_TOP","end of elaboration phase is executing",UVM_LOW);
  endfunction
  
    function void start_of_simulation_phase(uvm_phase phase);
      super.start_of_simulation_phase(phase);
      `uvm_info("RAM_AGT_TOP","start of simulation phase is executing",UVM_LOW);
  endfunction
  
  task  run_phase(uvm_phase phase);
    phase.raise_objection(this);
    super.run_phase(phase);
    #50
    `uvm_info("RAM_AGT_TOP","RUN phase is executing",UVM_LOW);
    
    phase.drop_objection(this);
  endtask
  
      function void extract_phase(uvm_phase phase);
      super.extract_phase(phase);
      `uvm_info("RAM_AGT_TOP","extract phase is executing",UVM_LOW);
      endfunction
  
      function void report_phase(uvm_phase phase);
      super.report_phase(phase);
      `uvm_info("RAM_AGT_TOP","report phase is executing",UVM_LOW);
       endfunction
  
        function void check_phase(uvm_phase phase);
      super.check_phase(phase);
          `uvm_info("RAM_AGT_TOP","check phase is executing",UVM_LOW);
        endfunction
  
endclass