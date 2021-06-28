interface ram_if(input clk);
logic s1;
logic s2;  
  modport WDR_MP(
    input  s1,
    input  s2
  );
  modport WMON_MP( output  s1
                  
  );
  
  
endinterface