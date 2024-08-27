//--------------------------------------------------------------------------
//                            UVM Lab
//                         openedf.com
//                     Copyright 2023-2024
//
//                     makermuyi@gmail.com
//
//                       License: BSD
//--------------------------------------------------------------------------
//
// Copyright (c) 2020-2021, openedf.com
// All rights reserved.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR BE
// LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
// CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
// BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
// LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
// THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
// SUCH DAMAGE.

//--------------------------------------------------------------------------
// Designer: macro
// Brief: The test is at the top of the hierarchical component that initiates
//        the environment component construction
// Change Log:
//--------------------------------------------------------------------------
`ifndef _AHB_LITE_TEST_SV_
`define _AHB_LITE_TEST_SV_

//--------------------------------------------------------------------------
// Include File
//--------------------------------------------------------------------------
`include "ahb_type.svh"
//--------------------------------------------------------------------------
// Class
//--------------------------------------------------------------------------
class ahb_lite_test extends uvm_test;

//--------------------------------------------------------------------------
// Design: declare and register
//--------------------------------------------------------------------------
ahb_lite_env      ahb_env;
ahb_mst_base_seq  mst_seq;
`uvm_component_utils(ahb_lite_test)

//--------------------------------------------------------------------------
// Design: declare method
//--------------------------------------------------------------------------
extern function new(string name = "ahb_lite_test", uvm_component parent = null);
extern function void build_phase(uvm_phase phase);
extern function void connect_phase(uvm_phase phase);
extern task pre_reset_phase(uvm_phase phase);
extern task reset_phase(uvm_phase phase);
extern task post_reset_phase(uvm_phase phase);
extern task pre_configure_phase(uvm_phase phase);
extern task configure_phase(uvm_phase phase);
extern task post_configure_phase(uvm_phase phase);
extern task pre_mian_phase(uvm_phase phase);
extern task main_phase(uvm_phase phase);
extern task post_main_phase(uvm_phase phase);
extern task pre_shutdown_phase(uvm_phase phase);
extern task shutdown_phase(uvm_phase phase);
extern task post_shutdown_phase(uvm_phase phase);
extern task run_phase(uvm_phase phase);
extern function void end_of_elaboration_phase(uvm_phase phase);
extern function void start_of_simulation_phase(uvm_phase phase);
extern function void extract_phase(uvm_phase phase);
extern function void check_phase(uvm_phase phase);
extern function void report_phase(uvm_phase phase);
extern function void final_phase(uvm_phase phase);

endclass: ahb_lite_test
//--------------------------------------------------------------------------
// Design: new
//--------------------------------------------------------------------------
function ahb_lite_test::new(string name = "ahb_lite_test", uvm_component parent = null);
    super.new(name, parent);
endfunction

//--------------------------------------------------------------------------
// Design: build phase: create and configure of testbench structure
//--------------------------------------------------------------------------
function void ahb_lite_test::build_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "IN build_phase...", UVM_LOW);
    super.build_phase(phase);
    ahb_env = ahb_lite_env::type_id::create("ahb_env", this);
    mst_seq = ahb_mst_base_seq::type_id::create("mst_seq");
endfunction

//--------------------------------------------------------------------------
// Design: connect phase
//--------------------------------------------------------------------------
function void ahb_lite_test::connect_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "IN connect_phase...", UVM_LOW);
endfunction

//--------------------------------------------------------------------------
// Design: Before reset is asserted.
//--------------------------------------------------------------------------
task ahb_lite_test::pre_reset_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "IN pre_reset_phase...", UVM_LOW);
endtask

//--------------------------------------------------------------------------
// Design: Reset DUT/De-assert control signals
//--------------------------------------------------------------------------
task ahb_lite_test::reset_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "IN reset_phase...", UVM_LOW);
endtask

//--------------------------------------------------------------------------
// Design: Wait for DUT to be at a known state
//--------------------------------------------------------------------------
task ahb_lite_test::post_reset_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "IN post_reset_phase...", UVM_LOW);
endtask

//--------------------------------------------------------------------------
// Design: Setup/Wait for conditions to configure DUT
//--------------------------------------------------------------------------
task ahb_lite_test::pre_configure_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "IN pre_configure_phase...", UVM_LOW);
endtask

//--------------------------------------------------------------------------
// Design: Configure the DUT
//--------------------------------------------------------------------------
task ahb_lite_test::configure_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "IN configure_phase...", UVM_LOW);
endtask

//--------------------------------------------------------------------------
// Design: Wait for DUT to be at a known configured state
//--------------------------------------------------------------------------
task ahb_lite_test::post_configure_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "IN post_configure_phase...", UVM_LOW);
endtask

//--------------------------------------------------------------------------
// Design: Setup/Wait for conditions to start testing DUT
//--------------------------------------------------------------------------
task ahb_lite_test::pre_mian_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "IN pre_configure_phase...", UVM_LOW);
endtask

//--------------------------------------------------------------------------
// Design: Test DUT
//--------------------------------------------------------------------------
task ahb_lite_test::main_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "IN main_phase...", UVM_LOW);
endtask

//--------------------------------------------------------------------------
// Design: Typically a no-op
//--------------------------------------------------------------------------
task ahb_lite_test::post_main_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "IN post_main_phase...", UVM_LOW);
endtask

//--------------------------------------------------------------------------
// Design: Typically a no-op
//--------------------------------------------------------------------------
task ahb_lite_test::pre_shutdown_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "IN pre_shutdown_phase...", UVM_LOW);
endtask

//--------------------------------------------------------------------------
// Design: Wait for data in DUT to be drained
//--------------------------------------------------------------------------
task ahb_lite_test::shutdown_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "IN main_phase...", UVM_LOW);
endtask

//--------------------------------------------------------------------------
// Design: Perform final checks that consume simulation time
//--------------------------------------------------------------------------
task ahb_lite_test::post_shutdown_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "IN post_shutdown_phase...", UVM_LOW);
endtask

//--------------------------------------------------------------------------
// Design: run phase: stmulate the DUT
//--------------------------------------------------------------------------
task ahb_lite_test::run_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "IN run_phase...", UVM_LOW);
    phase.raise_objection(this);

    repeat(1) begin
        /* Executes this sequence, returning when the sequence has completed  */
        /* isr sequence */

        /* main sequence */
        #10;
        mst_seq.start(ahb_env.mst_agt.mst_seqr);
    end

    /* The drop is expected to be matched with an earlier raise */
    phase.drop_objection(this);
    `uvm_info(get_type_name(), "end of testcase", UVM_LOW);
endtask

//--------------------------------------------------------------------------
// Design: end of elaboration phase
//--------------------------------------------------------------------------
function void ahb_lite_test::end_of_elaboration_phase(uvm_phase phase);
    /* show uvm class arch */
    `uvm_info(get_type_name(), "IN end_of_elaboration_phase...", UVM_LOW);
    //print();
endfunction

//--------------------------------------------------------------------------
// Design: Get ready for DUT to be simulated
//--------------------------------------------------------------------------
function void ahb_lite_test::start_of_simulation_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "IN start_of_simulation_phase..", UVM_LOW);
    /* display environment topology */
    uvm_root::get().print_topology(uvm_default_table_printer);
endfunction

//--------------------------------------------------------------------------
// Design: Extract data from different points of the verification environment
//--------------------------------------------------------------------------
function void ahb_lite_test::extract_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "IN extract_phase...", UVM_LOW);
endfunction

//--------------------------------------------------------------------------
// Design: Check for any unexpected conditions in the verification environment
//--------------------------------------------------------------------------
function void ahb_lite_test::check_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "IN check_phase...", UVM_LOW);
endfunction

//--------------------------------------------------------------------------
// Design: Report results of the test.
//--------------------------------------------------------------------------
function void ahb_lite_test::report_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "IN report_phase...", UVM_LOW);
endfunction

//--------------------------------------------------------------------------
// Design: Tie up loose ends.
//--------------------------------------------------------------------------
function void ahb_lite_test::final_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "IN final_phase...", UVM_LOW);
endfunction

`endif /*_AHB_LITE_TEST_SV_ */
//--------------------------------------------------------------------------
