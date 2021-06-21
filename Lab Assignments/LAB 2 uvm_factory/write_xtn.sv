class write_xtn extends uvm_sequence_item;
 
  
  rand bit [`RAM_WIDTH -1:0] data;
  rand bit [`ADDR_SIZE -1:0] address;
  rand bit write ;
  
  // control Knobs
  typedef enum {GOOD_XTN,BAD_XTN} addr_t; 
  rand int xtn_delay;
  rand addr_t xtn_type;
  
  // constraints
  constraint data_valid {(data > 20 && data < 90);}
  constraint address_valid {(address >0 && address < 200);}
  constraint xtn_type_dist {xtn_type dist{GOOD_XTN := 30 , BAD_XTN := 2};}
  // constructor
  
  `uvm_object_utils_begin(write_xtn)
  `uvm_field_int(data, UVM_ALL_ON|UVM_NOPACK)
  `uvm_field_int(address, UVM_ALL_ON|UVM_NOPACK)
  `uvm_field_int(write, UVM_ALL_ON|UVM_NOPACK)
  `uvm_field_int(xtn_delay, UVM_ALL_ON|UVM_NOPACK)
  `uvm_field_enum(addr_t,xtn_type, UVM_ALL_ON|UVM_NOPACK)
  `uvm_object_utils_end
  
  function new(string name = "write_xtn");
    super.new(name);  
  endfunction
  
  //object methods defined by user
  function void do_copy(uvm_object rhs); 
 write_xtn xtn ;
    if(! $cast(xtn , rhs))begin
      `uvm_fatal("do_copy","casting failed");
    end
       super.do_copy(rhs);
  // now copying xtn values to class data members
    $display("my do_copy task");
      data = xtn.data;
       address = xtn.address;
       write = xtn.write;
       xtn_delay = xtn.xtn_delay;
       xtn_type = xtn.xtn_type;
       
  endfunction
   
     
 
       function bit do_compare(uvm_object rhs, uvm_comparer comparer = null);
    write_xtn xtn;
         if(! $cast(xtn,rhs))begin
           `uvm_fatal("do_compare","casting failed");
           return 0;
           end
         $display("my do_compare task");
         return super.do_compare(rhs,comparer) && this.data == xtn.data && this.address == xtn.address && this.write == xtn.write && this.xtn_delay == xtn_delay;
         
       endfunction
  
endclass