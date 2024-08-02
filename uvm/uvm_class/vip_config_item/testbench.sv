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
// Brief: uvm sequence test
// Change Log:
//--------------------------------------------------------------------------

//--------------------------------------------------------------------------
// Include File
//--------------------------------------------------------------------------
`timescale 1ns/1ps
`include "uvm_macros.svh"

import uvm_pkg::*;
`include "sequence_item_config.sv"
`include "cust_sequence_item_config.sv"

//--------------------------------------------------------------------------
// Module
//--------------------------------------------------------------------------
module testebench;
//--------------------------------------------------------------------------
// Design: instance
//--------------------------------------------------------------------------
cust_sequence_item_config cust_cfg;
sequence_item_config base_cfg;

//--------------------------------------------------------------------------
// Design: initial and run
//--------------------------------------------------------------------------
initial begin
    /* log output */
    `uvm_info("TEST", "item config test!", UVM_LOW);
    cust_cfg =new();
    base_cfg = cust_cfg;
    //$cast(base_cfg, cust_cfg);

    /* printing the seq_item */
    base_cfg.print();

end

endmodule