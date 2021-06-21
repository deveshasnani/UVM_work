`include "ram_pkg.sv"
module top;
  write_xtn wxtn;
  function void build();
    
    wxtn =  write_xtn::type_id::create("wxtn"); 
    $display("write_xtn object created by factory");
    wxtn.randomize;
    $display("write_xtn object randomized");
    
    wxtn.print(uvm_default_line_printer);
  endfunction
  
  initial
    begin
      //without override
      repeat(5) build();
      
      
      // with override
      write_xtn::type_id::set_type_override(short_xtn::get_type(), 1);
      
      repeat(5) build();
      
    end
endmodule