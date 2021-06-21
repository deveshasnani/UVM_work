shows execution of various uvm phases in sequence

output of simulator
UVM_INFO verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(277) @ 0: reporter [Questa UVM] QUESTA_UVM-1.2.3
# UVM_INFO verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(278) @ 0: reporter [Questa UVM]  questa_uvm::init(+struct)
# UVM_INFO @ 0: reporter [RNTST] Running test ram_wr_test...
# UVM_INFO ram_wr_test.sv(11) @ 0: uvm_test_top [RAM_WR_TEST] build phase is executing
# UVM_INFO ram_wr_agt_top.sv(11) @ 0: uvm_test_top.ram_env [RAM_AGT_TOP] build phase is executing
# UVM_INFO ram_wr_agent.sv(14) @ 0: uvm_test_top.ram_env.wr_agt [RAM_AGENT] build phase running
# UVM_INFO ram_wr_driver.sv(10) @ 0: uvm_test_top.ram_env.wr_agt.drvr [RAM_WR_DRIVER] build phase is executing
# UVM_INFO ram_wr_driver.sv(15) @ 0: uvm_test_top.ram_env.wr_agt.drvr [RAM_WR_DRIVER] connect phase is executing
# UVM_INFO ram_wr_agent.sv(19) @ 0: uvm_test_top.ram_env.wr_agt [RAM_AGENT] connect phase is executing
# UVM_INFO ram_wr_agt_top.sv(17) @ 0: uvm_test_top.ram_env [RAM_AGT_TOP] connect phase is executing
# UVM_INFO ram_wr_test.sv(17) @ 0: uvm_test_top [RAM_WR_TEST] connect phase is executing
# UVM_INFO ram_wr_driver.sv(20) @ 0: uvm_test_top.ram_env.wr_agt.drvr [RAM_WR_DRIVER] end of elaboration phase is executing
# UVM_INFO ram_wr_agent.sv(24) @ 0: uvm_test_top.ram_env.wr_agt [RAM_AGENT] end of elaboration phase is executing
# UVM_INFO ram_wr_agt_top.sv(22) @ 0: uvm_test_top.ram_env [RAM_AGT_TOP] end of elaboration phase is executing
# UVM_INFO ram_wr_test.sv(22) @ 0: uvm_test_top [RAM_WR_TEST] end of elaboration phase is executing
# UVM_INFO ram_wr_driver.sv(25) @ 0: uvm_test_top.ram_env.wr_agt.drvr [RAM_WR_DRIVER] start of simulation phase is executing
# UVM_INFO ram_wr_agent.sv(29) @ 0: uvm_test_top.ram_env.wr_agt [RAM_AGENT] start of simulation phase is executing
# UVM_INFO ram_wr_agt_top.sv(27) @ 0: uvm_test_top.ram_env [RAM_AGT_TOP] start of simulation phase is executing
# UVM_INFO ram_wr_test.sv(27) @ 0: uvm_test_top [RAM_WR_TEST] start of simulation phase is executing
# UVM_INFO ram_wr_driver.sv(32) @ 10: uvm_test_top.ram_env.wr_agt.drvr [RAM_WR_DRIVER] RUN phase is executing
# UVM_INFO ram_wr_test.sv(34) @ 15: uvm_test_top [RAM_WR_TEST] RUN phase is executing
# UVM_INFO ram_wr_agent.sv(36) @ 40: uvm_test_top.ram_env.wr_agt [RAM_AGENT] RUN phase is executing
# UVM_INFO ram_wr_agt_top.sv(34) @ 50: uvm_test_top.ram_env [RAM_AGT_TOP] RUN phase is executing
# UVM_INFO verilog_src/uvm-1.2/src/base/uvm_objection.svh(1270) @ 95: reporter [TEST_DONE] 'run' phase is ready to proceed to the 'extract' phase
# UVM_INFO ram_wr_driver.sv(39) @ 95: uvm_test_top.ram_env.wr_agt.drvr [RAM_WR_DRIVER] extract phase is executing
# UVM_INFO ram_wr_agent.sv(43) @ 95: uvm_test_top.ram_env.wr_agt [RAM_AGENT] extract phase is executing
# UVM_INFO ram_wr_agt_top.sv(41) @ 95: uvm_test_top.ram_env [RAM_AGT_TOP] extract phase is executing
# UVM_INFO ram_wr_test.sv(41) @ 95: uvm_test_top [RAM_WR_TEST] extract phase is executing
# UVM_INFO ram_wr_driver.sv(49) @ 95: uvm_test_top.ram_env.wr_agt.drvr [RAM_WR_DRIVER] check phase is executing
# UVM_INFO ram_wr_agent.sv(53) @ 95: uvm_test_top.ram_env.wr_agt [RAM_AGENT] check phase is executing
# UVM_INFO ram_wr_agt_top.sv(51) @ 95: uvm_test_top.ram_env [RAM_AGT_TOP] check phase is executing
# UVM_INFO ram_wr_test.sv(51) @ 95: uvm_test_top [RAM_WR_TEST] check phase is executing
# UVM_INFO ram_wr_driver.sv(44) @ 95: uvm_test_top.ram_env.wr_agt.drvr [RAM_WR_DRIVER] report phase is executing
# UVM_INFO ram_wr_agent.sv(48) @ 95: uvm_test_top.ram_env.wr_agt [RAM_AGENT] report phase is executing
# UVM_INFO ram_wr_agt_top.sv(46) @ 95: uvm_test_top.ram_env [RAM_AGT_TOP] report phase is executing
# UVM_INFO ram_wr_test.sv(46) @ 95: uvm_test_top [RAM_WR_TEST] report phase is executing
# UVM_INFO verilog_src/uvm-1.2/src/base/uvm_report_server.svh(847) @ 95: reporter [UVM/REPORT/SERVER] 
# --- UVM Report Summary ---
# 
# ** Report counts by severity
# UVM_INFO :   37
# UVM_WARNING :    0
# UVM_ERROR :    0
# UVM_FATAL :    0
# ** Report counts by id
# [Questa UVM]     2
# [RAM_AGENT]     8
# [RAM_AGT_TOP]     8
# [RAM_WR_DRIVER]     8
# [RAM_WR_TEST]     8
# [RNTST]     1
# [TEST_DONE]     1
# [UVM/RELNOTES]     1
# 
# ** Note: $finish    : /usr/share/questa/questasim/linux_x86_64/../verilog_src/uvm-1.2/src/base/uvm_root.svh(517)
#    Time: 95 ns  Iteration: 68  Instance: /top
# End time: 06:55:39 on Jun 21,2021, Elapsed time: 0:00:07