// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Dec 19 19:09:06 2025
// Host        : Kaustubh-Galaxy-Book running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/vivado_project/ddhdl_projects/soda_dispenser_machine/soda_dispenser_machine.sim/sim_1/synth/func/xsim/tb_soda_dispenser_machine_func_synth.v
// Design      : soda_dispense_machine
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module adder
   (D,
    Q,
    S,
    a_IBUF);
  output [7:0]D;
  input [6:0]Q;
  input [3:0]S;
  input [3:0]a_IBUF;

  wire [7:0]D;
  wire [6:0]Q;
  wire [3:0]S;
  wire [3:0]a_IBUF;
  wire d_out_carry__0_n_1;
  wire d_out_carry__0_n_2;
  wire d_out_carry__0_n_3;
  wire d_out_carry_i_1_n_0;
  wire d_out_carry_i_2_n_0;
  wire d_out_carry_i_3_n_0;
  wire d_out_carry_i_4_n_0;
  wire d_out_carry_n_0;
  wire d_out_carry_n_1;
  wire d_out_carry_n_2;
  wire d_out_carry_n_3;
  wire [3:3]NLW_d_out_carry__0_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 d_out_carry
       (.CI(1'b0),
        .CO({d_out_carry_n_0,d_out_carry_n_1,d_out_carry_n_2,d_out_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(D[3:0]),
        .S({d_out_carry_i_1_n_0,d_out_carry_i_2_n_0,d_out_carry_i_3_n_0,d_out_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 d_out_carry__0
       (.CI(d_out_carry_n_0),
        .CO({NLW_d_out_carry__0_CO_UNCONNECTED[3],d_out_carry__0_n_1,d_out_carry__0_n_2,d_out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O(D[7:4]),
        .S(S));
  LUT2 #(
    .INIT(4'h6)) 
    d_out_carry_i_1
       (.I0(Q[3]),
        .I1(a_IBUF[3]),
        .O(d_out_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    d_out_carry_i_2
       (.I0(Q[2]),
        .I1(a_IBUF[2]),
        .O(d_out_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    d_out_carry_i_3
       (.I0(Q[1]),
        .I1(a_IBUF[1]),
        .O(d_out_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    d_out_carry_i_4
       (.I0(Q[0]),
        .I1(a_IBUF[0]),
        .O(d_out_carry_i_4_n_0));
endmodule

module comparator
   (CO,
    DI,
    S);
  output [0:0]CO;
  input [3:0]DI;
  input [3:0]S;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [3:0]S;
  wire tot_lts_carry_n_1;
  wire tot_lts_carry_n_2;
  wire tot_lts_carry_n_3;
  wire [3:0]NLW_tot_lts_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 tot_lts_carry
       (.CI(1'b0),
        .CO({CO,tot_lts_carry_n_1,tot_lts_carry_n_2,tot_lts_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_tot_lts_carry_O_UNCONNECTED[3:0]),
        .S(S));
endmodule

module datapath_sdm
   (d_OBUF,
    a_IBUF,
    c_IBUF,
    s_IBUF);
  output d_OBUF;
  input [7:0]a_IBUF;
  input c_IBUF;
  input [7:0]s_IBUF;

  wire [7:0]a_IBUF;
  wire [7:0]add_ret;
  wire c_IBUF;
  wire d_OBUF;
  wire d_OBUF_inst_i_2_n_0;
  wire d_out_carry__0_i_1_n_0;
  wire d_out_carry__0_i_2_n_0;
  wire d_out_carry__0_i_3_n_0;
  wire d_out_carry__0_i_4_n_0;
  wire [1:0]\dut3/state ;
  wire [7:0]s_IBUF;
  wire sel;
  wire tot_ld;
  wire tot_lts_carry_i_1_n_0;
  wire tot_lts_carry_i_2_n_0;
  wire tot_lts_carry_i_3_n_0;
  wire tot_lts_carry_i_4_n_0;
  wire tot_lts_carry_i_5_n_0;
  wire tot_lts_carry_i_6_n_0;
  wire tot_lts_carry_i_7_n_0;
  wire tot_lts_carry_i_8_n_0;
  wire [7:0]total;

  LUT5 #(
    .INIT(32'h00000DDD)) 
    d_OBUF_inst_i_1
       (.I0(sel),
        .I1(c_IBUF),
        .I2(d_OBUF_inst_i_2_n_0),
        .I3(\dut3/state [0]),
        .I4(\dut3/state [1]),
        .O(d_OBUF));
  LUT5 #(
    .INIT(32'hFFFF0015)) 
    d_OBUF_inst_i_2
       (.I0(sel),
        .I1(d_OBUF_inst_i_2_n_0),
        .I2(\dut3/state [0]),
        .I3(\dut3/state [1]),
        .I4(c_IBUF),
        .O(d_OBUF_inst_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    d_OBUF_inst_i_3
       (.I0(\dut3/state [0]),
        .I1(d_OBUF_inst_i_2_n_0),
        .O(\dut3/state [0]));
  LUT5 #(
    .INIT(32'h15001515)) 
    d_OBUF_inst_i_4
       (.I0(\dut3/state [1]),
        .I1(\dut3/state [0]),
        .I2(d_OBUF_inst_i_2_n_0),
        .I3(c_IBUF),
        .I4(sel),
        .O(\dut3/state [1]));
  LUT2 #(
    .INIT(4'h6)) 
    d_out_carry__0_i_1
       (.I0(total[7]),
        .I1(a_IBUF[7]),
        .O(d_out_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    d_out_carry__0_i_2
       (.I0(total[6]),
        .I1(a_IBUF[6]),
        .O(d_out_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    d_out_carry__0_i_3
       (.I0(total[5]),
        .I1(a_IBUF[5]),
        .O(d_out_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    d_out_carry__0_i_4
       (.I0(total[4]),
        .I1(a_IBUF[4]),
        .O(d_out_carry__0_i_4_n_0));
  comparator dut0
       (.CO(sel),
        .DI({tot_lts_carry_i_1_n_0,tot_lts_carry_i_2_n_0,tot_lts_carry_i_3_n_0,tot_lts_carry_i_4_n_0}),
        .S({tot_lts_carry_i_5_n_0,tot_lts_carry_i_6_n_0,tot_lts_carry_i_7_n_0,tot_lts_carry_i_8_n_0}));
  adder dut1
       (.D(add_ret),
        .Q(total[6:0]),
        .S({d_out_carry__0_i_1_n_0,d_out_carry__0_i_2_n_0,d_out_carry__0_i_3_n_0,d_out_carry__0_i_4_n_0}),
        .a_IBUF(a_IBUF[3:0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    tot_lts_carry_i_1
       (.I0(s_IBUF[6]),
        .I1(total[6]),
        .I2(total[7]),
        .I3(s_IBUF[7]),
        .O(tot_lts_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    tot_lts_carry_i_2
       (.I0(s_IBUF[4]),
        .I1(total[4]),
        .I2(total[5]),
        .I3(s_IBUF[5]),
        .O(tot_lts_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    tot_lts_carry_i_3
       (.I0(s_IBUF[2]),
        .I1(total[2]),
        .I2(total[3]),
        .I3(s_IBUF[3]),
        .O(tot_lts_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    tot_lts_carry_i_4
       (.I0(s_IBUF[0]),
        .I1(total[0]),
        .I2(total[1]),
        .I3(s_IBUF[1]),
        .O(tot_lts_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tot_lts_carry_i_5
       (.I0(s_IBUF[6]),
        .I1(total[6]),
        .I2(s_IBUF[7]),
        .I3(total[7]),
        .O(tot_lts_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tot_lts_carry_i_6
       (.I0(s_IBUF[4]),
        .I1(total[4]),
        .I2(s_IBUF[5]),
        .I3(total[5]),
        .O(tot_lts_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tot_lts_carry_i_7
       (.I0(s_IBUF[2]),
        .I1(total[2]),
        .I2(s_IBUF[3]),
        .I3(total[3]),
        .O(tot_lts_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tot_lts_carry_i_8
       (.I0(s_IBUF[0]),
        .I1(total[0]),
        .I2(s_IBUF[1]),
        .I3(total[1]),
        .O(tot_lts_carry_i_8_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \total_reg[0] 
       (.CLR(tot_ld),
        .D(add_ret[0]),
        .G(1'b0),
        .GE(1'b1),
        .Q(total[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \total_reg[1] 
       (.CLR(tot_ld),
        .D(add_ret[1]),
        .G(1'b0),
        .GE(1'b1),
        .Q(total[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \total_reg[2] 
       (.CLR(tot_ld),
        .D(add_ret[2]),
        .G(1'b0),
        .GE(1'b1),
        .Q(total[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \total_reg[3] 
       (.CLR(tot_ld),
        .D(add_ret[3]),
        .G(1'b0),
        .GE(1'b1),
        .Q(total[3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \total_reg[4] 
       (.CLR(tot_ld),
        .D(add_ret[4]),
        .G(1'b0),
        .GE(1'b1),
        .Q(total[4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \total_reg[5] 
       (.CLR(tot_ld),
        .D(add_ret[5]),
        .G(1'b0),
        .GE(1'b1),
        .Q(total[5]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \total_reg[6] 
       (.CLR(tot_ld),
        .D(add_ret[6]),
        .G(1'b0),
        .GE(1'b1),
        .Q(total[6]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \total_reg[7] 
       (.CLR(tot_ld),
        .D(add_ret[7]),
        .G(1'b0),
        .GE(1'b1),
        .Q(total[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \total_reg[7]_i_1 
       (.I0(d_OBUF_inst_i_2_n_0),
        .I1(\dut3/state [0]),
        .O(tot_ld));
endmodule

(* NotValidForBitStream *)
module soda_dispense_machine
   (s,
    a,
    c,
    d);
  input [7:0]s;
  input [7:0]a;
  input c;
  output d;

  wire [7:0]a;
  wire [7:0]a_IBUF;
  wire c;
  wire c_IBUF;
  wire d;
  wire d_OBUF;
  wire [7:0]s;
  wire [7:0]s_IBUF;

  IBUF #(
    .CCIO_EN("TRUE")) 
    \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \a_IBUF[4]_inst 
       (.I(a[4]),
        .O(a_IBUF[4]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \a_IBUF[5]_inst 
       (.I(a[5]),
        .O(a_IBUF[5]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \a_IBUF[6]_inst 
       (.I(a[6]),
        .O(a_IBUF[6]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \a_IBUF[7]_inst 
       (.I(a[7]),
        .O(a_IBUF[7]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    c_IBUF_inst
       (.I(c),
        .O(c_IBUF));
  OBUF d_OBUF_inst
       (.I(d_OBUF),
        .O(d));
  datapath_sdm dut2
       (.a_IBUF(a_IBUF),
        .c_IBUF(c_IBUF),
        .d_OBUF(d_OBUF),
        .s_IBUF(s_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \s_IBUF[0]_inst 
       (.I(s[0]),
        .O(s_IBUF[0]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \s_IBUF[1]_inst 
       (.I(s[1]),
        .O(s_IBUF[1]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \s_IBUF[2]_inst 
       (.I(s[2]),
        .O(s_IBUF[2]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \s_IBUF[3]_inst 
       (.I(s[3]),
        .O(s_IBUF[3]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \s_IBUF[4]_inst 
       (.I(s[4]),
        .O(s_IBUF[4]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \s_IBUF[5]_inst 
       (.I(s[5]),
        .O(s_IBUF[5]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \s_IBUF[6]_inst 
       (.I(s[6]),
        .O(s_IBUF[6]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \s_IBUF[7]_inst 
       (.I(s[7]),
        .O(s_IBUF[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
