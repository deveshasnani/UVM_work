class ram_wr_test extends uvm_test;
  `uvm_component_utils(ram_wr_test)
  ram_wr_agt_top ram_env;
   
  function new(string name = "ram_wr_test",uvm_component parent);
    super.new(name,parent);
  endfunction
    
  function void build_phase(uvm_phase phase);
  super.build_phase(phase);
    `uvm_info("RAM_WR_TEST","build phase is executing",UVM_LOW);
    ram_env = ram_wr_agt_top::type_id::create("ram_env",this);
  endfunction
  
  function void connect_phase(uvm_phase phase);
      super.connect_phase(phase);
      `uvm_info("RAM_WR_TEST","connect phase is executing",UVM_LOW);
  endfunction
  
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    `uvm_info("RAM_WR_TEST","end of elaboration phase is executing",UVM_LOW);
  endfunction
  
    function void start_of_simulation_phase(uvm_phase phase);
      super.start_of_simulation_phase(phase);
      `uvm_info("RAM_WR_TEST","start of simulation phase is executing",UVM_LOW);
  endfunction
  
  task run_phase(uvm_phase phase);
    phase.raise_objection(this);
    super.run_phase(phase);
    #15
    `uvm_info("RAM_WR_TEST","RUN phase is executing",UVM_LOW);
   #80
    phase.drop_objection(this);
  endtask
  
      function void extract_phase(uvm_phase phase);
      super.extract_phase(phase);
      `uvm_info("RAM_WR_TEST","extract phase is executing",UVM_LOW);
      endfunction
  
      function void report_phase(uvm_phase phase);
      super.report_phase(phase);
      `uvm_info("RAM_WR_TEST","report phase is executing",UVM_LOW);
       endfunction
  
        function void check_phase(uvm_phase phase);
      super.check_phase(phase);
          `uvm_info("RAM_WR_TEST","check phase is executing",UVM_LOW);
        endfunction
  
endclass