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
// Brief: The UVM subscriber provides an analysis export for receiving
//        transactions form a connected analysis export.
// Change Log:
//--------------------------------------------------------------------------
`ifndef _AHB_LITE_SYSTEM_CONFIG_SV_
`define _AHB_LITE_SYSTEM_CONFIG_SV_

//--------------------------------------------------------------------------
// Include File
//--------------------------------------------------------------------------

//--------------------------------------------------------------------------
// Class
//--------------------------------------------------------------------------
class ahb_lite_system_config extends uvm_object;

//--------------------------------------------------------------------------
// Design: system config variable
//--------------------------------------------------------------------------
virtual ahb_mst_intf ahb_lite_vif;
uvm_active_passive_enum active = UVM_ACTIVE;
bit has_functional_coverage = 0;
bit has_scoreboard = 0;
int test_var = 0;

//--------------------------------------------------------------------------
// Design: declare and register
//--------------------------------------------------------------------------
`uvm_object_utils_begin(ahb_lite_system_config)
    `uvm_field_enum(uvm_active_passive_enum, active, UVM_ALL_ON)
    `uvm_field_int(has_functional_coverage, UVM_ALL_ON)
    `uvm_field_int(has_scoreboard, UVM_ALL_ON)
    `uvm_field_int(test_var, UVM_ALL_ON | UVM_DEC)
`uvm_object_utils_end

//--------------------------------------------------------------------------
// Design: declare method
//--------------------------------------------------------------------------
extern function new(string name = "ahb_lite_system_config");

endclass: ahb_lite_system_config

//--------------------------------------------------------------------------
// Design: new
//--------------------------------------------------------------------------
function ahb_lite_system_config::new(string name = "ahb_lite_system_config");
    super.new(name);
endfunction

`endif /* _AHB_LITE_SYSTEM_CONFIG_SV_ */
//--------------------------------------------------------------------------
