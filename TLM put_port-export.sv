module uvmtest;
   import uvm_pkg::*;
  
  class producer extends uvm_component;
    uvm_blocking_put_port #(int) put_port;
    
    function new(string name, uvm_component p = null);
      super.new(name,p);
      put_port = new("put_port", this);
      
    endfunction
    
    task run_phase(uvm_phase phase);
      int x;
      $display("producer run phase");
      repeat(5)begin
        
        x = $random;
        put_port.put(x);
        $display("producer data sent = %d",x);
      end
    endtask
    
  endclass
  
  
  class consumer extends uvm_component;
    uvm_blocking_put_imp #(int,consumer) put_export;
    
    function new(string name, uvm_component p = null);
      super.new(name,p);
      put_export = new("put_port", this);
      
    endfunction
    
    task put(int x);
      $display("rx data at consumer = %d",x);
    endtask
   
    
  endclass
  
  class myenv extends uvm_env;
    producer p;
    consumer c;
    
    function new(string name = "env");
      super.new(name);
      p = new("producer", this);
      c = new("consumer", this);
      $display("evn new fn");
    endfunction
    
     function void connect_phase(uvm_phase phase);
       p.put_port.connect(c.put_export);
      
    endfunction
    
      
    task run_phase(uvm_phase phase);
      phase.raise_objection(this);
      #1000;
      phase.drop_objection(this);
    endtask
      
   
    
    
  endclass
  
  myenv e;
  
  initial begin
    e = new();
    run_test();
    //$finish;
  end
  
  
  
  
endmodule
