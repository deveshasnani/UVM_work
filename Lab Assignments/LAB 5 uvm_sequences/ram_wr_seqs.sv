class ram_wbase_seq extends uvm_sequence  #(write_xtn);
  `uvm_object_utils(ram_wbase_seq)
  
  function new(string name = "ram_wr_seqs");
    super.new(name);
  endfunction
endclass
//////////////////////////////////////////////////////////////////////////////////////////////
class ram_rand_wr_xtns extends ram_wbase_seq ;// ram_wbase_seq ;
  `uvm_object_utils(ram_rand_wr_xtns)
  
  function new(string name = "ram_rand_wr_xtns");//ram_rand_wr_xtns
    super.new(name);
  endfunction
  
  task body();
    // send 10 transactions
    repeat(10) begin
    $display("send transaction");
    req = write_xtn::type_id::create("req");
    start_item(req);
    assert(req.randomize());
    finish_item(req);
    end
  endtask
  endclass
  //////////////////////////////////////////////////////////////////////////////////////////////
  class ram_single_addr_wr_xtns extends ram_wbase_seq ;
    `uvm_object_utils(ram_single_addr_wr_xtns)
  
    function new(string name = "ram_single_addr_wr_xtns");
    super.new(name);
  endfunction
  
  task body();
    // send 10 transactions
    repeat(10) begin
      $display("address fixed 55");
    req = write_xtn::type_id::create("req");
      
    start_item(req);
      assert(req.randomize() with {address == 55;})// inline constraints
    finish_item(req);
    end
  endtask
    endclass
  //////////////////////////////////////////////////////////////////////////////////////////////
    
     class ram_ten_wr_xtns extends ram_wbase_seq ;
    `uvm_object_utils(ram_ten_wr_xtns)
  
    function new(string name = "ram_ten_wr_xtns");
    super.new(name);
  endfunction
  
  task body();
    // send 10 transactions
    int i = 0;
    repeat(10) begin
      $display("ten consecutive address writes 0-9");
    req = write_xtn::type_id::create("req");
      
    start_item(req);
      assert(req.randomize() with {address ==i ;})/// inline constraints
      i++ ;
    finish_item(req);
    end
  endtask
       endclass
   //////////////////////////////////////////////////////////////////////////////////////////////
       
         class ram_odd_wr_xtns extends ram_wbase_seq ;
    `uvm_object_utils(ram_odd_wr_xtns)
  
    function new(string name = "ram_odd_wr_xtns");
    super.new(name);
  endfunction
  
  task body();
    // send 10 transactions
    
    repeat(10) begin
      $display("ten odd address writes");
    req = write_xtn::type_id::create("req");
      
    start_item(req);
      assert(req.randomize() with {(address %2)==1 ;})/// inline constraints
      finish_item(req);
    end
  endtask
           endclass
  //////////////////////////////////////////////////////////////////////////////////////////////   
    class ram_even_wr_xtns extends ram_wbase_seq ;
    `uvm_object_utils(ram_even_wr_xtns)
  
    function new(string name = "ram_even_wr_xtns");
    super.new(name);
  endfunction
  
  task body();
    // send 10 transactions
    
    repeat(10) begin
      $display("ten even address writes");
    req = write_xtn::type_id::create("req");
      
    start_item(req);
      assert(req.randomize() with {(address %2)==0 ;})/// inline constraints
      finish_item(req);
    end
  endtask
  //////////////////////////////////////////////////////////////////////////////////////////////   
           
endclass