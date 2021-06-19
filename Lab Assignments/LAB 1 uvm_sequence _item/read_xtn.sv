class read_xtn extends uvm_sequence_item;
 
   rand bit [`RAM_WIDTH -1:0] data;
  rand bit [`ADDR_SIZE -1:0] address;
  rand bit read ;
  
  // control Knobs
  typedef enum logic [1:0] {GOOD_XTN,BAD_XTN} addr_t; 
  rand int xtn_delay;
  rand addr_t xtn_type;
  
  // constraints
  constraint data_valid {(data > 20 && data < 90);}
  constraint address_valid {(address >0 && address < 200);}
  constraint xtn_type_dist {xtn_type dist{GOOD_XTN := 30 , BAD_XTN := 2};}
  // constructor
  `uvm_object_utils_begin(read_xtn)
  `uvm_field_int(data, UVM_ALL_ON|UVM_NOPACK)
  `uvm_field_int(address, UVM_ALL_ON|UVM_NOPACK)
  `uvm_field_int(read, UVM_ALL_ON|UVM_NOPACK)
  `uvm_field_int(xtn_delay, UVM_ALL_ON|UVM_NOPACK)
  `uvm_field_enum(addr_t,xtn_type, UVM_ALL_ON|UVM_NOPACK)
  `uvm_object_utils_end
  
  function new(string name = "read_xtn");
    super.new(name);  
  endfunction
  
  
  //object methods defined by user
  function void do_copy(uvm_object rhs);
    
read_xtn xtn ;
    if(! $cast(xtn , rhs))begin
      `uvm_fatal("do_copy","casting failed");
    end
       super.do_copy(rhs);
  // now copying xtn values to class data members
      data = xtn.data;
       address = xtn.address;
       read = xtn.read;
       xtn_delay = xtn.xtn_delay;
       xtn_type = xtn.xtn_type;
       
  endfunction
  
       function  bit do_compare(uvm_object rhs, uvm_comparer comparer = null);
    read_xtn xtn;
         if(! $cast(xtn,rhs))begin
           `uvm_fatal("do_compare","casting failed");
           return 0;
           end
         return super.do_compare(rhs,comparer) && this.data == xtn.data && this.address == xtn.address && this.read == xtn.read && this.xtn_delay == xtn_delay;
         
       endfunction
  
  
endclass