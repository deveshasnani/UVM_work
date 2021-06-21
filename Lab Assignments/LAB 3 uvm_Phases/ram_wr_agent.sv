class ram_wr_agent extends uvm_agent;
  
  `uvm_component_utils(ram_wr_agent)
  ram_wr_driver drvr;
 
    function new(string name = "ram_wr_agent",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase (uvm_phase phase);
    
    super.build_phase(phase);
    drvr = ram_wr_driver::type_id::create("drvr",this);
    `uvm_info("RAM_AGENT","build phase running",UVM_LOW)
  endfunction
  
  function void connect_phase(uvm_phase phase);
      super.connect_phase(phase);
      `uvm_info("RAM_AGENT","connect phase is executing",UVM_LOW);
  endfunction
  
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    `uvm_info("RAM_AGENT","end of elaboration phase is executing",UVM_LOW);
  endfunction
  
    function void start_of_simulation_phase(uvm_phase phase);
      super.start_of_simulation_phase(phase);
      `uvm_info("RAM_AGENT","start of simulation phase is executing",UVM_LOW);
  endfunction
  
  task  run_phase(uvm_phase phase);
    phase.raise_objection(this);
    super.run_phase(phase);
    #40
    `uvm_info("RAM_AGENT","RUN phase is executing",UVM_LOW);
    #20
    phase.drop_objection(this);
  endtask
  
      function void extract_phase(uvm_phase phase);
      super.extract_phase(phase);
      `uvm_info("RAM_AGENT","extract phase is executing",UVM_LOW);
      endfunction
  
      function void report_phase(uvm_phase phase);
      super.report_phase(phase);
      `uvm_info("RAM_AGENT","report phase is executing",UVM_LOW);
       endfunction
  
        function void check_phase(uvm_phase phase);
      super.check_phase(phase);
          `uvm_info("RAM_AGENT","check phase is executing",UVM_LOW);
        endfunction
endclass