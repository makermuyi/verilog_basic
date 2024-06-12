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
// Brief: uvm sequence item example
// Change Log:
//--------------------------------------------------------------------------

//--------------------------------------------------------------------------
// Include File
//--------------------------------------------------------------------------

//--------------------------------------------------------------------------
// Class
//--------------------------------------------------------------------------
class ahb_mst_transaction extends uvm_sequence_item;

//--------------------------------------------------------------------------
// Design: control signal
//--------------------------------------------------------------------------
bit               HRESETn;
rand bit [31:0]   HADDR[];
rand bit hburst_e HBURST;
rand bit          HMASTLOCK;
rand bit hport_e  HPORT;
rand bit hsize_e  HSZIE;
rand bit htrans_e HTRANS;
rand bit [31:0]   HWDATA[];
rand bit          HWRITE;
bit      [31:0]   HRADTA[];
bit      hready_e HREADY;
bit      hresp_e  HRESP;

//--------------------------------------------------------------------------
// Design: utility and field macros
//--------------------------------------------------------------------------
`uvm_object_utils_begin(ahb_mst_transaction)
    `uvm_field_int(HRESETn, UVM_ALL_ON)
    `uvm_field_array_int(HADDR, UVM_ALL_ON)
    `uvm_field_enum(burst_e,HBURST, UVM_ALL_ON)
    `uvm_field_int(HMASTLOCK, UVM_ALL_ON)
    `uvm_field_int(HPROT, UVM_ALL_ON)
    `uvm_field_enum(hsize_e, HSIZE, UVM_ALL_ON)
    `uvm_field_array_enum(htrans_e, HTRANS, UVM_ALL_ON)
    `uvm_field_array_int(HWDATA, UVM_ALL_ON)
    `uvm_field_enum(rw_e, HWRITE, UVM_ALL_ON)
    `uvm_field_array_int(HRDATA, UVM_ALL_ON)
    `uvm_field_enum(hready_e,  HREADY, UVM_ALL_ON)
    `uvm_field_enum(hresp_e, HRESP, UVM_ALL_ON)
`uvm_object_utils_end

//--------------------------------------------------------------------------
// Design: new
//--------------------------------------------------------------------------
function new(string name = "ahb_mst_transaction");
    super.new(name);
endfunction

//--------------------------------------------------------------------------
// Design: constructor
//--------------------------------------------------------------------------

endclass: ahb_mst_transaction 
//--------------------------------------------z-----------------------------
