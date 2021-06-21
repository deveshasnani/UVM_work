`include "uvm_macros.svh"
import uvm_pkg::*;


`define RAM_WIDTH  12
`define ADDR_SIZE  12

`include "ram_wr_driver.sv"
`include "ram_wr_agent.sv"
`include "ram_wr_agt_top.sv"
//`include "tb_defs.sv"
`include "write_xtn.sv"
`include "ram_wr_test.sv"

