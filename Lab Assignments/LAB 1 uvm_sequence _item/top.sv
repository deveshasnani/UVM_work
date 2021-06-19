
`include "ram_pkg.sv"
//import ram_pkg::*;
module top;
  
  write_xtn t1,t2,t3;
  write_xtn  txn_array [9:0];
  write_xtn wr_clone_xtnh;
  initial 
    begin
      t1=new();
      for(int i =0 ; i <10 ; i ++)begin
      //  t1 = write_xtn::type_id::create("txn_array","top");
        txn_array[i] = new();
      // txn_array[i] = write_xtn::type_id::create("txn_array","top"); 
         txn_array[i].randomize();
       // if(i%1==0)txn_array[i].print(uvm_default_tree_printer);
        //else txn_array[i].print(uvm_default_table_printer);
      end
      
      for(int j =0 ; j <10 ; j ++)begin
         
     //   txn_array[j].print(uvm_default_line_printer);
      end
      
      txn_array[3].print();
      txn_array[5].print();
      
      ///// copy and compare element 5 to 3 and compare
      
      txn_array[3].copy(txn_array[5]);
    //      txn_array[5].randomize; // to check if compare working corrrectly
    //   txn_array[3].print();
    //  txn_array[5].print();
      
      if(txn_array[3].compare(txn_array[5])) begin
        `uvm_info("comparison","objects match",UVM_LOW)
      end
      else begin
        `uvm_info("comparison","objects do not match",UVM_LOW)
      end
//// clone task
      $display(" Cloning ------------------------------");
      txn_array[8].print();
      $cast(wr_clone_xtnh , txn_array[8].clone());
      $display(" AFTER $Cast Cloning ------------------------------");
      wr_clone_xtnh.print();
end

endmodule
