//--------------------------------------------------------------------------
//                         RISC-V Core
//                            V1.0.0
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
// Brief: a practical guide for systemverilog asserations example and learning
// Change Log:
//--------------------------------------------------------------------------

//--------------------------------------------------------------------------
// Include File
//--------------------------------------------------------------------------

//--------------------------------------------------------------------------
// Interface
//--------------------------------------------------------------------------
interface test_intf(input logic clk, rst_n);
//--------------------------------------------------------------------------
// Port
//--------------------------------------------------------------------------
logic [4:0] a_in;
logic [4:0] b_in;
logic [4:0] c_ou;
logic [4:0] d_ou;

//--------------------------------------------------------------------------
// modport: define modport for dut
//--------------------------------------------------------------------------
modport dut_intf(
    input  clk,
    input  rst_n,
    input  a_in,
    input  b_in,

    output c_ou,
    output d_ou
);

//--------------------------------------------------------------------------
// modport: define modport for coverage group
//--------------------------------------------------------------------------
modport cover_intf(
    input  clk,
    input  rst_n,

    input  b_in,
    input  c_ou,
    input  d_ou
);

endinterface
//--------------------------------------------------------------------------
