class driver extends uvm_driver;
     `uvm_component_utils(driver)

     function new(string name, uvm_component parent);
         super.new(name, parent);
     endfunction

     function void build();
         uvm_report_info(get_full_name(),"Build", UVM_LOW);
     endfunction

     function void connect();
         uvm_report_info(get_full_name(),"Connect", UVM_LOW);
     endfunction

     function void end_of_elaboration();
         uvm_report_info(get_full_name(),"End_of_elaboration", UVM_LOW);
     endfunction

     function void start_of_simulation();
         uvm_report_info(get_full_name(),"Start_of_simulation", UVM_LOW);
     endfunction

     task run();
         uvm_report_info(get_full_name(),"Run", UVM_LOW);
     endtask

     function void extract();
         uvm_report_info(get_full_name(),"Extract", UVM_LOW);
     endfunction

     function void check();
         uvm_report_info(get_full_name(),"Check", UVM_LOW);
     endfunction

     function void report();
         uvm_report_info(get_full_name(),"Report", UVM_LOW);
     endfunction

endclass