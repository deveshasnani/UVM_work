class ram_wr_seqs extends uvm_sequence  #(write_xtn);
  `uvm_object_utils(ram_wr_seqs)
  
  function new(string name = "ram_wr_seqs");
    super.new(name);
  endfunction
endclass

class ram_rand_wr_xtns extends ram_wr_seqs ;// ram_wbase_seq ;
  `uvm_object_utils(ram_rand_wr_xtns)
  
  function new(string name = "ram_wr_seqs");//ram_rand_wr_xtns
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