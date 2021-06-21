class short_xtn extends write_xtn;
  `uvm_object_utils(short_xtn)
  
  constraint address_limit {(address[11:4] == 0) ;}
  
  // constructor
  function new( string name = "short_xtn");
    super.new(name);
  endfunction
endclass