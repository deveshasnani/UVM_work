class ram_wr_driver extends uvm_driver;
  
  `uvm_component_utils(ram_wr_driver)
  function new(string name = "ram_wr_driver",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info("RAM_WR_DRIVER","build phase is executing",UVM_LOW);
  endfunction
  
    function void connect_phase(uvm_phase phase);
      super.connect_phase(phase);
      `uvm_info("RAM_WR_DRIVER","connect phase is executing",UVM_LOW);
  endfunction
  
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    `uvm_info("RAM_WR_DRIVER","end of elaboration phase is executing",UVM_LOW);
  endfunction
  
    function void start_of_simulation_phase(uvm_phase phase);
      super.start_of_simulation_phase(phase);
      `uvm_info("RAM_WR_DRIVER","start of simulation phase is executing",UVM_LOW);
  endfunction
  
  task  run_phase(uvm_phase phase);
    phase.raise_objection(this);
    super.run_phase(phase);
    #10
    `uvm_info("RAM_WR_DRIVER","RUN phase is executing",UVM_LOW);
    
    phase.drop_objection(this);
  endtask
  
      function void extract_phase(uvm_phase phase);
      super.extract_phase(phase);
      `uvm_info("RAM_WR_DRIVER","extract phase is executing",UVM_LOW);
      endfunction
  
      function void report_phase(uvm_phase phase);
      super.report_phase(phase);
      `uvm_info("RAM_WR_DRIVER","report phase is executing",UVM_LOW);
       endfunction
  
        function void check_phase(uvm_phase phase);
      super.check_phase(phase);
          `uvm_info("RAM_WR_DRIVER","check phase is executing",UVM_LOW);
        endfunction
  
endclass