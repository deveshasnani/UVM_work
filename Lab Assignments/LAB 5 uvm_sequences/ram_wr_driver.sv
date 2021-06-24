class ram_wr_driver extends uvm_driver #(write_xtn);
  `uvm_component_utils(ram_wr_driver)
  write_xtn req;
  function new( string name = "ram_wr_driver",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  task run();
    forever begin
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