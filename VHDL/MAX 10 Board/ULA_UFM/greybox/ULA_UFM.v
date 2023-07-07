// Copyright (C) 2023  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

// DATE "06/11/2023 21:37:14"

// 
// Device: Altera 10M08SAE144C8G Package EQFP144
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module ULA_UFM (
	clock,
	avmm_data_addr,
	avmm_data_read,
	avmm_data_readdata,
	avmm_data_waitrequest,
	avmm_data_readdatavalid,
	avmm_data_burstcount,
	reset_n)/* synthesis synthesis_greybox=1 */;
input 	clock;
input 	[16:0] avmm_data_addr;
input 	avmm_data_read;
output 	[31:0] avmm_data_readdata;
output 	avmm_data_waitrequest;
output 	avmm_data_readdatavalid;
input 	[1:0] avmm_data_burstcount;
input 	reset_n;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[0]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[1]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[2]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[3]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[4]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[5]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[6]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[7]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[8]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[9]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[10]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[11]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[12]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[13]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[14]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[15]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[16]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[17]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[18]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[19]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[20]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[21]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[22]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[23]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[24]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[25]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[26]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[27]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[28]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[29]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[30]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_readdata[31]~q ;
wire \onchip_flash_0|avmm_data_controller|avmm_waitrequest~1_combout ;
wire \~GND~combout ;
wire \avmm_data_read~input_o ;
wire \reset_n~input_o ;
wire \clock~input_o ;
wire \avmm_data_addr[11]~input_o ;
wire \avmm_data_addr[12]~input_o ;
wire \avmm_data_addr[13]~input_o ;
wire \avmm_data_addr[14]~input_o ;
wire \avmm_data_addr[15]~input_o ;
wire \avmm_data_addr[16]~input_o ;
wire \avmm_data_addr[0]~input_o ;
wire \avmm_data_addr[1]~input_o ;
wire \avmm_data_addr[2]~input_o ;
wire \avmm_data_addr[3]~input_o ;
wire \avmm_data_addr[4]~input_o ;
wire \avmm_data_addr[5]~input_o ;
wire \avmm_data_addr[6]~input_o ;
wire \avmm_data_addr[7]~input_o ;
wire \avmm_data_addr[8]~input_o ;
wire \avmm_data_addr[9]~input_o ;
wire \avmm_data_addr[10]~input_o ;
wire \avmm_data_burstcount[0]~input_o ;
wire \avmm_data_burstcount[1]~input_o ;


ULA_UFM_altera_onchip_flash onchip_flash_0(
	.avmm_readdatavalid_reg(\onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q ),
	.avmm_readdata_0(\onchip_flash_0|avmm_data_controller|avmm_readdata[0]~q ),
	.avmm_readdata_1(\onchip_flash_0|avmm_data_controller|avmm_readdata[1]~q ),
	.avmm_readdata_2(\onchip_flash_0|avmm_data_controller|avmm_readdata[2]~q ),
	.avmm_readdata_3(\onchip_flash_0|avmm_data_controller|avmm_readdata[3]~q ),
	.avmm_readdata_4(\onchip_flash_0|avmm_data_controller|avmm_readdata[4]~q ),
	.avmm_readdata_5(\onchip_flash_0|avmm_data_controller|avmm_readdata[5]~q ),
	.avmm_readdata_6(\onchip_flash_0|avmm_data_controller|avmm_readdata[6]~q ),
	.avmm_readdata_7(\onchip_flash_0|avmm_data_controller|avmm_readdata[7]~q ),
	.avmm_readdata_8(\onchip_flash_0|avmm_data_controller|avmm_readdata[8]~q ),
	.avmm_readdata_9(\onchip_flash_0|avmm_data_controller|avmm_readdata[9]~q ),
	.avmm_readdata_10(\onchip_flash_0|avmm_data_controller|avmm_readdata[10]~q ),
	.avmm_readdata_11(\onchip_flash_0|avmm_data_controller|avmm_readdata[11]~q ),
	.avmm_readdata_12(\onchip_flash_0|avmm_data_controller|avmm_readdata[12]~q ),
	.avmm_readdata_13(\onchip_flash_0|avmm_data_controller|avmm_readdata[13]~q ),
	.avmm_readdata_14(\onchip_flash_0|avmm_data_controller|avmm_readdata[14]~q ),
	.avmm_readdata_15(\onchip_flash_0|avmm_data_controller|avmm_readdata[15]~q ),
	.avmm_readdata_16(\onchip_flash_0|avmm_data_controller|avmm_readdata[16]~q ),
	.avmm_readdata_17(\onchip_flash_0|avmm_data_controller|avmm_readdata[17]~q ),
	.avmm_readdata_18(\onchip_flash_0|avmm_data_controller|avmm_readdata[18]~q ),
	.avmm_readdata_19(\onchip_flash_0|avmm_data_controller|avmm_readdata[19]~q ),
	.avmm_readdata_20(\onchip_flash_0|avmm_data_controller|avmm_readdata[20]~q ),
	.avmm_readdata_21(\onchip_flash_0|avmm_data_controller|avmm_readdata[21]~q ),
	.avmm_readdata_22(\onchip_flash_0|avmm_data_controller|avmm_readdata[22]~q ),
	.avmm_readdata_23(\onchip_flash_0|avmm_data_controller|avmm_readdata[23]~q ),
	.avmm_readdata_24(\onchip_flash_0|avmm_data_controller|avmm_readdata[24]~q ),
	.avmm_readdata_25(\onchip_flash_0|avmm_data_controller|avmm_readdata[25]~q ),
	.avmm_readdata_26(\onchip_flash_0|avmm_data_controller|avmm_readdata[26]~q ),
	.avmm_readdata_27(\onchip_flash_0|avmm_data_controller|avmm_readdata[27]~q ),
	.avmm_readdata_28(\onchip_flash_0|avmm_data_controller|avmm_readdata[28]~q ),
	.avmm_readdata_29(\onchip_flash_0|avmm_data_controller|avmm_readdata[29]~q ),
	.avmm_readdata_30(\onchip_flash_0|avmm_data_controller|avmm_readdata[30]~q ),
	.avmm_readdata_31(\onchip_flash_0|avmm_data_controller|avmm_readdata[31]~q ),
	.avmm_data_waitrequest(\onchip_flash_0|avmm_data_controller|avmm_waitrequest~1_combout ),
	.GND_port(\~GND~combout ),
	.avmm_data_read(\avmm_data_read~input_o ),
	.reset_n(\reset_n~input_o ),
	.clock(\clock~input_o ),
	.avmm_data_addr_11(\avmm_data_addr[11]~input_o ),
	.avmm_data_addr_12(\avmm_data_addr[12]~input_o ),
	.avmm_data_addr_13(\avmm_data_addr[13]~input_o ),
	.avmm_data_addr_14(\avmm_data_addr[14]~input_o ),
	.avmm_data_addr_15(\avmm_data_addr[15]~input_o ),
	.avmm_data_addr_16(\avmm_data_addr[16]~input_o ),
	.avmm_data_addr_0(\avmm_data_addr[0]~input_o ),
	.avmm_data_addr_1(\avmm_data_addr[1]~input_o ),
	.avmm_data_addr_2(\avmm_data_addr[2]~input_o ),
	.avmm_data_addr_3(\avmm_data_addr[3]~input_o ),
	.avmm_data_addr_4(\avmm_data_addr[4]~input_o ),
	.avmm_data_addr_5(\avmm_data_addr[5]~input_o ),
	.avmm_data_addr_6(\avmm_data_addr[6]~input_o ),
	.avmm_data_addr_7(\avmm_data_addr[7]~input_o ),
	.avmm_data_addr_8(\avmm_data_addr[8]~input_o ),
	.avmm_data_addr_9(\avmm_data_addr[9]~input_o ),
	.avmm_data_addr_10(\avmm_data_addr[10]~input_o ),
	.avmm_data_burstcount_0(\avmm_data_burstcount[0]~input_o ),
	.avmm_data_burstcount_1(\avmm_data_burstcount[1]~input_o ));

fiftyfivenm_lcell_comb \~GND (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\~GND~combout ),
	.cout());
defparam \~GND .lut_mask = 16'h0000;
defparam \~GND .sum_lutc_input = "datac";

assign \avmm_data_read~input_o  = avmm_data_read;

assign \reset_n~input_o  = reset_n;

assign \clock~input_o  = clock;

assign \avmm_data_addr[11]~input_o  = avmm_data_addr[11];

assign \avmm_data_addr[12]~input_o  = avmm_data_addr[12];

assign \avmm_data_addr[13]~input_o  = avmm_data_addr[13];

assign \avmm_data_addr[14]~input_o  = avmm_data_addr[14];

assign \avmm_data_addr[15]~input_o  = avmm_data_addr[15];

assign \avmm_data_addr[16]~input_o  = avmm_data_addr[16];

assign \avmm_data_addr[0]~input_o  = avmm_data_addr[0];

assign \avmm_data_addr[1]~input_o  = avmm_data_addr[1];

assign \avmm_data_addr[2]~input_o  = avmm_data_addr[2];

assign \avmm_data_addr[3]~input_o  = avmm_data_addr[3];

assign \avmm_data_addr[4]~input_o  = avmm_data_addr[4];

assign \avmm_data_addr[5]~input_o  = avmm_data_addr[5];

assign \avmm_data_addr[6]~input_o  = avmm_data_addr[6];

assign \avmm_data_addr[7]~input_o  = avmm_data_addr[7];

assign \avmm_data_addr[8]~input_o  = avmm_data_addr[8];

assign \avmm_data_addr[9]~input_o  = avmm_data_addr[9];

assign \avmm_data_addr[10]~input_o  = avmm_data_addr[10];

assign \avmm_data_burstcount[0]~input_o  = avmm_data_burstcount[0];

assign \avmm_data_burstcount[1]~input_o  = avmm_data_burstcount[1];

assign avmm_data_readdata[0] = \onchip_flash_0|avmm_data_controller|avmm_readdata[0]~q ;

assign avmm_data_readdata[1] = \onchip_flash_0|avmm_data_controller|avmm_readdata[1]~q ;

assign avmm_data_readdata[2] = \onchip_flash_0|avmm_data_controller|avmm_readdata[2]~q ;

assign avmm_data_readdata[3] = \onchip_flash_0|avmm_data_controller|avmm_readdata[3]~q ;

assign avmm_data_readdata[4] = \onchip_flash_0|avmm_data_controller|avmm_readdata[4]~q ;

assign avmm_data_readdata[5] = \onchip_flash_0|avmm_data_controller|avmm_readdata[5]~q ;

assign avmm_data_readdata[6] = \onchip_flash_0|avmm_data_controller|avmm_readdata[6]~q ;

assign avmm_data_readdata[7] = \onchip_flash_0|avmm_data_controller|avmm_readdata[7]~q ;

assign avmm_data_readdata[8] = \onchip_flash_0|avmm_data_controller|avmm_readdata[8]~q ;

assign avmm_data_readdata[9] = \onchip_flash_0|avmm_data_controller|avmm_readdata[9]~q ;

assign avmm_data_readdata[10] = \onchip_flash_0|avmm_data_controller|avmm_readdata[10]~q ;

assign avmm_data_readdata[11] = \onchip_flash_0|avmm_data_controller|avmm_readdata[11]~q ;

assign avmm_data_readdata[12] = \onchip_flash_0|avmm_data_controller|avmm_readdata[12]~q ;

assign avmm_data_readdata[13] = \onchip_flash_0|avmm_data_controller|avmm_readdata[13]~q ;

assign avmm_data_readdata[14] = \onchip_flash_0|avmm_data_controller|avmm_readdata[14]~q ;

assign avmm_data_readdata[15] = \onchip_flash_0|avmm_data_controller|avmm_readdata[15]~q ;

assign avmm_data_readdata[16] = \onchip_flash_0|avmm_data_controller|avmm_readdata[16]~q ;

assign avmm_data_readdata[17] = \onchip_flash_0|avmm_data_controller|avmm_readdata[17]~q ;

assign avmm_data_readdata[18] = \onchip_flash_0|avmm_data_controller|avmm_readdata[18]~q ;

assign avmm_data_readdata[19] = \onchip_flash_0|avmm_data_controller|avmm_readdata[19]~q ;

assign avmm_data_readdata[20] = \onchip_flash_0|avmm_data_controller|avmm_readdata[20]~q ;

assign avmm_data_readdata[21] = \onchip_flash_0|avmm_data_controller|avmm_readdata[21]~q ;

assign avmm_data_readdata[22] = \onchip_flash_0|avmm_data_controller|avmm_readdata[22]~q ;

assign avmm_data_readdata[23] = \onchip_flash_0|avmm_data_controller|avmm_readdata[23]~q ;

assign avmm_data_readdata[24] = \onchip_flash_0|avmm_data_controller|avmm_readdata[24]~q ;

assign avmm_data_readdata[25] = \onchip_flash_0|avmm_data_controller|avmm_readdata[25]~q ;

assign avmm_data_readdata[26] = \onchip_flash_0|avmm_data_controller|avmm_readdata[26]~q ;

assign avmm_data_readdata[27] = \onchip_flash_0|avmm_data_controller|avmm_readdata[27]~q ;

assign avmm_data_readdata[28] = \onchip_flash_0|avmm_data_controller|avmm_readdata[28]~q ;

assign avmm_data_readdata[29] = \onchip_flash_0|avmm_data_controller|avmm_readdata[29]~q ;

assign avmm_data_readdata[30] = \onchip_flash_0|avmm_data_controller|avmm_readdata[30]~q ;

assign avmm_data_readdata[31] = \onchip_flash_0|avmm_data_controller|avmm_readdata[31]~q ;

assign avmm_data_waitrequest = \onchip_flash_0|avmm_data_controller|avmm_waitrequest~1_combout ;

assign avmm_data_readdatavalid = \onchip_flash_0|avmm_data_controller|avmm_readdatavalid_reg~q ;

endmodule

module ULA_UFM_altera_onchip_flash (
	avmm_readdatavalid_reg,
	avmm_readdata_0,
	avmm_readdata_1,
	avmm_readdata_2,
	avmm_readdata_3,
	avmm_readdata_4,
	avmm_readdata_5,
	avmm_readdata_6,
	avmm_readdata_7,
	avmm_readdata_8,
	avmm_readdata_9,
	avmm_readdata_10,
	avmm_readdata_11,
	avmm_readdata_12,
	avmm_readdata_13,
	avmm_readdata_14,
	avmm_readdata_15,
	avmm_readdata_16,
	avmm_readdata_17,
	avmm_readdata_18,
	avmm_readdata_19,
	avmm_readdata_20,
	avmm_readdata_21,
	avmm_readdata_22,
	avmm_readdata_23,
	avmm_readdata_24,
	avmm_readdata_25,
	avmm_readdata_26,
	avmm_readdata_27,
	avmm_readdata_28,
	avmm_readdata_29,
	avmm_readdata_30,
	avmm_readdata_31,
	avmm_data_waitrequest,
	GND_port,
	avmm_data_read,
	reset_n,
	clock,
	avmm_data_addr_11,
	avmm_data_addr_12,
	avmm_data_addr_13,
	avmm_data_addr_14,
	avmm_data_addr_15,
	avmm_data_addr_16,
	avmm_data_addr_0,
	avmm_data_addr_1,
	avmm_data_addr_2,
	avmm_data_addr_3,
	avmm_data_addr_4,
	avmm_data_addr_5,
	avmm_data_addr_6,
	avmm_data_addr_7,
	avmm_data_addr_8,
	avmm_data_addr_9,
	avmm_data_addr_10,
	avmm_data_burstcount_0,
	avmm_data_burstcount_1)/* synthesis synthesis_greybox=1 */;
output 	avmm_readdatavalid_reg;
output 	avmm_readdata_0;
output 	avmm_readdata_1;
output 	avmm_readdata_2;
output 	avmm_readdata_3;
output 	avmm_readdata_4;
output 	avmm_readdata_5;
output 	avmm_readdata_6;
output 	avmm_readdata_7;
output 	avmm_readdata_8;
output 	avmm_readdata_9;
output 	avmm_readdata_10;
output 	avmm_readdata_11;
output 	avmm_readdata_12;
output 	avmm_readdata_13;
output 	avmm_readdata_14;
output 	avmm_readdata_15;
output 	avmm_readdata_16;
output 	avmm_readdata_17;
output 	avmm_readdata_18;
output 	avmm_readdata_19;
output 	avmm_readdata_20;
output 	avmm_readdata_21;
output 	avmm_readdata_22;
output 	avmm_readdata_23;
output 	avmm_readdata_24;
output 	avmm_readdata_25;
output 	avmm_readdata_26;
output 	avmm_readdata_27;
output 	avmm_readdata_28;
output 	avmm_readdata_29;
output 	avmm_readdata_30;
output 	avmm_readdata_31;
output 	avmm_data_waitrequest;
input 	GND_port;
input 	avmm_data_read;
input 	reset_n;
input 	clock;
input 	avmm_data_addr_11;
input 	avmm_data_addr_12;
input 	avmm_data_addr_13;
input 	avmm_data_addr_14;
input 	avmm_data_addr_15;
input 	avmm_data_addr_16;
input 	avmm_data_addr_0;
input 	avmm_data_addr_1;
input 	avmm_data_addr_2;
input 	avmm_data_addr_3;
input 	avmm_data_addr_4;
input 	avmm_data_addr_5;
input 	avmm_data_addr_6;
input 	avmm_data_addr_7;
input 	avmm_data_addr_8;
input 	avmm_data_addr_9;
input 	avmm_data_addr_10;
input 	avmm_data_burstcount_0;
input 	avmm_data_burstcount_1;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \altera_onchip_flash_block|drdout[0] ;
wire \altera_onchip_flash_block|drdout[1] ;
wire \altera_onchip_flash_block|drdout[2] ;
wire \altera_onchip_flash_block|drdout[3] ;
wire \altera_onchip_flash_block|drdout[4] ;
wire \altera_onchip_flash_block|drdout[5] ;
wire \altera_onchip_flash_block|drdout[6] ;
wire \altera_onchip_flash_block|drdout[7] ;
wire \altera_onchip_flash_block|drdout[8] ;
wire \altera_onchip_flash_block|drdout[9] ;
wire \altera_onchip_flash_block|drdout[10] ;
wire \altera_onchip_flash_block|drdout[11] ;
wire \altera_onchip_flash_block|drdout[12] ;
wire \altera_onchip_flash_block|drdout[13] ;
wire \altera_onchip_flash_block|drdout[14] ;
wire \altera_onchip_flash_block|drdout[15] ;
wire \altera_onchip_flash_block|drdout[16] ;
wire \altera_onchip_flash_block|drdout[17] ;
wire \altera_onchip_flash_block|drdout[18] ;
wire \altera_onchip_flash_block|drdout[19] ;
wire \altera_onchip_flash_block|drdout[20] ;
wire \altera_onchip_flash_block|drdout[21] ;
wire \altera_onchip_flash_block|drdout[22] ;
wire \altera_onchip_flash_block|drdout[23] ;
wire \altera_onchip_flash_block|drdout[24] ;
wire \altera_onchip_flash_block|drdout[25] ;
wire \altera_onchip_flash_block|drdout[26] ;
wire \altera_onchip_flash_block|drdout[27] ;
wire \altera_onchip_flash_block|drdout[28] ;
wire \altera_onchip_flash_block|drdout[29] ;
wire \altera_onchip_flash_block|drdout[30] ;
wire \altera_onchip_flash_block|drdout[31] ;
wire \avmm_data_controller|flash_arclk~0_combout ;
wire \avmm_data_controller|flash_drclk~0_combout ;
wire \avmm_data_controller|flash_xe_ye~combout ;
wire \avmm_data_controller|flash_se_neg_reg~q ;
wire \avmm_data_controller|flash_addr_wire_neg_reg[0]~q ;
wire \avmm_data_controller|flash_addr_wire_neg_reg[1]~q ;
wire \avmm_data_controller|flash_addr_wire_neg_reg[2]~q ;
wire \avmm_data_controller|flash_addr_wire_neg_reg[3]~q ;
wire \avmm_data_controller|flash_addr_wire_neg_reg[4]~q ;
wire \avmm_data_controller|flash_addr_wire_neg_reg[5]~q ;
wire \avmm_data_controller|flash_addr_wire_neg_reg[6]~q ;
wire \avmm_data_controller|flash_addr_wire_neg_reg[7]~q ;
wire \avmm_data_controller|flash_addr_wire_neg_reg[8]~q ;
wire \avmm_data_controller|flash_addr_wire_neg_reg[9]~q ;
wire \avmm_data_controller|flash_addr_wire_neg_reg[10]~q ;
wire \avmm_data_controller|flash_addr_wire_neg_reg[11]~q ;
wire \avmm_data_controller|flash_addr_wire_neg_reg[12]~q ;
wire \avmm_data_controller|flash_addr_wire_neg_reg[13]~q ;
wire \avmm_data_controller|flash_addr_wire_neg_reg[14]~q ;
wire \avmm_data_controller|flash_addr_wire_neg_reg[15]~q ;
wire \avmm_data_controller|flash_addr_wire_neg_reg[16]~q ;
wire \avmm_data_controller|flash_addr_wire_neg_reg[17]~q ;
wire \avmm_data_controller|flash_drshft_neg_reg~_wirecell_combout ;


ULA_UFM_altera_onchip_flash_block altera_onchip_flash_block_1(
	.drdout({\altera_onchip_flash_block|drdout[31] ,\altera_onchip_flash_block|drdout[30] ,\altera_onchip_flash_block|drdout[29] ,\altera_onchip_flash_block|drdout[28] ,\altera_onchip_flash_block|drdout[27] ,\altera_onchip_flash_block|drdout[26] ,
\altera_onchip_flash_block|drdout[25] ,\altera_onchip_flash_block|drdout[24] ,\altera_onchip_flash_block|drdout[23] ,\altera_onchip_flash_block|drdout[22] ,\altera_onchip_flash_block|drdout[21] ,\altera_onchip_flash_block|drdout[20] ,
\altera_onchip_flash_block|drdout[19] ,\altera_onchip_flash_block|drdout[18] ,\altera_onchip_flash_block|drdout[17] ,\altera_onchip_flash_block|drdout[16] ,\altera_onchip_flash_block|drdout[15] ,\altera_onchip_flash_block|drdout[14] ,
\altera_onchip_flash_block|drdout[13] ,\altera_onchip_flash_block|drdout[12] ,\altera_onchip_flash_block|drdout[11] ,\altera_onchip_flash_block|drdout[10] ,\altera_onchip_flash_block|drdout[9] ,\altera_onchip_flash_block|drdout[8] ,
\altera_onchip_flash_block|drdout[7] ,\altera_onchip_flash_block|drdout[6] ,\altera_onchip_flash_block|drdout[5] ,\altera_onchip_flash_block|drdout[4] ,\altera_onchip_flash_block|drdout[3] ,\altera_onchip_flash_block|drdout[2] ,
\altera_onchip_flash_block|drdout[1] ,\altera_onchip_flash_block|drdout[0] }),
	.arclk(\avmm_data_controller|flash_arclk~0_combout ),
	.drclk(\avmm_data_controller|flash_drclk~0_combout ),
	.xe_ye(\avmm_data_controller|flash_xe_ye~combout ),
	.se(\avmm_data_controller|flash_se_neg_reg~q ),
	.ardin({GND_port,GND_port,GND_port,GND_port,GND_port,\avmm_data_controller|flash_addr_wire_neg_reg[17]~q ,\avmm_data_controller|flash_addr_wire_neg_reg[16]~q ,\avmm_data_controller|flash_addr_wire_neg_reg[15]~q ,\avmm_data_controller|flash_addr_wire_neg_reg[14]~q ,
\avmm_data_controller|flash_addr_wire_neg_reg[13]~q ,\avmm_data_controller|flash_addr_wire_neg_reg[12]~q ,\avmm_data_controller|flash_addr_wire_neg_reg[11]~q ,\avmm_data_controller|flash_addr_wire_neg_reg[10]~q ,
\avmm_data_controller|flash_addr_wire_neg_reg[9]~q ,\avmm_data_controller|flash_addr_wire_neg_reg[8]~q ,\avmm_data_controller|flash_addr_wire_neg_reg[7]~q ,\avmm_data_controller|flash_addr_wire_neg_reg[6]~q ,\avmm_data_controller|flash_addr_wire_neg_reg[5]~q ,
\avmm_data_controller|flash_addr_wire_neg_reg[4]~q ,\avmm_data_controller|flash_addr_wire_neg_reg[3]~q ,\avmm_data_controller|flash_addr_wire_neg_reg[2]~q ,\avmm_data_controller|flash_addr_wire_neg_reg[1]~q ,\avmm_data_controller|flash_addr_wire_neg_reg[0]~q }),
	.nosc_ena(GND_port),
	.drshft(\avmm_data_controller|flash_drshft_neg_reg~_wirecell_combout ));

ULA_UFM_altera_onchip_flash_avmm_data_controller avmm_data_controller(
	.drdout_0(\altera_onchip_flash_block|drdout[0] ),
	.drdout_1(\altera_onchip_flash_block|drdout[1] ),
	.drdout_2(\altera_onchip_flash_block|drdout[2] ),
	.drdout_3(\altera_onchip_flash_block|drdout[3] ),
	.drdout_4(\altera_onchip_flash_block|drdout[4] ),
	.drdout_5(\altera_onchip_flash_block|drdout[5] ),
	.drdout_6(\altera_onchip_flash_block|drdout[6] ),
	.drdout_7(\altera_onchip_flash_block|drdout[7] ),
	.drdout_8(\altera_onchip_flash_block|drdout[8] ),
	.drdout_9(\altera_onchip_flash_block|drdout[9] ),
	.drdout_10(\altera_onchip_flash_block|drdout[10] ),
	.drdout_11(\altera_onchip_flash_block|drdout[11] ),
	.drdout_12(\altera_onchip_flash_block|drdout[12] ),
	.drdout_13(\altera_onchip_flash_block|drdout[13] ),
	.drdout_14(\altera_onchip_flash_block|drdout[14] ),
	.drdout_15(\altera_onchip_flash_block|drdout[15] ),
	.drdout_16(\altera_onchip_flash_block|drdout[16] ),
	.drdout_17(\altera_onchip_flash_block|drdout[17] ),
	.drdout_18(\altera_onchip_flash_block|drdout[18] ),
	.drdout_19(\altera_onchip_flash_block|drdout[19] ),
	.drdout_20(\altera_onchip_flash_block|drdout[20] ),
	.drdout_21(\altera_onchip_flash_block|drdout[21] ),
	.drdout_22(\altera_onchip_flash_block|drdout[22] ),
	.drdout_23(\altera_onchip_flash_block|drdout[23] ),
	.drdout_24(\altera_onchip_flash_block|drdout[24] ),
	.drdout_25(\altera_onchip_flash_block|drdout[25] ),
	.drdout_26(\altera_onchip_flash_block|drdout[26] ),
	.drdout_27(\altera_onchip_flash_block|drdout[27] ),
	.drdout_28(\altera_onchip_flash_block|drdout[28] ),
	.drdout_29(\altera_onchip_flash_block|drdout[29] ),
	.drdout_30(\altera_onchip_flash_block|drdout[30] ),
	.drdout_31(\altera_onchip_flash_block|drdout[31] ),
	.avmm_readdatavalid_reg1(avmm_readdatavalid_reg),
	.avmm_readdata_0(avmm_readdata_0),
	.avmm_readdata_1(avmm_readdata_1),
	.avmm_readdata_2(avmm_readdata_2),
	.avmm_readdata_3(avmm_readdata_3),
	.avmm_readdata_4(avmm_readdata_4),
	.avmm_readdata_5(avmm_readdata_5),
	.avmm_readdata_6(avmm_readdata_6),
	.avmm_readdata_7(avmm_readdata_7),
	.avmm_readdata_8(avmm_readdata_8),
	.avmm_readdata_9(avmm_readdata_9),
	.avmm_readdata_10(avmm_readdata_10),
	.avmm_readdata_11(avmm_readdata_11),
	.avmm_readdata_12(avmm_readdata_12),
	.avmm_readdata_13(avmm_readdata_13),
	.avmm_readdata_14(avmm_readdata_14),
	.avmm_readdata_15(avmm_readdata_15),
	.avmm_readdata_16(avmm_readdata_16),
	.avmm_readdata_17(avmm_readdata_17),
	.avmm_readdata_18(avmm_readdata_18),
	.avmm_readdata_19(avmm_readdata_19),
	.avmm_readdata_20(avmm_readdata_20),
	.avmm_readdata_21(avmm_readdata_21),
	.avmm_readdata_22(avmm_readdata_22),
	.avmm_readdata_23(avmm_readdata_23),
	.avmm_readdata_24(avmm_readdata_24),
	.avmm_readdata_25(avmm_readdata_25),
	.avmm_readdata_26(avmm_readdata_26),
	.avmm_readdata_27(avmm_readdata_27),
	.avmm_readdata_28(avmm_readdata_28),
	.avmm_readdata_29(avmm_readdata_29),
	.avmm_readdata_30(avmm_readdata_30),
	.avmm_readdata_31(avmm_readdata_31),
	.avmm_waitrequest(avmm_data_waitrequest),
	.flash_arclk(\avmm_data_controller|flash_arclk~0_combout ),
	.flash_drclk(\avmm_data_controller|flash_drclk~0_combout ),
	.flash_xe_ye1(\avmm_data_controller|flash_xe_ye~combout ),
	.flash_se_neg_reg1(\avmm_data_controller|flash_se_neg_reg~q ),
	.flash_addr_wire_neg_reg_0(\avmm_data_controller|flash_addr_wire_neg_reg[0]~q ),
	.flash_addr_wire_neg_reg_1(\avmm_data_controller|flash_addr_wire_neg_reg[1]~q ),
	.flash_addr_wire_neg_reg_2(\avmm_data_controller|flash_addr_wire_neg_reg[2]~q ),
	.flash_addr_wire_neg_reg_3(\avmm_data_controller|flash_addr_wire_neg_reg[3]~q ),
	.flash_addr_wire_neg_reg_4(\avmm_data_controller|flash_addr_wire_neg_reg[4]~q ),
	.flash_addr_wire_neg_reg_5(\avmm_data_controller|flash_addr_wire_neg_reg[5]~q ),
	.flash_addr_wire_neg_reg_6(\avmm_data_controller|flash_addr_wire_neg_reg[6]~q ),
	.flash_addr_wire_neg_reg_7(\avmm_data_controller|flash_addr_wire_neg_reg[7]~q ),
	.flash_addr_wire_neg_reg_8(\avmm_data_controller|flash_addr_wire_neg_reg[8]~q ),
	.flash_addr_wire_neg_reg_9(\avmm_data_controller|flash_addr_wire_neg_reg[9]~q ),
	.flash_addr_wire_neg_reg_10(\avmm_data_controller|flash_addr_wire_neg_reg[10]~q ),
	.flash_addr_wire_neg_reg_11(\avmm_data_controller|flash_addr_wire_neg_reg[11]~q ),
	.flash_addr_wire_neg_reg_12(\avmm_data_controller|flash_addr_wire_neg_reg[12]~q ),
	.flash_addr_wire_neg_reg_13(\avmm_data_controller|flash_addr_wire_neg_reg[13]~q ),
	.flash_addr_wire_neg_reg_14(\avmm_data_controller|flash_addr_wire_neg_reg[14]~q ),
	.flash_addr_wire_neg_reg_15(\avmm_data_controller|flash_addr_wire_neg_reg[15]~q ),
	.flash_addr_wire_neg_reg_16(\avmm_data_controller|flash_addr_wire_neg_reg[16]~q ),
	.flash_addr_wire_neg_reg_17(\avmm_data_controller|flash_addr_wire_neg_reg[17]~q ),
	.flash_drshft_neg_reg1(\avmm_data_controller|flash_drshft_neg_reg~_wirecell_combout ),
	.avmm_data_read(avmm_data_read),
	.reset_n(reset_n),
	.clock(clock),
	.avmm_data_addr_11(avmm_data_addr_11),
	.avmm_data_addr_12(avmm_data_addr_12),
	.avmm_data_addr_13(avmm_data_addr_13),
	.avmm_data_addr_14(avmm_data_addr_14),
	.avmm_data_addr_15(avmm_data_addr_15),
	.avmm_data_addr_16(avmm_data_addr_16),
	.avmm_data_addr_0(avmm_data_addr_0),
	.avmm_data_addr_1(avmm_data_addr_1),
	.avmm_data_addr_2(avmm_data_addr_2),
	.avmm_data_addr_3(avmm_data_addr_3),
	.avmm_data_addr_4(avmm_data_addr_4),
	.avmm_data_addr_5(avmm_data_addr_5),
	.avmm_data_addr_6(avmm_data_addr_6),
	.avmm_data_addr_7(avmm_data_addr_7),
	.avmm_data_addr_8(avmm_data_addr_8),
	.avmm_data_addr_9(avmm_data_addr_9),
	.avmm_data_addr_10(avmm_data_addr_10),
	.avmm_data_burstcount_0(avmm_data_burstcount_0),
	.avmm_data_burstcount_1(avmm_data_burstcount_1));

endmodule

module ULA_UFM_altera_onchip_flash_avmm_data_controller (
	drdout_0,
	drdout_1,
	drdout_2,
	drdout_3,
	drdout_4,
	drdout_5,
	drdout_6,
	drdout_7,
	drdout_8,
	drdout_9,
	drdout_10,
	drdout_11,
	drdout_12,
	drdout_13,
	drdout_14,
	drdout_15,
	drdout_16,
	drdout_17,
	drdout_18,
	drdout_19,
	drdout_20,
	drdout_21,
	drdout_22,
	drdout_23,
	drdout_24,
	drdout_25,
	drdout_26,
	drdout_27,
	drdout_28,
	drdout_29,
	drdout_30,
	drdout_31,
	avmm_readdatavalid_reg1,
	avmm_readdata_0,
	avmm_readdata_1,
	avmm_readdata_2,
	avmm_readdata_3,
	avmm_readdata_4,
	avmm_readdata_5,
	avmm_readdata_6,
	avmm_readdata_7,
	avmm_readdata_8,
	avmm_readdata_9,
	avmm_readdata_10,
	avmm_readdata_11,
	avmm_readdata_12,
	avmm_readdata_13,
	avmm_readdata_14,
	avmm_readdata_15,
	avmm_readdata_16,
	avmm_readdata_17,
	avmm_readdata_18,
	avmm_readdata_19,
	avmm_readdata_20,
	avmm_readdata_21,
	avmm_readdata_22,
	avmm_readdata_23,
	avmm_readdata_24,
	avmm_readdata_25,
	avmm_readdata_26,
	avmm_readdata_27,
	avmm_readdata_28,
	avmm_readdata_29,
	avmm_readdata_30,
	avmm_readdata_31,
	avmm_waitrequest,
	flash_arclk,
	flash_drclk,
	flash_xe_ye1,
	flash_se_neg_reg1,
	flash_addr_wire_neg_reg_0,
	flash_addr_wire_neg_reg_1,
	flash_addr_wire_neg_reg_2,
	flash_addr_wire_neg_reg_3,
	flash_addr_wire_neg_reg_4,
	flash_addr_wire_neg_reg_5,
	flash_addr_wire_neg_reg_6,
	flash_addr_wire_neg_reg_7,
	flash_addr_wire_neg_reg_8,
	flash_addr_wire_neg_reg_9,
	flash_addr_wire_neg_reg_10,
	flash_addr_wire_neg_reg_11,
	flash_addr_wire_neg_reg_12,
	flash_addr_wire_neg_reg_13,
	flash_addr_wire_neg_reg_14,
	flash_addr_wire_neg_reg_15,
	flash_addr_wire_neg_reg_16,
	flash_addr_wire_neg_reg_17,
	flash_drshft_neg_reg1,
	avmm_data_read,
	reset_n,
	clock,
	avmm_data_addr_11,
	avmm_data_addr_12,
	avmm_data_addr_13,
	avmm_data_addr_14,
	avmm_data_addr_15,
	avmm_data_addr_16,
	avmm_data_addr_0,
	avmm_data_addr_1,
	avmm_data_addr_2,
	avmm_data_addr_3,
	avmm_data_addr_4,
	avmm_data_addr_5,
	avmm_data_addr_6,
	avmm_data_addr_7,
	avmm_data_addr_8,
	avmm_data_addr_9,
	avmm_data_addr_10,
	avmm_data_burstcount_0,
	avmm_data_burstcount_1)/* synthesis synthesis_greybox=1 */;
input 	drdout_0;
input 	drdout_1;
input 	drdout_2;
input 	drdout_3;
input 	drdout_4;
input 	drdout_5;
input 	drdout_6;
input 	drdout_7;
input 	drdout_8;
input 	drdout_9;
input 	drdout_10;
input 	drdout_11;
input 	drdout_12;
input 	drdout_13;
input 	drdout_14;
input 	drdout_15;
input 	drdout_16;
input 	drdout_17;
input 	drdout_18;
input 	drdout_19;
input 	drdout_20;
input 	drdout_21;
input 	drdout_22;
input 	drdout_23;
input 	drdout_24;
input 	drdout_25;
input 	drdout_26;
input 	drdout_27;
input 	drdout_28;
input 	drdout_29;
input 	drdout_30;
input 	drdout_31;
output 	avmm_readdatavalid_reg1;
output 	avmm_readdata_0;
output 	avmm_readdata_1;
output 	avmm_readdata_2;
output 	avmm_readdata_3;
output 	avmm_readdata_4;
output 	avmm_readdata_5;
output 	avmm_readdata_6;
output 	avmm_readdata_7;
output 	avmm_readdata_8;
output 	avmm_readdata_9;
output 	avmm_readdata_10;
output 	avmm_readdata_11;
output 	avmm_readdata_12;
output 	avmm_readdata_13;
output 	avmm_readdata_14;
output 	avmm_readdata_15;
output 	avmm_readdata_16;
output 	avmm_readdata_17;
output 	avmm_readdata_18;
output 	avmm_readdata_19;
output 	avmm_readdata_20;
output 	avmm_readdata_21;
output 	avmm_readdata_22;
output 	avmm_readdata_23;
output 	avmm_readdata_24;
output 	avmm_readdata_25;
output 	avmm_readdata_26;
output 	avmm_readdata_27;
output 	avmm_readdata_28;
output 	avmm_readdata_29;
output 	avmm_readdata_30;
output 	avmm_readdata_31;
output 	avmm_waitrequest;
output 	flash_arclk;
output 	flash_drclk;
output 	flash_xe_ye1;
output 	flash_se_neg_reg1;
output 	flash_addr_wire_neg_reg_0;
output 	flash_addr_wire_neg_reg_1;
output 	flash_addr_wire_neg_reg_2;
output 	flash_addr_wire_neg_reg_3;
output 	flash_addr_wire_neg_reg_4;
output 	flash_addr_wire_neg_reg_5;
output 	flash_addr_wire_neg_reg_6;
output 	flash_addr_wire_neg_reg_7;
output 	flash_addr_wire_neg_reg_8;
output 	flash_addr_wire_neg_reg_9;
output 	flash_addr_wire_neg_reg_10;
output 	flash_addr_wire_neg_reg_11;
output 	flash_addr_wire_neg_reg_12;
output 	flash_addr_wire_neg_reg_13;
output 	flash_addr_wire_neg_reg_14;
output 	flash_addr_wire_neg_reg_15;
output 	flash_addr_wire_neg_reg_16;
output 	flash_addr_wire_neg_reg_17;
output 	flash_drshft_neg_reg1;
input 	avmm_data_read;
input 	reset_n;
input 	clock;
input 	avmm_data_addr_11;
input 	avmm_data_addr_12;
input 	avmm_data_addr_13;
input 	avmm_data_addr_14;
input 	avmm_data_addr_15;
input 	avmm_data_addr_16;
input 	avmm_data_addr_0;
input 	avmm_data_addr_1;
input 	avmm_data_addr_2;
input 	avmm_data_addr_3;
input 	avmm_data_addr_4;
input 	avmm_data_addr_5;
input 	avmm_data_addr_6;
input 	avmm_data_addr_7;
input 	avmm_data_addr_8;
input 	avmm_data_addr_9;
input 	avmm_data_addr_10;
input 	avmm_data_burstcount_0;
input 	avmm_data_burstcount_1;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \flash_read_addr[9]~0_combout ;
wire \flash_read_addr[13]~1_combout ;
wire \flash_read_addr[12]~2_combout ;
wire \flash_read_addr[11]~3_combout ;
wire \flash_read_addr[16]~4_combout ;
wire \flash_read_addr[15]~5_combout ;
wire \flash_read_addr[14]~6_combout ;
wire \address_convertor|Add0~2_combout ;
wire \flash_read_addr[10]~7_combout ;
wire \address_convertor|Add0~5_combout ;
wire \address_convertor|Add0~8_combout ;
wire \address_convertor|Add0~11_combout ;
wire \address_convertor|Add0~14_combout ;
wire \address_convertor|Add0~17_combout ;
wire \address_convertor|Add0~20_combout ;
wire \address_convertor|Add0~23_combout ;
wire \address_convertor|Add0~26_combout ;
wire \reset_n_reg1~q ;
wire \reset_n_reg2~q ;
wire \read_state~20_combout ;
wire \read_state.READ_STATE_FINAL~q ;
wire \Selector0~0_combout ;
wire \avmm_read_state~q ;
wire \Selector50~0_combout ;
wire \Selector47~0_combout ;
wire \avmm_read_valid_state.READ_VALID_PRE_READING~q ;
wire \Selector46~0_combout ;
wire \avmm_read_valid_state.READ_VALID_READING~q ;
wire \data_count~2_combout ;
wire \data_count[0]~1_combout ;
wire \data_count[0]~q ;
wire \Add3~0_combout ;
wire \data_count~0_combout ;
wire \data_count[1]~q ;
wire \data_count~3_combout ;
wire \data_count[2]~q ;
wire \LessThan2~0_combout ;
wire \LessThan2~1_combout ;
wire \Selector2~0_combout ;
wire \flash_seq_read_ardin[0]~0_combout ;
wire \Selector40~0_combout ;
wire \flash_seq_read_ardin[0]~q ;
wire \flash_ardin_align_reg[0]~q ;
wire \flash_ardin_align_backup_reg~0_combout ;
wire \Selector50~1_combout ;
wire \flash_ardin_align_backup_reg[0]~q ;
wire \Add4~1_cout ;
wire \Add4~3 ;
wire \Add4~5 ;
wire \Add4~6_combout ;
wire \Add4~7 ;
wire \Add4~8_combout ;
wire \Add4~2_combout ;
wire \Add4~4_combout ;
wire \avmm_burstcount_reg[0]~4_combout ;
wire \avmm_burstcount_reg[0]~5_combout ;
wire \avmm_burstcount_reg[0]~11_combout ;
wire \avmm_burstcount_input_reg~0_combout ;
wire \avmm_burstcount_input_reg[0]~1_combout ;
wire \avmm_burstcount_input_reg[0]~q ;
wire \avmm_burstcount_reg[0]~6_combout ;
wire \avmm_burstcount_reg[0]~12_combout ;
wire \avmm_burstcount_reg[0]~7_combout ;
wire \avmm_burstcount_reg[0]~q ;
wire \avmm_burstcount_reg[1]~8_combout ;
wire \avmm_burstcount_input_reg~2_combout ;
wire \avmm_burstcount_input_reg[1]~q ;
wire \avmm_burstcount_reg[1]~9_combout ;
wire \avmm_burstcount_reg[1]~10_combout ;
wire \avmm_burstcount_reg[1]~q ;
wire \Equal1~0_combout ;
wire \read_state~22_combout ;
wire \read_state.READ_STATE_CLEAR~q ;
wire \read_state~18_combout ;
wire \read_state.READ_STATE_IDLE~q ;
wire \read_state~23_combout ;
wire \read_state.READ_STATE_ADDR~q ;
wire \Selector17~0_combout ;
wire \read_state.READ_STATE_PULSE_SE~q ;
wire \read_state~21_combout ;
wire \read_state.READ_STATE_SETUP~q ;
wire \Selector5~0_combout ;
wire \Selector5~1_combout ;
wire \read_ctrl_count[0]~q ;
wire \Selector4~0_combout ;
wire \Selector4~1_combout ;
wire \read_ctrl_count[1]~q ;
wire \Selector13~0_combout ;
wire \read_state.READ_STATE_DUMMY~q ;
wire \read_state~19_combout ;
wire \read_state.READ_STATE_READY~q ;
wire \Selector1~0_combout ;
wire \Selector1~1_combout ;
wire \avmm_readdata_ready~q ;
wire \Selector45~0_combout ;
wire \avmm_read_valid_state~8_combout ;
wire \avmm_read_valid_state.READ_VALID_IDLE~q ;
wire \Selector51~2_combout ;
wire \Selector51~3_combout ;
wire \Selector51~4_combout ;
wire \Selector51~7_combout ;
wire \Selector51~5_combout ;
wire \Selector51~6_combout ;
wire \Selector41~0_combout ;
wire \Selector41~1_combout ;
wire \Selector41~2_combout ;
wire \Selector41~3_combout ;
wire \csr_status_r_pass~q ;
wire \avmm_readdata~0_combout ;
wire \avmm_readdata~1_combout ;
wire \avmm_readdata~2_combout ;
wire \avmm_readdata~3_combout ;
wire \avmm_readdata~4_combout ;
wire \avmm_readdata~5_combout ;
wire \avmm_readdata~6_combout ;
wire \avmm_readdata~7_combout ;
wire \avmm_readdata~8_combout ;
wire \avmm_readdata~9_combout ;
wire \avmm_readdata~10_combout ;
wire \avmm_readdata~11_combout ;
wire \avmm_readdata~12_combout ;
wire \avmm_readdata~13_combout ;
wire \avmm_readdata~14_combout ;
wire \avmm_readdata~15_combout ;
wire \avmm_readdata~16_combout ;
wire \avmm_readdata~17_combout ;
wire \avmm_readdata~18_combout ;
wire \avmm_readdata~19_combout ;
wire \avmm_readdata~20_combout ;
wire \avmm_readdata~21_combout ;
wire \avmm_readdata~22_combout ;
wire \avmm_readdata~23_combout ;
wire \avmm_readdata~24_combout ;
wire \avmm_readdata~25_combout ;
wire \avmm_readdata~26_combout ;
wire \avmm_readdata~27_combout ;
wire \avmm_readdata~28_combout ;
wire \avmm_readdata~29_combout ;
wire \avmm_readdata~30_combout ;
wire \avmm_readdata~31_combout ;
wire \Selector9~0_combout ;
wire \Selector9~1_combout ;
wire \Selector9~2_combout ;
wire \read_wait~q ;
wire \read_wait_neg~0_combout ;
wire \read_wait_neg~q ;
wire \avmm_waitrequest~0_combout ;
wire \flash_arclk_arshft_en_w~2_combout ;
wire \enable_arclk_sync_reg~q ;
wire \enable_arclk_neg_reg~0_combout ;
wire \enable_arclk_neg_reg~q ;
wire \enable_arclk_neg_pos_reg~0_combout ;
wire \enable_arclk_neg_pos_reg~q ;
wire \Selector6~0_combout ;
wire \Selector6~1_combout ;
wire \enable_drclk_neg_pos_reg~q ;
wire \Selector17~1_combout ;
wire \Selector7~0_combout ;
wire \read_drclk_en~q ;
wire \enable_drclk_neg_reg~0_combout ;
wire \enable_drclk_neg_reg~q ;
wire \flash_se_neg_reg~0_combout ;
wire \flash_page_addr~0_combout ;
wire \flash_page_addr[0]~q ;
wire \flash_addr_wire_neg_reg~0_combout ;
wire \Add0~0_combout ;
wire \Selector39~0_combout ;
wire \Add0~1 ;
wire \Add0~2_combout ;
wire \Selector38~0_combout ;
wire \flash_seq_read_ardin[7]~1_combout ;
wire \flash_seq_read_ardin[7]~2_combout ;
wire \Selector38~1_combout ;
wire \flash_seq_read_ardin[1]~3_combout ;
wire \flash_seq_read_ardin[2]~q ;
wire \Add0~3 ;
wire \Add0~4_combout ;
wire \Selector37~0_combout ;
wire \Selector37~1_combout ;
wire \flash_seq_read_ardin[3]~q ;
wire \Add0~5 ;
wire \Add0~6_combout ;
wire \Selector36~0_combout ;
wire \Selector36~1_combout ;
wire \flash_seq_read_ardin[4]~q ;
wire \Add0~7 ;
wire \Add0~8_combout ;
wire \Selector35~0_combout ;
wire \Selector35~1_combout ;
wire \flash_seq_read_ardin[5]~q ;
wire \Add0~9 ;
wire \Add0~10_combout ;
wire \Selector34~0_combout ;
wire \Selector34~1_combout ;
wire \flash_seq_read_ardin[6]~q ;
wire \Add0~11 ;
wire \Add0~12_combout ;
wire \Selector33~0_combout ;
wire \Selector33~1_combout ;
wire \flash_seq_read_ardin[7]~q ;
wire \Add0~13 ;
wire \Add0~14_combout ;
wire \Selector32~0_combout ;
wire \Selector32~1_combout ;
wire \flash_seq_read_ardin[8]~q ;
wire \Add0~15 ;
wire \Add0~16_combout ;
wire \Selector31~0_combout ;
wire \Selector31~1_combout ;
wire \flash_seq_read_ardin[9]~q ;
wire \Add0~17 ;
wire \Add0~18_combout ;
wire \Selector30~0_combout ;
wire \Selector30~1_combout ;
wire \flash_seq_read_ardin[10]~q ;
wire \Add0~19 ;
wire \Add0~20_combout ;
wire \Selector29~0_combout ;
wire \Selector29~1_combout ;
wire \flash_seq_read_ardin[11]~q ;
wire \Add0~21 ;
wire \Add0~22_combout ;
wire \Selector28~0_combout ;
wire \Selector28~1_combout ;
wire \flash_seq_read_ardin[12]~q ;
wire \Add0~23 ;
wire \Add0~24_combout ;
wire \Selector27~0_combout ;
wire \Selector27~1_combout ;
wire \flash_seq_read_ardin[13]~q ;
wire \Add0~25 ;
wire \Add0~26_combout ;
wire \Selector26~0_combout ;
wire \Selector26~1_combout ;
wire \flash_seq_read_ardin[14]~q ;
wire \Add0~27 ;
wire \Add0~28_combout ;
wire \Selector25~0_combout ;
wire \Selector25~1_combout ;
wire \flash_seq_read_ardin[15]~q ;
wire \Add0~29 ;
wire \Add0~30_combout ;
wire \Selector24~0_combout ;
wire \Selector24~1_combout ;
wire \flash_seq_read_ardin[16]~q ;
wire \Add0~31 ;
wire \Add0~32_combout ;
wire \Selector39~1_combout ;
wire \flash_seq_read_ardin[1]~q ;
wire \flash_page_addr~1_combout ;
wire \flash_page_addr[1]~q ;
wire \flash_addr_wire_neg_reg~1_combout ;
wire \flash_page_addr~2_combout ;
wire \flash_page_addr[2]~q ;
wire \flash_addr_wire_neg_reg~2_combout ;
wire \flash_page_addr~3_combout ;
wire \flash_page_addr[3]~q ;
wire \flash_addr_wire_neg_reg~3_combout ;
wire \flash_page_addr~4_combout ;
wire \flash_page_addr[4]~q ;
wire \flash_addr_wire_neg_reg~4_combout ;
wire \flash_page_addr~5_combout ;
wire \flash_page_addr[5]~q ;
wire \flash_addr_wire_neg_reg~5_combout ;
wire \flash_page_addr~6_combout ;
wire \flash_page_addr[6]~q ;
wire \flash_addr_wire_neg_reg~6_combout ;
wire \flash_page_addr~7_combout ;
wire \flash_page_addr[7]~q ;
wire \flash_addr_wire_neg_reg~7_combout ;
wire \flash_page_addr~8_combout ;
wire \flash_page_addr[8]~q ;
wire \flash_addr_wire_neg_reg~8_combout ;
wire \flash_page_addr[9]~q ;
wire \flash_addr_wire_neg_reg~9_combout ;
wire \flash_page_addr[10]~q ;
wire \flash_addr_wire_neg_reg~10_combout ;
wire \flash_page_addr[11]~q ;
wire \flash_addr_wire_neg_reg~11_combout ;
wire \flash_page_addr[12]~q ;
wire \flash_addr_wire_neg_reg~12_combout ;
wire \flash_page_addr[13]~q ;
wire \flash_addr_wire_neg_reg~13_combout ;
wire \flash_page_addr[14]~q ;
wire \flash_addr_wire_neg_reg~14_combout ;
wire \flash_page_addr[15]~q ;
wire \flash_addr_wire_neg_reg~15_combout ;
wire \flash_page_addr[16]~q ;
wire \flash_addr_wire_neg_reg~16_combout ;
wire \flash_page_addr[17]~q ;
wire \flash_addr_wire_neg_reg~17_combout ;
wire \Selector8~0_combout ;
wire \flash_drshft_reg~q ;
wire \flash_drshft_neg_reg~0_combout ;
wire \flash_drshft_neg_reg~q ;


ULA_UFM_altera_onchip_flash_convert_address address_convertor(
	.flash_read_addr_9(\flash_read_addr[9]~0_combout ),
	.flash_read_addr_13(\flash_read_addr[13]~1_combout ),
	.flash_read_addr_12(\flash_read_addr[12]~2_combout ),
	.flash_read_addr_11(\flash_read_addr[11]~3_combout ),
	.flash_read_addr_16(\flash_read_addr[16]~4_combout ),
	.flash_read_addr_15(\flash_read_addr[15]~5_combout ),
	.flash_read_addr_14(\flash_read_addr[14]~6_combout ),
	.Add0(\address_convertor|Add0~2_combout ),
	.flash_read_addr_10(\flash_read_addr[10]~7_combout ),
	.Add01(\address_convertor|Add0~5_combout ),
	.Add02(\address_convertor|Add0~8_combout ),
	.Add03(\address_convertor|Add0~11_combout ),
	.Add04(\address_convertor|Add0~14_combout ),
	.Add05(\address_convertor|Add0~17_combout ),
	.Add06(\address_convertor|Add0~20_combout ),
	.Add07(\address_convertor|Add0~23_combout ),
	.Add08(\address_convertor|Add0~26_combout ));

fiftyfivenm_lcell_comb \flash_read_addr[9]~0 (
	.dataa(\flash_seq_read_ardin[9]~q ),
	.datab(avmm_data_addr_9),
	.datac(gnd),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\flash_read_addr[9]~0_combout ),
	.cout());
defparam \flash_read_addr[9]~0 .lut_mask = 16'hAACC;
defparam \flash_read_addr[9]~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \flash_read_addr[13]~1 (
	.dataa(\flash_seq_read_ardin[13]~q ),
	.datab(avmm_data_addr_13),
	.datac(gnd),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\flash_read_addr[13]~1_combout ),
	.cout());
defparam \flash_read_addr[13]~1 .lut_mask = 16'hAACC;
defparam \flash_read_addr[13]~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \flash_read_addr[12]~2 (
	.dataa(\flash_seq_read_ardin[12]~q ),
	.datab(avmm_data_addr_12),
	.datac(gnd),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\flash_read_addr[12]~2_combout ),
	.cout());
defparam \flash_read_addr[12]~2 .lut_mask = 16'hAACC;
defparam \flash_read_addr[12]~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \flash_read_addr[11]~3 (
	.dataa(\flash_seq_read_ardin[11]~q ),
	.datab(avmm_data_addr_11),
	.datac(gnd),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\flash_read_addr[11]~3_combout ),
	.cout());
defparam \flash_read_addr[11]~3 .lut_mask = 16'hAACC;
defparam \flash_read_addr[11]~3 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \flash_read_addr[16]~4 (
	.dataa(\flash_seq_read_ardin[16]~q ),
	.datab(avmm_data_addr_16),
	.datac(gnd),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\flash_read_addr[16]~4_combout ),
	.cout());
defparam \flash_read_addr[16]~4 .lut_mask = 16'hAACC;
defparam \flash_read_addr[16]~4 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \flash_read_addr[15]~5 (
	.dataa(\flash_seq_read_ardin[15]~q ),
	.datab(avmm_data_addr_15),
	.datac(gnd),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\flash_read_addr[15]~5_combout ),
	.cout());
defparam \flash_read_addr[15]~5 .lut_mask = 16'hAACC;
defparam \flash_read_addr[15]~5 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \flash_read_addr[14]~6 (
	.dataa(\flash_seq_read_ardin[14]~q ),
	.datab(avmm_data_addr_14),
	.datac(gnd),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\flash_read_addr[14]~6_combout ),
	.cout());
defparam \flash_read_addr[14]~6 .lut_mask = 16'hAACC;
defparam \flash_read_addr[14]~6 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \flash_read_addr[10]~7 (
	.dataa(\flash_seq_read_ardin[10]~q ),
	.datab(avmm_data_addr_10),
	.datac(gnd),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\flash_read_addr[10]~7_combout ),
	.cout());
defparam \flash_read_addr[10]~7 .lut_mask = 16'hAACC;
defparam \flash_read_addr[10]~7 .sum_lutc_input = "datac";

dffeas avmm_readdatavalid_reg(
	.clk(clock),
	.d(\Selector51~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdatavalid_reg1),
	.prn(vcc));
defparam avmm_readdatavalid_reg.is_wysiwyg = "true";
defparam avmm_readdatavalid_reg.power_up = "low";

dffeas \avmm_readdata[0] (
	.clk(clock),
	.d(\avmm_readdata~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_0),
	.prn(vcc));
defparam \avmm_readdata[0] .is_wysiwyg = "true";
defparam \avmm_readdata[0] .power_up = "low";

dffeas \avmm_readdata[1] (
	.clk(clock),
	.d(\avmm_readdata~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_1),
	.prn(vcc));
defparam \avmm_readdata[1] .is_wysiwyg = "true";
defparam \avmm_readdata[1] .power_up = "low";

dffeas \avmm_readdata[2] (
	.clk(clock),
	.d(\avmm_readdata~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_2),
	.prn(vcc));
defparam \avmm_readdata[2] .is_wysiwyg = "true";
defparam \avmm_readdata[2] .power_up = "low";

dffeas \avmm_readdata[3] (
	.clk(clock),
	.d(\avmm_readdata~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_3),
	.prn(vcc));
defparam \avmm_readdata[3] .is_wysiwyg = "true";
defparam \avmm_readdata[3] .power_up = "low";

dffeas \avmm_readdata[4] (
	.clk(clock),
	.d(\avmm_readdata~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_4),
	.prn(vcc));
defparam \avmm_readdata[4] .is_wysiwyg = "true";
defparam \avmm_readdata[4] .power_up = "low";

dffeas \avmm_readdata[5] (
	.clk(clock),
	.d(\avmm_readdata~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_5),
	.prn(vcc));
defparam \avmm_readdata[5] .is_wysiwyg = "true";
defparam \avmm_readdata[5] .power_up = "low";

dffeas \avmm_readdata[6] (
	.clk(clock),
	.d(\avmm_readdata~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_6),
	.prn(vcc));
defparam \avmm_readdata[6] .is_wysiwyg = "true";
defparam \avmm_readdata[6] .power_up = "low";

dffeas \avmm_readdata[7] (
	.clk(clock),
	.d(\avmm_readdata~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_7),
	.prn(vcc));
defparam \avmm_readdata[7] .is_wysiwyg = "true";
defparam \avmm_readdata[7] .power_up = "low";

dffeas \avmm_readdata[8] (
	.clk(clock),
	.d(\avmm_readdata~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_8),
	.prn(vcc));
defparam \avmm_readdata[8] .is_wysiwyg = "true";
defparam \avmm_readdata[8] .power_up = "low";

dffeas \avmm_readdata[9] (
	.clk(clock),
	.d(\avmm_readdata~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_9),
	.prn(vcc));
defparam \avmm_readdata[9] .is_wysiwyg = "true";
defparam \avmm_readdata[9] .power_up = "low";

dffeas \avmm_readdata[10] (
	.clk(clock),
	.d(\avmm_readdata~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_10),
	.prn(vcc));
defparam \avmm_readdata[10] .is_wysiwyg = "true";
defparam \avmm_readdata[10] .power_up = "low";

dffeas \avmm_readdata[11] (
	.clk(clock),
	.d(\avmm_readdata~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_11),
	.prn(vcc));
defparam \avmm_readdata[11] .is_wysiwyg = "true";
defparam \avmm_readdata[11] .power_up = "low";

dffeas \avmm_readdata[12] (
	.clk(clock),
	.d(\avmm_readdata~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_12),
	.prn(vcc));
defparam \avmm_readdata[12] .is_wysiwyg = "true";
defparam \avmm_readdata[12] .power_up = "low";

dffeas \avmm_readdata[13] (
	.clk(clock),
	.d(\avmm_readdata~13_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_13),
	.prn(vcc));
defparam \avmm_readdata[13] .is_wysiwyg = "true";
defparam \avmm_readdata[13] .power_up = "low";

dffeas \avmm_readdata[14] (
	.clk(clock),
	.d(\avmm_readdata~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_14),
	.prn(vcc));
defparam \avmm_readdata[14] .is_wysiwyg = "true";
defparam \avmm_readdata[14] .power_up = "low";

dffeas \avmm_readdata[15] (
	.clk(clock),
	.d(\avmm_readdata~15_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_15),
	.prn(vcc));
defparam \avmm_readdata[15] .is_wysiwyg = "true";
defparam \avmm_readdata[15] .power_up = "low";

dffeas \avmm_readdata[16] (
	.clk(clock),
	.d(\avmm_readdata~16_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_16),
	.prn(vcc));
defparam \avmm_readdata[16] .is_wysiwyg = "true";
defparam \avmm_readdata[16] .power_up = "low";

dffeas \avmm_readdata[17] (
	.clk(clock),
	.d(\avmm_readdata~17_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_17),
	.prn(vcc));
defparam \avmm_readdata[17] .is_wysiwyg = "true";
defparam \avmm_readdata[17] .power_up = "low";

dffeas \avmm_readdata[18] (
	.clk(clock),
	.d(\avmm_readdata~18_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_18),
	.prn(vcc));
defparam \avmm_readdata[18] .is_wysiwyg = "true";
defparam \avmm_readdata[18] .power_up = "low";

dffeas \avmm_readdata[19] (
	.clk(clock),
	.d(\avmm_readdata~19_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_19),
	.prn(vcc));
defparam \avmm_readdata[19] .is_wysiwyg = "true";
defparam \avmm_readdata[19] .power_up = "low";

dffeas \avmm_readdata[20] (
	.clk(clock),
	.d(\avmm_readdata~20_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_20),
	.prn(vcc));
defparam \avmm_readdata[20] .is_wysiwyg = "true";
defparam \avmm_readdata[20] .power_up = "low";

dffeas \avmm_readdata[21] (
	.clk(clock),
	.d(\avmm_readdata~21_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_21),
	.prn(vcc));
defparam \avmm_readdata[21] .is_wysiwyg = "true";
defparam \avmm_readdata[21] .power_up = "low";

dffeas \avmm_readdata[22] (
	.clk(clock),
	.d(\avmm_readdata~22_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_22),
	.prn(vcc));
defparam \avmm_readdata[22] .is_wysiwyg = "true";
defparam \avmm_readdata[22] .power_up = "low";

dffeas \avmm_readdata[23] (
	.clk(clock),
	.d(\avmm_readdata~23_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_23),
	.prn(vcc));
defparam \avmm_readdata[23] .is_wysiwyg = "true";
defparam \avmm_readdata[23] .power_up = "low";

dffeas \avmm_readdata[24] (
	.clk(clock),
	.d(\avmm_readdata~24_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_24),
	.prn(vcc));
defparam \avmm_readdata[24] .is_wysiwyg = "true";
defparam \avmm_readdata[24] .power_up = "low";

dffeas \avmm_readdata[25] (
	.clk(clock),
	.d(\avmm_readdata~25_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_25),
	.prn(vcc));
defparam \avmm_readdata[25] .is_wysiwyg = "true";
defparam \avmm_readdata[25] .power_up = "low";

dffeas \avmm_readdata[26] (
	.clk(clock),
	.d(\avmm_readdata~26_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_26),
	.prn(vcc));
defparam \avmm_readdata[26] .is_wysiwyg = "true";
defparam \avmm_readdata[26] .power_up = "low";

dffeas \avmm_readdata[27] (
	.clk(clock),
	.d(\avmm_readdata~27_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_27),
	.prn(vcc));
defparam \avmm_readdata[27] .is_wysiwyg = "true";
defparam \avmm_readdata[27] .power_up = "low";

dffeas \avmm_readdata[28] (
	.clk(clock),
	.d(\avmm_readdata~28_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_28),
	.prn(vcc));
defparam \avmm_readdata[28] .is_wysiwyg = "true";
defparam \avmm_readdata[28] .power_up = "low";

dffeas \avmm_readdata[29] (
	.clk(clock),
	.d(\avmm_readdata~29_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_29),
	.prn(vcc));
defparam \avmm_readdata[29] .is_wysiwyg = "true";
defparam \avmm_readdata[29] .power_up = "low";

dffeas \avmm_readdata[30] (
	.clk(clock),
	.d(\avmm_readdata~30_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_30),
	.prn(vcc));
defparam \avmm_readdata[30] .is_wysiwyg = "true";
defparam \avmm_readdata[30] .power_up = "low";

dffeas \avmm_readdata[31] (
	.clk(clock),
	.d(\avmm_readdata~31_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(avmm_readdata_31),
	.prn(vcc));
defparam \avmm_readdata[31] .is_wysiwyg = "true";
defparam \avmm_readdata[31] .power_up = "low";

fiftyfivenm_lcell_comb \avmm_waitrequest~1 (
	.dataa(\avmm_waitrequest~0_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(avmm_waitrequest),
	.cout());
defparam \avmm_waitrequest~1 .lut_mask = 16'hAAFF;
defparam \avmm_waitrequest~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \flash_arclk~0 (
	.dataa(clock),
	.datab(\enable_arclk_neg_pos_reg~q ),
	.datac(gnd),
	.datad(\enable_arclk_neg_reg~q ),
	.cin(gnd),
	.combout(flash_arclk),
	.cout());
defparam \flash_arclk~0 .lut_mask = 16'hEEFF;
defparam \flash_arclk~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \flash_drclk~0 (
	.dataa(clock),
	.datab(\enable_drclk_neg_pos_reg~q ),
	.datac(gnd),
	.datad(\enable_drclk_neg_reg~q ),
	.cin(gnd),
	.combout(flash_drclk),
	.cout());
defparam \flash_drclk~0 .lut_mask = 16'hEEFF;
defparam \flash_drclk~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb flash_xe_ye(
	.dataa(avmm_data_read),
	.datab(\read_state.READ_STATE_IDLE~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(flash_xe_ye1),
	.cout());
defparam flash_xe_ye.lut_mask = 16'hEEEE;
defparam flash_xe_ye.sum_lutc_input = "datac";

dffeas flash_se_neg_reg(
	.clk(!clock),
	.d(\flash_se_neg_reg~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(flash_se_neg_reg1),
	.prn(vcc));
defparam flash_se_neg_reg.is_wysiwyg = "true";
defparam flash_se_neg_reg.power_up = "low";

dffeas \flash_addr_wire_neg_reg[0] (
	.clk(!clock),
	.d(\flash_addr_wire_neg_reg~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(flash_addr_wire_neg_reg_0),
	.prn(vcc));
defparam \flash_addr_wire_neg_reg[0] .is_wysiwyg = "true";
defparam \flash_addr_wire_neg_reg[0] .power_up = "low";

dffeas \flash_addr_wire_neg_reg[1] (
	.clk(!clock),
	.d(\flash_addr_wire_neg_reg~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(flash_addr_wire_neg_reg_1),
	.prn(vcc));
defparam \flash_addr_wire_neg_reg[1] .is_wysiwyg = "true";
defparam \flash_addr_wire_neg_reg[1] .power_up = "low";

dffeas \flash_addr_wire_neg_reg[2] (
	.clk(!clock),
	.d(\flash_addr_wire_neg_reg~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(flash_addr_wire_neg_reg_2),
	.prn(vcc));
defparam \flash_addr_wire_neg_reg[2] .is_wysiwyg = "true";
defparam \flash_addr_wire_neg_reg[2] .power_up = "low";

dffeas \flash_addr_wire_neg_reg[3] (
	.clk(!clock),
	.d(\flash_addr_wire_neg_reg~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(flash_addr_wire_neg_reg_3),
	.prn(vcc));
defparam \flash_addr_wire_neg_reg[3] .is_wysiwyg = "true";
defparam \flash_addr_wire_neg_reg[3] .power_up = "low";

dffeas \flash_addr_wire_neg_reg[4] (
	.clk(!clock),
	.d(\flash_addr_wire_neg_reg~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(flash_addr_wire_neg_reg_4),
	.prn(vcc));
defparam \flash_addr_wire_neg_reg[4] .is_wysiwyg = "true";
defparam \flash_addr_wire_neg_reg[4] .power_up = "low";

dffeas \flash_addr_wire_neg_reg[5] (
	.clk(!clock),
	.d(\flash_addr_wire_neg_reg~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(flash_addr_wire_neg_reg_5),
	.prn(vcc));
defparam \flash_addr_wire_neg_reg[5] .is_wysiwyg = "true";
defparam \flash_addr_wire_neg_reg[5] .power_up = "low";

dffeas \flash_addr_wire_neg_reg[6] (
	.clk(!clock),
	.d(\flash_addr_wire_neg_reg~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(flash_addr_wire_neg_reg_6),
	.prn(vcc));
defparam \flash_addr_wire_neg_reg[6] .is_wysiwyg = "true";
defparam \flash_addr_wire_neg_reg[6] .power_up = "low";

dffeas \flash_addr_wire_neg_reg[7] (
	.clk(!clock),
	.d(\flash_addr_wire_neg_reg~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(flash_addr_wire_neg_reg_7),
	.prn(vcc));
defparam \flash_addr_wire_neg_reg[7] .is_wysiwyg = "true";
defparam \flash_addr_wire_neg_reg[7] .power_up = "low";

dffeas \flash_addr_wire_neg_reg[8] (
	.clk(!clock),
	.d(\flash_addr_wire_neg_reg~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(flash_addr_wire_neg_reg_8),
	.prn(vcc));
defparam \flash_addr_wire_neg_reg[8] .is_wysiwyg = "true";
defparam \flash_addr_wire_neg_reg[8] .power_up = "low";

dffeas \flash_addr_wire_neg_reg[9] (
	.clk(!clock),
	.d(\flash_addr_wire_neg_reg~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(flash_addr_wire_neg_reg_9),
	.prn(vcc));
defparam \flash_addr_wire_neg_reg[9] .is_wysiwyg = "true";
defparam \flash_addr_wire_neg_reg[9] .power_up = "low";

dffeas \flash_addr_wire_neg_reg[10] (
	.clk(!clock),
	.d(\flash_addr_wire_neg_reg~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(flash_addr_wire_neg_reg_10),
	.prn(vcc));
defparam \flash_addr_wire_neg_reg[10] .is_wysiwyg = "true";
defparam \flash_addr_wire_neg_reg[10] .power_up = "low";

dffeas \flash_addr_wire_neg_reg[11] (
	.clk(!clock),
	.d(\flash_addr_wire_neg_reg~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(flash_addr_wire_neg_reg_11),
	.prn(vcc));
defparam \flash_addr_wire_neg_reg[11] .is_wysiwyg = "true";
defparam \flash_addr_wire_neg_reg[11] .power_up = "low";

dffeas \flash_addr_wire_neg_reg[12] (
	.clk(!clock),
	.d(\flash_addr_wire_neg_reg~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(flash_addr_wire_neg_reg_12),
	.prn(vcc));
defparam \flash_addr_wire_neg_reg[12] .is_wysiwyg = "true";
defparam \flash_addr_wire_neg_reg[12] .power_up = "low";

dffeas \flash_addr_wire_neg_reg[13] (
	.clk(!clock),
	.d(\flash_addr_wire_neg_reg~13_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(flash_addr_wire_neg_reg_13),
	.prn(vcc));
defparam \flash_addr_wire_neg_reg[13] .is_wysiwyg = "true";
defparam \flash_addr_wire_neg_reg[13] .power_up = "low";

dffeas \flash_addr_wire_neg_reg[14] (
	.clk(!clock),
	.d(\flash_addr_wire_neg_reg~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(flash_addr_wire_neg_reg_14),
	.prn(vcc));
defparam \flash_addr_wire_neg_reg[14] .is_wysiwyg = "true";
defparam \flash_addr_wire_neg_reg[14] .power_up = "low";

dffeas \flash_addr_wire_neg_reg[15] (
	.clk(!clock),
	.d(\flash_addr_wire_neg_reg~15_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(flash_addr_wire_neg_reg_15),
	.prn(vcc));
defparam \flash_addr_wire_neg_reg[15] .is_wysiwyg = "true";
defparam \flash_addr_wire_neg_reg[15] .power_up = "low";

dffeas \flash_addr_wire_neg_reg[16] (
	.clk(!clock),
	.d(\flash_addr_wire_neg_reg~16_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(flash_addr_wire_neg_reg_16),
	.prn(vcc));
defparam \flash_addr_wire_neg_reg[16] .is_wysiwyg = "true";
defparam \flash_addr_wire_neg_reg[16] .power_up = "low";

dffeas \flash_addr_wire_neg_reg[17] (
	.clk(!clock),
	.d(\flash_addr_wire_neg_reg~17_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(flash_addr_wire_neg_reg_17),
	.prn(vcc));
defparam \flash_addr_wire_neg_reg[17] .is_wysiwyg = "true";
defparam \flash_addr_wire_neg_reg[17] .power_up = "low";

fiftyfivenm_lcell_comb \flash_drshft_neg_reg~_wirecell (
	.dataa(\flash_drshft_neg_reg~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(flash_drshft_neg_reg1),
	.cout());
defparam \flash_drshft_neg_reg~_wirecell .lut_mask = 16'h5555;
defparam \flash_drshft_neg_reg~_wirecell .sum_lutc_input = "datac";

dffeas reset_n_reg1(
	.clk(clock),
	.d(vcc),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\reset_n_reg1~q ),
	.prn(vcc));
defparam reset_n_reg1.is_wysiwyg = "true";
defparam reset_n_reg1.power_up = "low";

dffeas reset_n_reg2(
	.clk(clock),
	.d(\reset_n_reg1~q ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\reset_n_reg2~q ),
	.prn(vcc));
defparam reset_n_reg2.is_wysiwyg = "true";
defparam reset_n_reg2.power_up = "low";

fiftyfivenm_lcell_comb \read_state~20 (
	.dataa(\reset_n_reg2~q ),
	.datab(\read_state.READ_STATE_READY~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\read_state~20_combout ),
	.cout());
defparam \read_state~20 .lut_mask = 16'hEEEE;
defparam \read_state~20 .sum_lutc_input = "datac";

dffeas \read_state.READ_STATE_FINAL (
	.clk(clock),
	.d(\read_state~20_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\read_state.READ_STATE_FINAL~q ),
	.prn(vcc));
defparam \read_state.READ_STATE_FINAL .is_wysiwyg = "true";
defparam \read_state.READ_STATE_FINAL .power_up = "low";

fiftyfivenm_lcell_comb \Selector0~0 (
	.dataa(\read_state.READ_STATE_FINAL~q ),
	.datab(\read_state.READ_STATE_IDLE~q ),
	.datac(\avmm_read_state~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector0~0_combout ),
	.cout());
defparam \Selector0~0 .lut_mask = 16'hFEFE;
defparam \Selector0~0 .sum_lutc_input = "datac";

dffeas avmm_read_state(
	.clk(clock),
	.d(\Selector0~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\reset_n_reg2~q ),
	.q(\avmm_read_state~q ),
	.prn(vcc));
defparam avmm_read_state.is_wysiwyg = "true";
defparam avmm_read_state.power_up = "low";

fiftyfivenm_lcell_comb \Selector50~0 (
	.dataa(\avmm_readdata_ready~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(\avmm_read_valid_state.READ_VALID_IDLE~q ),
	.cin(gnd),
	.combout(\Selector50~0_combout ),
	.cout());
defparam \Selector50~0 .lut_mask = 16'hAAFF;
defparam \Selector50~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector47~0 (
	.dataa(\Selector50~0_combout ),
	.datab(\Equal1~0_combout ),
	.datac(\avmm_read_valid_state.READ_VALID_READING~q ),
	.datad(\LessThan2~0_combout ),
	.cin(gnd),
	.combout(\Selector47~0_combout ),
	.cout());
defparam \Selector47~0 .lut_mask = 16'hFEFF;
defparam \Selector47~0 .sum_lutc_input = "datac";

dffeas \avmm_read_valid_state.READ_VALID_PRE_READING (
	.clk(clock),
	.d(\Selector47~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\avmm_read_valid_state.READ_VALID_PRE_READING~q ),
	.prn(vcc));
defparam \avmm_read_valid_state.READ_VALID_PRE_READING .is_wysiwyg = "true";
defparam \avmm_read_valid_state.READ_VALID_PRE_READING .power_up = "low";

fiftyfivenm_lcell_comb \Selector46~0 (
	.dataa(\avmm_read_valid_state.READ_VALID_PRE_READING~q ),
	.datab(\LessThan2~0_combout ),
	.datac(\Equal1~0_combout ),
	.datad(\avmm_read_valid_state.READ_VALID_READING~q ),
	.cin(gnd),
	.combout(\Selector46~0_combout ),
	.cout());
defparam \Selector46~0 .lut_mask = 16'hFFFE;
defparam \Selector46~0 .sum_lutc_input = "datac";

dffeas \avmm_read_valid_state.READ_VALID_READING (
	.clk(clock),
	.d(\Selector46~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\avmm_read_valid_state.READ_VALID_READING~q ),
	.prn(vcc));
defparam \avmm_read_valid_state.READ_VALID_READING .is_wysiwyg = "true";
defparam \avmm_read_valid_state.READ_VALID_READING .power_up = "low";

fiftyfivenm_lcell_comb \data_count~2 (
	.dataa(\data_count[0]~q ),
	.datab(\reset_n_reg2~q ),
	.datac(\LessThan2~0_combout ),
	.datad(\avmm_read_valid_state.READ_VALID_READING~q ),
	.cin(gnd),
	.combout(\data_count~2_combout ),
	.cout());
defparam \data_count~2 .lut_mask = 16'hFFFD;
defparam \data_count~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_count[0]~1 (
	.dataa(\reset_n_reg2~q ),
	.datab(\Equal1~0_combout ),
	.datac(\avmm_read_valid_state.READ_VALID_READING~q ),
	.datad(\Selector50~0_combout ),
	.cin(gnd),
	.combout(\data_count[0]~1_combout ),
	.cout());
defparam \data_count[0]~1 .lut_mask = 16'hFFFD;
defparam \data_count[0]~1 .sum_lutc_input = "datac";

dffeas \data_count[0] (
	.clk(clock),
	.d(\data_count~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\data_count[0]~1_combout ),
	.q(\data_count[0]~q ),
	.prn(vcc));
defparam \data_count[0] .is_wysiwyg = "true";
defparam \data_count[0] .power_up = "low";

fiftyfivenm_lcell_comb \Add3~0 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\data_count[1]~q ),
	.datad(\data_count[0]~q ),
	.cin(gnd),
	.combout(\Add3~0_combout ),
	.cout());
defparam \Add3~0 .lut_mask = 16'h0FF0;
defparam \Add3~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_count~0 (
	.dataa(\Add3~0_combout ),
	.datab(\reset_n_reg2~q ),
	.datac(\LessThan2~0_combout ),
	.datad(\avmm_read_valid_state.READ_VALID_READING~q ),
	.cin(gnd),
	.combout(\data_count~0_combout ),
	.cout());
defparam \data_count~0 .lut_mask = 16'hFFFD;
defparam \data_count~0 .sum_lutc_input = "datac";

dffeas \data_count[1] (
	.clk(clock),
	.d(\data_count~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\data_count[0]~1_combout ),
	.q(\data_count[1]~q ),
	.prn(vcc));
defparam \data_count[1] .is_wysiwyg = "true";
defparam \data_count[1] .power_up = "low";

fiftyfivenm_lcell_comb \data_count~3 (
	.dataa(\data_count[2]~q ),
	.datab(\data_count[1]~q ),
	.datac(\data_count[0]~q ),
	.datad(\avmm_read_valid_state.READ_VALID_READING~q ),
	.cin(gnd),
	.combout(\data_count~3_combout ),
	.cout());
defparam \data_count~3 .lut_mask = 16'h96FF;
defparam \data_count~3 .sum_lutc_input = "datac";

dffeas \data_count[2] (
	.clk(clock),
	.d(\data_count~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(\data_count[0]~1_combout ),
	.q(\data_count[2]~q ),
	.prn(vcc));
defparam \data_count[2] .is_wysiwyg = "true";
defparam \data_count[2] .power_up = "low";

fiftyfivenm_lcell_comb \LessThan2~0 (
	.dataa(\data_count[1]~q ),
	.datab(\data_count[0]~q ),
	.datac(\data_count[2]~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\LessThan2~0_combout ),
	.cout());
defparam \LessThan2~0 .lut_mask = 16'hFEFE;
defparam \LessThan2~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \LessThan2~1 (
	.dataa(\data_count[1]~q ),
	.datab(\data_count[0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\LessThan2~1_combout ),
	.cout());
defparam \LessThan2~1 .lut_mask = 16'hEEEE;
defparam \LessThan2~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector2~0 (
	.dataa(\read_state.READ_STATE_IDLE~q ),
	.datab(\flash_ardin_align_reg[0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector2~0_combout ),
	.cout());
defparam \Selector2~0 .lut_mask = 16'hEEEE;
defparam \Selector2~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \flash_seq_read_ardin[0]~0 (
	.dataa(\flash_seq_read_ardin[0]~q ),
	.datab(avmm_data_addr_0),
	.datac(gnd),
	.datad(avmm_data_read),
	.cin(gnd),
	.combout(\flash_seq_read_ardin[0]~0_combout ),
	.cout());
defparam \flash_seq_read_ardin[0]~0 .lut_mask = 16'hAACC;
defparam \flash_seq_read_ardin[0]~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector40~0 (
	.dataa(\flash_seq_read_ardin[0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(\read_state.READ_STATE_SETUP~q ),
	.cin(gnd),
	.combout(\Selector40~0_combout ),
	.cout());
defparam \Selector40~0 .lut_mask = 16'hAAFF;
defparam \Selector40~0 .sum_lutc_input = "datac";

dffeas \flash_seq_read_ardin[0] (
	.clk(clock),
	.d(\flash_seq_read_ardin[0]~0_combout ),
	.asdata(\Selector40~0_combout ),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(\read_state.READ_STATE_IDLE~q ),
	.ena(\reset_n_reg2~q ),
	.q(\flash_seq_read_ardin[0]~q ),
	.prn(vcc));
defparam \flash_seq_read_ardin[0] .is_wysiwyg = "true";
defparam \flash_seq_read_ardin[0] .power_up = "low";

dffeas \flash_ardin_align_reg[0] (
	.clk(clock),
	.d(\Selector2~0_combout ),
	.asdata(\flash_seq_read_ardin[0]~q ),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(\read_state.READ_STATE_SETUP~q ),
	.ena(\reset_n_reg2~q ),
	.q(\flash_ardin_align_reg[0]~q ),
	.prn(vcc));
defparam \flash_ardin_align_reg[0] .is_wysiwyg = "true";
defparam \flash_ardin_align_reg[0] .power_up = "low";

fiftyfivenm_lcell_comb \flash_ardin_align_backup_reg~0 (
	.dataa(\avmm_read_valid_state.READ_VALID_IDLE~q ),
	.datab(\Equal1~0_combout ),
	.datac(\avmm_read_valid_state.READ_VALID_READING~q ),
	.datad(\LessThan2~0_combout ),
	.cin(gnd),
	.combout(\flash_ardin_align_backup_reg~0_combout ),
	.cout());
defparam \flash_ardin_align_backup_reg~0 .lut_mask = 16'hFEFF;
defparam \flash_ardin_align_backup_reg~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector50~1 (
	.dataa(\flash_ardin_align_reg[0]~q ),
	.datab(\Selector50~0_combout ),
	.datac(\flash_ardin_align_backup_reg[0]~q ),
	.datad(\flash_ardin_align_backup_reg~0_combout ),
	.cin(gnd),
	.combout(\Selector50~1_combout ),
	.cout());
defparam \Selector50~1 .lut_mask = 16'hB8FF;
defparam \Selector50~1 .sum_lutc_input = "datac";

dffeas \flash_ardin_align_backup_reg[0] (
	.clk(clock),
	.d(\Selector50~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\flash_ardin_align_backup_reg[0]~q ),
	.prn(vcc));
defparam \flash_ardin_align_backup_reg[0] .is_wysiwyg = "true";
defparam \flash_ardin_align_backup_reg[0] .power_up = "low";

fiftyfivenm_lcell_comb \Add4~1 (
	.dataa(\flash_ardin_align_backup_reg[0]~q ),
	.datab(\data_count[0]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add4~1_cout ));
defparam \Add4~1 .lut_mask = 16'h00EE;
defparam \Add4~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Add4~2 (
	.dataa(\data_count[1]~q ),
	.datab(\data_count[0]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add4~1_cout ),
	.combout(\Add4~2_combout ),
	.cout(\Add4~3 ));
defparam \Add4~2 .lut_mask = 16'h966F;
defparam \Add4~2 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Add4~4 (
	.dataa(\data_count[2]~q ),
	.datab(\LessThan2~1_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add4~3 ),
	.combout(\Add4~4_combout ),
	.cout(\Add4~5 ));
defparam \Add4~4 .lut_mask = 16'h966F;
defparam \Add4~4 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Add4~6 (
	.dataa(\data_count[2]~q ),
	.datab(\LessThan2~1_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add4~5 ),
	.combout(\Add4~6_combout ),
	.cout(\Add4~7 ));
defparam \Add4~6 .lut_mask = 16'h967F;
defparam \Add4~6 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Add4~8 (
	.dataa(\data_count[2]~q ),
	.datab(\LessThan2~1_combout ),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add4~7 ),
	.combout(\Add4~8_combout ),
	.cout());
defparam \Add4~8 .lut_mask = 16'h9696;
defparam \Add4~8 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \avmm_burstcount_reg[0]~4 (
	.dataa(\Add4~6_combout ),
	.datab(\Add4~8_combout ),
	.datac(\Add4~2_combout ),
	.datad(\Add4~4_combout ),
	.cin(gnd),
	.combout(\avmm_burstcount_reg[0]~4_combout ),
	.cout());
defparam \avmm_burstcount_reg[0]~4 .lut_mask = 16'hFFFE;
defparam \avmm_burstcount_reg[0]~4 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_burstcount_reg[0]~5 (
	.dataa(\LessThan2~0_combout ),
	.datab(\Equal1~0_combout ),
	.datac(\avmm_read_valid_state.READ_VALID_READING~q ),
	.datad(\avmm_burstcount_reg[0]~4_combout ),
	.cin(gnd),
	.combout(\avmm_burstcount_reg[0]~5_combout ),
	.cout());
defparam \avmm_burstcount_reg[0]~5 .lut_mask = 16'hFFBF;
defparam \avmm_burstcount_reg[0]~5 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_burstcount_reg[0]~11 (
	.dataa(\avmm_readdata_ready~q ),
	.datab(\avmm_read_valid_state.READ_VALID_IDLE~q ),
	.datac(\reset_n_reg2~q ),
	.datad(\avmm_burstcount_reg[0]~5_combout ),
	.cin(gnd),
	.combout(\avmm_burstcount_reg[0]~11_combout ),
	.cout());
defparam \avmm_burstcount_reg[0]~11 .lut_mask = 16'hFBFF;
defparam \avmm_burstcount_reg[0]~11 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_burstcount_input_reg~0 (
	.dataa(avmm_data_read),
	.datab(avmm_data_burstcount_0),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\avmm_burstcount_input_reg~0_combout ),
	.cout());
defparam \avmm_burstcount_input_reg~0 .lut_mask = 16'hEEEE;
defparam \avmm_burstcount_input_reg~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_burstcount_input_reg[0]~1 (
	.dataa(\reset_n_reg2~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\avmm_burstcount_input_reg[0]~1_combout ),
	.cout());
defparam \avmm_burstcount_input_reg[0]~1 .lut_mask = 16'hAAFF;
defparam \avmm_burstcount_input_reg[0]~1 .sum_lutc_input = "datac";

dffeas \avmm_burstcount_input_reg[0] (
	.clk(clock),
	.d(\avmm_burstcount_input_reg~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\avmm_burstcount_input_reg[0]~1_combout ),
	.q(\avmm_burstcount_input_reg[0]~q ),
	.prn(vcc));
defparam \avmm_burstcount_input_reg[0] .is_wysiwyg = "true";
defparam \avmm_burstcount_input_reg[0] .power_up = "low";

fiftyfivenm_lcell_comb \avmm_burstcount_reg[0]~6 (
	.dataa(gnd),
	.datab(\avmm_read_valid_state.READ_VALID_READING~q ),
	.datac(\avmm_burstcount_input_reg[0]~q ),
	.datad(\avmm_burstcount_reg[0]~q ),
	.cin(gnd),
	.combout(\avmm_burstcount_reg[0]~6_combout ),
	.cout());
defparam \avmm_burstcount_reg[0]~6 .lut_mask = 16'h0C3F;
defparam \avmm_burstcount_reg[0]~6 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_burstcount_reg[0]~12 (
	.dataa(\avmm_readdata_ready~q ),
	.datab(\avmm_read_valid_state.READ_VALID_IDLE~q ),
	.datac(\reset_n_reg2~q ),
	.datad(\avmm_burstcount_reg[0]~5_combout ),
	.cin(gnd),
	.combout(\avmm_burstcount_reg[0]~12_combout ),
	.cout());
defparam \avmm_burstcount_reg[0]~12 .lut_mask = 16'hFFFD;
defparam \avmm_burstcount_reg[0]~12 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_burstcount_reg[0]~7 (
	.dataa(\avmm_burstcount_reg[0]~q ),
	.datab(\avmm_burstcount_reg[0]~11_combout ),
	.datac(\avmm_burstcount_reg[0]~6_combout ),
	.datad(\avmm_burstcount_reg[0]~12_combout ),
	.cin(gnd),
	.combout(\avmm_burstcount_reg[0]~7_combout ),
	.cout());
defparam \avmm_burstcount_reg[0]~7 .lut_mask = 16'hFFFE;
defparam \avmm_burstcount_reg[0]~7 .sum_lutc_input = "datac";

dffeas \avmm_burstcount_reg[0] (
	.clk(clock),
	.d(\avmm_burstcount_reg[0]~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\avmm_burstcount_reg[0]~q ),
	.prn(vcc));
defparam \avmm_burstcount_reg[0] .is_wysiwyg = "true";
defparam \avmm_burstcount_reg[0] .power_up = "low";

fiftyfivenm_lcell_comb \avmm_burstcount_reg[1]~8 (
	.dataa(\avmm_read_valid_state.READ_VALID_READING~q ),
	.datab(\avmm_burstcount_reg[0]~q ),
	.datac(\avmm_burstcount_reg[1]~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\avmm_burstcount_reg[1]~8_combout ),
	.cout());
defparam \avmm_burstcount_reg[1]~8 .lut_mask = 16'hBEBE;
defparam \avmm_burstcount_reg[1]~8 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_burstcount_input_reg~2 (
	.dataa(avmm_data_read),
	.datab(avmm_data_burstcount_1),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\avmm_burstcount_input_reg~2_combout ),
	.cout());
defparam \avmm_burstcount_input_reg~2 .lut_mask = 16'hEEEE;
defparam \avmm_burstcount_input_reg~2 .sum_lutc_input = "datac";

dffeas \avmm_burstcount_input_reg[1] (
	.clk(clock),
	.d(\avmm_burstcount_input_reg~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\avmm_burstcount_input_reg[0]~1_combout ),
	.q(\avmm_burstcount_input_reg[1]~q ),
	.prn(vcc));
defparam \avmm_burstcount_input_reg[1] .is_wysiwyg = "true";
defparam \avmm_burstcount_input_reg[1] .power_up = "low";

fiftyfivenm_lcell_comb \avmm_burstcount_reg[1]~9 (
	.dataa(\avmm_burstcount_reg[1]~8_combout ),
	.datab(\avmm_burstcount_input_reg[0]~q ),
	.datac(\avmm_burstcount_input_reg[1]~q ),
	.datad(\avmm_read_valid_state.READ_VALID_READING~q ),
	.cin(gnd),
	.combout(\avmm_burstcount_reg[1]~9_combout ),
	.cout());
defparam \avmm_burstcount_reg[1]~9 .lut_mask = 16'hBEFF;
defparam \avmm_burstcount_reg[1]~9 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_burstcount_reg[1]~10 (
	.dataa(\avmm_burstcount_reg[1]~q ),
	.datab(\avmm_burstcount_reg[0]~11_combout ),
	.datac(\avmm_burstcount_reg[1]~9_combout ),
	.datad(\avmm_burstcount_reg[0]~12_combout ),
	.cin(gnd),
	.combout(\avmm_burstcount_reg[1]~10_combout ),
	.cout());
defparam \avmm_burstcount_reg[1]~10 .lut_mask = 16'hFFFE;
defparam \avmm_burstcount_reg[1]~10 .sum_lutc_input = "datac";

dffeas \avmm_burstcount_reg[1] (
	.clk(clock),
	.d(\avmm_burstcount_reg[1]~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\avmm_burstcount_reg[1]~q ),
	.prn(vcc));
defparam \avmm_burstcount_reg[1] .is_wysiwyg = "true";
defparam \avmm_burstcount_reg[1] .power_up = "low";

fiftyfivenm_lcell_comb \Equal1~0 (
	.dataa(\avmm_burstcount_reg[0]~q ),
	.datab(\avmm_burstcount_reg[1]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\Equal1~0_combout ),
	.cout());
defparam \Equal1~0 .lut_mask = 16'hEEEE;
defparam \Equal1~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \read_state~22 (
	.dataa(\reset_n_reg2~q ),
	.datab(\read_state.READ_STATE_FINAL~q ),
	.datac(\avmm_read_state~q ),
	.datad(\Equal1~0_combout ),
	.cin(gnd),
	.combout(\read_state~22_combout ),
	.cout());
defparam \read_state~22 .lut_mask = 16'hFEFF;
defparam \read_state~22 .sum_lutc_input = "datac";

dffeas \read_state.READ_STATE_CLEAR (
	.clk(clock),
	.d(\read_state~22_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\read_state.READ_STATE_CLEAR~q ),
	.prn(vcc));
defparam \read_state.READ_STATE_CLEAR .is_wysiwyg = "true";
defparam \read_state.READ_STATE_CLEAR .power_up = "low";

fiftyfivenm_lcell_comb \read_state~18 (
	.dataa(\read_state.READ_STATE_CLEAR~q ),
	.datab(avmm_data_read),
	.datac(\read_state.READ_STATE_IDLE~q ),
	.datad(\reset_n_reg2~q ),
	.cin(gnd),
	.combout(\read_state~18_combout ),
	.cout());
defparam \read_state~18 .lut_mask = 16'hFFFD;
defparam \read_state~18 .sum_lutc_input = "datac";

dffeas \read_state.READ_STATE_IDLE (
	.clk(clock),
	.d(\read_state~18_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\read_state.READ_STATE_IDLE~q ),
	.prn(vcc));
defparam \read_state.READ_STATE_IDLE .is_wysiwyg = "true";
defparam \read_state.READ_STATE_IDLE .power_up = "low";

fiftyfivenm_lcell_comb \read_state~23 (
	.dataa(avmm_data_read),
	.datab(\reset_n_reg2~q ),
	.datac(gnd),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\read_state~23_combout ),
	.cout());
defparam \read_state~23 .lut_mask = 16'hEEFF;
defparam \read_state~23 .sum_lutc_input = "datac";

dffeas \read_state.READ_STATE_ADDR (
	.clk(clock),
	.d(\read_state~23_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\read_state.READ_STATE_ADDR~q ),
	.prn(vcc));
defparam \read_state.READ_STATE_ADDR .is_wysiwyg = "true";
defparam \read_state.READ_STATE_ADDR .power_up = "low";

fiftyfivenm_lcell_comb \Selector17~0 (
	.dataa(\read_state.READ_STATE_ADDR~q ),
	.datab(\read_state.READ_STATE_FINAL~q ),
	.datac(\Equal1~0_combout ),
	.datad(\avmm_read_state~q ),
	.cin(gnd),
	.combout(\Selector17~0_combout ),
	.cout());
defparam \Selector17~0 .lut_mask = 16'hFEFF;
defparam \Selector17~0 .sum_lutc_input = "datac";

dffeas \read_state.READ_STATE_PULSE_SE (
	.clk(clock),
	.d(\Selector17~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\read_state.READ_STATE_PULSE_SE~q ),
	.prn(vcc));
defparam \read_state.READ_STATE_PULSE_SE .is_wysiwyg = "true";
defparam \read_state.READ_STATE_PULSE_SE .power_up = "low";

fiftyfivenm_lcell_comb \read_state~21 (
	.dataa(\reset_n_reg2~q ),
	.datab(\read_state.READ_STATE_PULSE_SE~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\read_state~21_combout ),
	.cout());
defparam \read_state~21 .lut_mask = 16'hEEEE;
defparam \read_state~21 .sum_lutc_input = "datac";

dffeas \read_state.READ_STATE_SETUP (
	.clk(clock),
	.d(\read_state~21_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\read_state.READ_STATE_SETUP~q ),
	.prn(vcc));
defparam \read_state.READ_STATE_SETUP .is_wysiwyg = "true";
defparam \read_state.READ_STATE_SETUP .power_up = "low";

fiftyfivenm_lcell_comb \Selector5~0 (
	.dataa(\read_state.READ_STATE_IDLE~q ),
	.datab(\read_ctrl_count[0]~q ),
	.datac(\read_state.READ_STATE_SETUP~q ),
	.datad(\read_state.READ_STATE_DUMMY~q ),
	.cin(gnd),
	.combout(\Selector5~0_combout ),
	.cout());
defparam \Selector5~0 .lut_mask = 16'hEFFF;
defparam \Selector5~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector5~1 (
	.dataa(\Selector5~0_combout ),
	.datab(\read_state.READ_STATE_DUMMY~q ),
	.datac(\read_ctrl_count[1]~q ),
	.datad(\read_ctrl_count[0]~q ),
	.cin(gnd),
	.combout(\Selector5~1_combout ),
	.cout());
defparam \Selector5~1 .lut_mask = 16'hEFFE;
defparam \Selector5~1 .sum_lutc_input = "datac";

dffeas \read_ctrl_count[0] (
	.clk(clock),
	.d(\Selector5~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\reset_n_reg2~q ),
	.q(\read_ctrl_count[0]~q ),
	.prn(vcc));
defparam \read_ctrl_count[0] .is_wysiwyg = "true";
defparam \read_ctrl_count[0] .power_up = "low";

fiftyfivenm_lcell_comb \Selector4~0 (
	.dataa(\read_ctrl_count[1]~q ),
	.datab(\read_ctrl_count[0]~q ),
	.datac(\read_state.READ_STATE_IDLE~q ),
	.datad(\read_state.READ_STATE_DUMMY~q ),
	.cin(gnd),
	.combout(\Selector4~0_combout ),
	.cout());
defparam \Selector4~0 .lut_mask = 16'hFAFC;
defparam \Selector4~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector4~1 (
	.dataa(\read_state.READ_STATE_SETUP~q ),
	.datab(\Selector4~0_combout ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector4~1_combout ),
	.cout());
defparam \Selector4~1 .lut_mask = 16'hEEEE;
defparam \Selector4~1 .sum_lutc_input = "datac";

dffeas \read_ctrl_count[1] (
	.clk(clock),
	.d(\Selector4~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\reset_n_reg2~q ),
	.q(\read_ctrl_count[1]~q ),
	.prn(vcc));
defparam \read_ctrl_count[1] .is_wysiwyg = "true";
defparam \read_ctrl_count[1] .power_up = "low";

fiftyfivenm_lcell_comb \Selector13~0 (
	.dataa(\read_state.READ_STATE_SETUP~q ),
	.datab(\read_state.READ_STATE_DUMMY~q ),
	.datac(\read_ctrl_count[1]~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector13~0_combout ),
	.cout());
defparam \Selector13~0 .lut_mask = 16'hFEFE;
defparam \Selector13~0 .sum_lutc_input = "datac";

dffeas \read_state.READ_STATE_DUMMY (
	.clk(clock),
	.d(\Selector13~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\read_state.READ_STATE_DUMMY~q ),
	.prn(vcc));
defparam \read_state.READ_STATE_DUMMY .is_wysiwyg = "true";
defparam \read_state.READ_STATE_DUMMY .power_up = "low";

fiftyfivenm_lcell_comb \read_state~19 (
	.dataa(\reset_n_reg2~q ),
	.datab(\read_state.READ_STATE_DUMMY~q ),
	.datac(gnd),
	.datad(\read_ctrl_count[1]~q ),
	.cin(gnd),
	.combout(\read_state~19_combout ),
	.cout());
defparam \read_state~19 .lut_mask = 16'hEEFF;
defparam \read_state~19 .sum_lutc_input = "datac";

dffeas \read_state.READ_STATE_READY (
	.clk(clock),
	.d(\read_state~19_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\read_state.READ_STATE_READY~q ),
	.prn(vcc));
defparam \read_state.READ_STATE_READY .is_wysiwyg = "true";
defparam \read_state.READ_STATE_READY .power_up = "low";

fiftyfivenm_lcell_comb \Selector1~0 (
	.dataa(\read_state.READ_STATE_IDLE~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(\read_state.READ_STATE_FINAL~q ),
	.cin(gnd),
	.combout(\Selector1~0_combout ),
	.cout());
defparam \Selector1~0 .lut_mask = 16'hAAFF;
defparam \Selector1~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector1~1 (
	.dataa(\avmm_readdata_ready~q ),
	.datab(\read_state.READ_STATE_READY~q ),
	.datac(\Selector1~0_combout ),
	.datad(\avmm_read_state~q ),
	.cin(gnd),
	.combout(\Selector1~1_combout ),
	.cout());
defparam \Selector1~1 .lut_mask = 16'hFEFF;
defparam \Selector1~1 .sum_lutc_input = "datac";

dffeas avmm_readdata_ready(
	.clk(clock),
	.d(\Selector1~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\reset_n_reg2~q ),
	.q(\avmm_readdata_ready~q ),
	.prn(vcc));
defparam avmm_readdata_ready.is_wysiwyg = "true";
defparam avmm_readdata_ready.power_up = "low";

fiftyfivenm_lcell_comb \Selector45~0 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\avmm_read_valid_state.READ_VALID_IDLE~q ),
	.datad(\avmm_readdata_ready~q ),
	.cin(gnd),
	.combout(\Selector45~0_combout ),
	.cout());
defparam \Selector45~0 .lut_mask = 16'h0FFF;
defparam \Selector45~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_read_valid_state~8 (
	.dataa(\Selector45~0_combout ),
	.datab(\avmm_read_valid_state.READ_VALID_READING~q ),
	.datac(\Equal1~0_combout ),
	.datad(\reset_n_reg2~q ),
	.cin(gnd),
	.combout(\avmm_read_valid_state~8_combout ),
	.cout());
defparam \avmm_read_valid_state~8 .lut_mask = 16'hFFF7;
defparam \avmm_read_valid_state~8 .sum_lutc_input = "datac";

dffeas \avmm_read_valid_state.READ_VALID_IDLE (
	.clk(clock),
	.d(\avmm_read_valid_state~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\avmm_read_valid_state.READ_VALID_IDLE~q ),
	.prn(vcc));
defparam \avmm_read_valid_state.READ_VALID_IDLE .is_wysiwyg = "true";
defparam \avmm_read_valid_state.READ_VALID_IDLE .power_up = "low";

fiftyfivenm_lcell_comb \Selector51~2 (
	.dataa(avmm_readdatavalid_reg1),
	.datab(\avmm_read_valid_state.READ_VALID_IDLE~q ),
	.datac(gnd),
	.datad(\avmm_read_valid_state.READ_VALID_READING~q ),
	.cin(gnd),
	.combout(\Selector51~2_combout ),
	.cout());
defparam \Selector51~2 .lut_mask = 16'hEEFF;
defparam \Selector51~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector51~3 (
	.dataa(\Selector51~2_combout ),
	.datab(avmm_readdatavalid_reg1),
	.datac(\Equal1~0_combout ),
	.datad(\LessThan2~0_combout ),
	.cin(gnd),
	.combout(\Selector51~3_combout ),
	.cout());
defparam \Selector51~3 .lut_mask = 16'hFEFF;
defparam \Selector51~3 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector51~4 (
	.dataa(avmm_readdatavalid_reg1),
	.datab(\avmm_read_valid_state.READ_VALID_IDLE~q ),
	.datac(\LessThan2~1_combout ),
	.datad(\data_count[2]~q ),
	.cin(gnd),
	.combout(\Selector51~4_combout ),
	.cout());
defparam \Selector51~4 .lut_mask = 16'hFFFE;
defparam \Selector51~4 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector51~7 (
	.dataa(\avmm_burstcount_reg[0]~q ),
	.datab(\avmm_burstcount_reg[1]~q ),
	.datac(\Add4~2_combout ),
	.datad(\Add4~4_combout ),
	.cin(gnd),
	.combout(\Selector51~7_combout ),
	.cout());
defparam \Selector51~7 .lut_mask = 16'hEFFF;
defparam \Selector51~7 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector51~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add4~6_combout ),
	.datad(\Add4~8_combout ),
	.cin(gnd),
	.combout(\Selector51~5_combout ),
	.cout());
defparam \Selector51~5 .lut_mask = 16'h0FFF;
defparam \Selector51~5 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector51~6 (
	.dataa(\Selector51~3_combout ),
	.datab(\Selector51~4_combout ),
	.datac(\Selector51~7_combout ),
	.datad(\Selector51~5_combout ),
	.cin(gnd),
	.combout(\Selector51~6_combout ),
	.cout());
defparam \Selector51~6 .lut_mask = 16'hFFFE;
defparam \Selector51~6 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector41~0 (
	.dataa(\csr_status_r_pass~q ),
	.datab(\read_state.READ_STATE_IDLE~q ),
	.datac(avmm_data_read),
	.datad(\read_state.READ_STATE_ADDR~q ),
	.cin(gnd),
	.combout(\Selector41~0_combout ),
	.cout());
defparam \Selector41~0 .lut_mask = 16'h8BFF;
defparam \Selector41~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector41~1 (
	.dataa(avmm_data_addr_11),
	.datab(avmm_data_addr_12),
	.datac(avmm_data_addr_13),
	.datad(avmm_data_addr_14),
	.cin(gnd),
	.combout(\Selector41~1_combout ),
	.cout());
defparam \Selector41~1 .lut_mask = 16'h7FFF;
defparam \Selector41~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector41~2 (
	.dataa(\Selector41~1_combout ),
	.datab(gnd),
	.datac(avmm_data_addr_15),
	.datad(avmm_data_addr_16),
	.cin(gnd),
	.combout(\Selector41~2_combout ),
	.cout());
defparam \Selector41~2 .lut_mask = 16'hAFFF;
defparam \Selector41~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector41~3 (
	.dataa(\Selector41~0_combout ),
	.datab(\read_state.READ_STATE_IDLE~q ),
	.datac(\Selector41~2_combout ),
	.datad(\read_state.READ_STATE_ADDR~q ),
	.cin(gnd),
	.combout(\Selector41~3_combout ),
	.cout());
defparam \Selector41~3 .lut_mask = 16'hFFFE;
defparam \Selector41~3 .sum_lutc_input = "datac";

dffeas csr_status_r_pass(
	.clk(clock),
	.d(\Selector41~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\csr_status_r_pass~q ),
	.prn(vcc));
defparam csr_status_r_pass.is_wysiwyg = "true";
defparam csr_status_r_pass.power_up = "low";

fiftyfivenm_lcell_comb \avmm_readdata~0 (
	.dataa(drdout_0),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~0_combout ),
	.cout());
defparam \avmm_readdata~0 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~1 (
	.dataa(drdout_1),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~1_combout ),
	.cout());
defparam \avmm_readdata~1 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~2 (
	.dataa(drdout_2),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~2_combout ),
	.cout());
defparam \avmm_readdata~2 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~3 (
	.dataa(drdout_3),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~3_combout ),
	.cout());
defparam \avmm_readdata~3 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~3 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~4 (
	.dataa(drdout_4),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~4_combout ),
	.cout());
defparam \avmm_readdata~4 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~4 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~5 (
	.dataa(drdout_5),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~5_combout ),
	.cout());
defparam \avmm_readdata~5 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~5 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~6 (
	.dataa(drdout_6),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~6_combout ),
	.cout());
defparam \avmm_readdata~6 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~6 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~7 (
	.dataa(drdout_7),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~7_combout ),
	.cout());
defparam \avmm_readdata~7 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~7 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~8 (
	.dataa(drdout_8),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~8_combout ),
	.cout());
defparam \avmm_readdata~8 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~8 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~9 (
	.dataa(drdout_9),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~9_combout ),
	.cout());
defparam \avmm_readdata~9 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~9 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~10 (
	.dataa(drdout_10),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~10_combout ),
	.cout());
defparam \avmm_readdata~10 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~10 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~11 (
	.dataa(drdout_11),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~11_combout ),
	.cout());
defparam \avmm_readdata~11 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~11 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~12 (
	.dataa(drdout_12),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~12_combout ),
	.cout());
defparam \avmm_readdata~12 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~12 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~13 (
	.dataa(drdout_13),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~13_combout ),
	.cout());
defparam \avmm_readdata~13 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~13 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~14 (
	.dataa(drdout_14),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~14_combout ),
	.cout());
defparam \avmm_readdata~14 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~14 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~15 (
	.dataa(drdout_15),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~15_combout ),
	.cout());
defparam \avmm_readdata~15 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~15 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~16 (
	.dataa(drdout_16),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~16_combout ),
	.cout());
defparam \avmm_readdata~16 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~16 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~17 (
	.dataa(drdout_17),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~17_combout ),
	.cout());
defparam \avmm_readdata~17 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~17 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~18 (
	.dataa(drdout_18),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~18_combout ),
	.cout());
defparam \avmm_readdata~18 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~18 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~19 (
	.dataa(drdout_19),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~19_combout ),
	.cout());
defparam \avmm_readdata~19 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~19 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~20 (
	.dataa(drdout_20),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~20_combout ),
	.cout());
defparam \avmm_readdata~20 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~20 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~21 (
	.dataa(drdout_21),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~21_combout ),
	.cout());
defparam \avmm_readdata~21 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~21 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~22 (
	.dataa(drdout_22),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~22_combout ),
	.cout());
defparam \avmm_readdata~22 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~22 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~23 (
	.dataa(drdout_23),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~23_combout ),
	.cout());
defparam \avmm_readdata~23 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~23 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~24 (
	.dataa(drdout_24),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~24_combout ),
	.cout());
defparam \avmm_readdata~24 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~24 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~25 (
	.dataa(drdout_25),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~25_combout ),
	.cout());
defparam \avmm_readdata~25 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~25 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~26 (
	.dataa(drdout_26),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~26_combout ),
	.cout());
defparam \avmm_readdata~26 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~26 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~27 (
	.dataa(drdout_27),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~27_combout ),
	.cout());
defparam \avmm_readdata~27 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~27 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~28 (
	.dataa(drdout_28),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~28_combout ),
	.cout());
defparam \avmm_readdata~28 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~28 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~29 (
	.dataa(drdout_29),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~29_combout ),
	.cout());
defparam \avmm_readdata~29 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~29 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~30 (
	.dataa(drdout_30),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~30_combout ),
	.cout());
defparam \avmm_readdata~30 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~30 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \avmm_readdata~31 (
	.dataa(drdout_31),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\csr_status_r_pass~q ),
	.cin(gnd),
	.combout(\avmm_readdata~31_combout ),
	.cout());
defparam \avmm_readdata~31 .lut_mask = 16'hAFFF;
defparam \avmm_readdata~31 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector9~0 (
	.dataa(\read_state.READ_STATE_PULSE_SE~q ),
	.datab(avmm_data_read),
	.datac(gnd),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\Selector9~0_combout ),
	.cout());
defparam \Selector9~0 .lut_mask = 16'hEEFF;
defparam \Selector9~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector9~1 (
	.dataa(\read_state.READ_STATE_FINAL~q ),
	.datab(\read_state.READ_STATE_SETUP~q ),
	.datac(\read_state.READ_STATE_DUMMY~q ),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\Selector9~1_combout ),
	.cout());
defparam \Selector9~1 .lut_mask = 16'hFEFF;
defparam \Selector9~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector9~2 (
	.dataa(\Selector9~0_combout ),
	.datab(\read_wait~q ),
	.datac(\read_state.READ_STATE_READY~q ),
	.datad(\Selector9~1_combout ),
	.cin(gnd),
	.combout(\Selector9~2_combout ),
	.cout());
defparam \Selector9~2 .lut_mask = 16'hFFFE;
defparam \Selector9~2 .sum_lutc_input = "datac";

dffeas read_wait(
	.clk(clock),
	.d(\Selector9~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\read_wait~q ),
	.prn(vcc));
defparam read_wait.is_wysiwyg = "true";
defparam read_wait.power_up = "low";

fiftyfivenm_lcell_comb \read_wait_neg~0 (
	.dataa(\read_wait~q ),
	.datab(\reset_n_reg2~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\read_wait_neg~0_combout ),
	.cout());
defparam \read_wait_neg~0 .lut_mask = 16'hEEEE;
defparam \read_wait_neg~0 .sum_lutc_input = "datac";

dffeas read_wait_neg(
	.clk(!clock),
	.d(\read_wait_neg~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\read_wait_neg~q ),
	.prn(vcc));
defparam read_wait_neg.is_wysiwyg = "true";
defparam read_wait_neg.power_up = "low";

fiftyfivenm_lcell_comb \avmm_waitrequest~0 (
	.dataa(avmm_data_read),
	.datab(\read_wait_neg~q ),
	.datac(\read_wait~q ),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\avmm_waitrequest~0_combout ),
	.cout());
defparam \avmm_waitrequest~0 .lut_mask = 16'hFEFF;
defparam \avmm_waitrequest~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \flash_arclk_arshft_en_w~2 (
	.dataa(\read_state.READ_STATE_IDLE~q ),
	.datab(\read_state.READ_STATE_FINAL~q ),
	.datac(\read_state.READ_STATE_ADDR~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\flash_arclk_arshft_en_w~2_combout ),
	.cout());
defparam \flash_arclk_arshft_en_w~2 .lut_mask = 16'hFEFE;
defparam \flash_arclk_arshft_en_w~2 .sum_lutc_input = "datac";

dffeas enable_arclk_sync_reg(
	.clk(clock),
	.d(\flash_arclk_arshft_en_w~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\enable_arclk_sync_reg~q ),
	.prn(vcc));
defparam enable_arclk_sync_reg.is_wysiwyg = "true";
defparam enable_arclk_sync_reg.power_up = "low";

fiftyfivenm_lcell_comb \enable_arclk_neg_reg~0 (
	.dataa(\reset_n_reg2~q ),
	.datab(\enable_arclk_sync_reg~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\enable_arclk_neg_reg~0_combout ),
	.cout());
defparam \enable_arclk_neg_reg~0 .lut_mask = 16'hEEEE;
defparam \enable_arclk_neg_reg~0 .sum_lutc_input = "datac";

dffeas enable_arclk_neg_reg(
	.clk(!clock),
	.d(\enable_arclk_neg_reg~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\enable_arclk_neg_reg~q ),
	.prn(vcc));
defparam enable_arclk_neg_reg.is_wysiwyg = "true";
defparam enable_arclk_neg_reg.power_up = "low";

fiftyfivenm_lcell_comb \enable_arclk_neg_pos_reg~0 (
	.dataa(\enable_arclk_neg_reg~q ),
	.datab(\reset_n_reg2~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\enable_arclk_neg_pos_reg~0_combout ),
	.cout());
defparam \enable_arclk_neg_pos_reg~0 .lut_mask = 16'hEEEE;
defparam \enable_arclk_neg_pos_reg~0 .sum_lutc_input = "datac";

dffeas enable_arclk_neg_pos_reg(
	.clk(clock),
	.d(\enable_arclk_neg_pos_reg~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\enable_arclk_neg_pos_reg~q ),
	.prn(vcc));
defparam enable_arclk_neg_pos_reg.is_wysiwyg = "true";
defparam enable_arclk_neg_pos_reg.power_up = "low";

fiftyfivenm_lcell_comb \Selector6~0 (
	.dataa(\enable_drclk_neg_pos_reg~q ),
	.datab(\read_state.READ_STATE_IDLE~q ),
	.datac(\read_state.READ_STATE_FINAL~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector6~0_combout ),
	.cout());
defparam \Selector6~0 .lut_mask = 16'hFEFE;
defparam \Selector6~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector6~1 (
	.dataa(\Selector6~0_combout ),
	.datab(\read_state.READ_STATE_FINAL~q ),
	.datac(\avmm_read_state~q ),
	.datad(\Equal1~0_combout ),
	.cin(gnd),
	.combout(\Selector6~1_combout ),
	.cout());
defparam \Selector6~1 .lut_mask = 16'hFEFF;
defparam \Selector6~1 .sum_lutc_input = "datac";

dffeas enable_drclk_neg_pos_reg(
	.clk(clock),
	.d(\Selector6~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\reset_n_reg2~q ),
	.q(\enable_drclk_neg_pos_reg~q ),
	.prn(vcc));
defparam enable_drclk_neg_pos_reg.is_wysiwyg = "true";
defparam enable_drclk_neg_pos_reg.power_up = "low";

fiftyfivenm_lcell_comb \Selector17~1 (
	.dataa(\read_state.READ_STATE_FINAL~q ),
	.datab(\avmm_burstcount_reg[0]~q ),
	.datac(\avmm_burstcount_reg[1]~q ),
	.datad(\avmm_read_state~q ),
	.cin(gnd),
	.combout(\Selector17~1_combout ),
	.cout());
defparam \Selector17~1 .lut_mask = 16'hFEFF;
defparam \Selector17~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector7~0 (
	.dataa(\read_state.READ_STATE_READY~q ),
	.datab(\read_drclk_en~q ),
	.datac(\Selector1~0_combout ),
	.datad(\Selector17~1_combout ),
	.cin(gnd),
	.combout(\Selector7~0_combout ),
	.cout());
defparam \Selector7~0 .lut_mask = 16'hFFFE;
defparam \Selector7~0 .sum_lutc_input = "datac";

dffeas read_drclk_en(
	.clk(clock),
	.d(\Selector7~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\reset_n_reg2~q ),
	.q(\read_drclk_en~q ),
	.prn(vcc));
defparam read_drclk_en.is_wysiwyg = "true";
defparam read_drclk_en.power_up = "low";

fiftyfivenm_lcell_comb \enable_drclk_neg_reg~0 (
	.dataa(\reset_n_reg2~q ),
	.datab(\read_drclk_en~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\enable_drclk_neg_reg~0_combout ),
	.cout());
defparam \enable_drclk_neg_reg~0 .lut_mask = 16'hEEEE;
defparam \enable_drclk_neg_reg~0 .sum_lutc_input = "datac";

dffeas enable_drclk_neg_reg(
	.clk(!clock),
	.d(\enable_drclk_neg_reg~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\enable_drclk_neg_reg~q ),
	.prn(vcc));
defparam enable_drclk_neg_reg.is_wysiwyg = "true";
defparam enable_drclk_neg_reg.power_up = "low";

fiftyfivenm_lcell_comb \flash_se_neg_reg~0 (
	.dataa(\reset_n_reg2~q ),
	.datab(\read_state.READ_STATE_SETUP~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\flash_se_neg_reg~0_combout ),
	.cout());
defparam \flash_se_neg_reg~0 .lut_mask = 16'hEEEE;
defparam \flash_se_neg_reg~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \flash_page_addr~0 (
	.dataa(\flash_seq_read_ardin[0]~q ),
	.datab(avmm_data_addr_0),
	.datac(gnd),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\flash_page_addr~0_combout ),
	.cout());
defparam \flash_page_addr~0 .lut_mask = 16'hAACC;
defparam \flash_page_addr~0 .sum_lutc_input = "datac";

dffeas \flash_page_addr[0] (
	.clk(clock),
	.d(\flash_page_addr~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\flash_page_addr[0]~q ),
	.prn(vcc));
defparam \flash_page_addr[0] .is_wysiwyg = "true";
defparam \flash_page_addr[0] .power_up = "low";

fiftyfivenm_lcell_comb \flash_addr_wire_neg_reg~0 (
	.dataa(\reset_n_reg2~q ),
	.datab(\flash_page_addr[0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\flash_addr_wire_neg_reg~0_combout ),
	.cout());
defparam \flash_addr_wire_neg_reg~0 .lut_mask = 16'hEEEE;
defparam \flash_addr_wire_neg_reg~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Add0~0 (
	.dataa(\flash_seq_read_ardin[1]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\Add0~0_combout ),
	.cout(\Add0~1 ));
defparam \Add0~0 .lut_mask = 16'h55AA;
defparam \Add0~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector39~0 (
	.dataa(\Add0~0_combout ),
	.datab(avmm_data_addr_1),
	.datac(gnd),
	.datad(\read_state.READ_STATE_SETUP~q ),
	.cin(gnd),
	.combout(\Selector39~0_combout ),
	.cout());
defparam \Selector39~0 .lut_mask = 16'hAACC;
defparam \Selector39~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Add0~2 (
	.dataa(\flash_seq_read_ardin[2]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~1 ),
	.combout(\Add0~2_combout ),
	.cout(\Add0~3 ));
defparam \Add0~2 .lut_mask = 16'h5A5F;
defparam \Add0~2 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Selector38~0 (
	.dataa(\Add0~2_combout ),
	.datab(avmm_data_addr_2),
	.datac(gnd),
	.datad(\read_state.READ_STATE_SETUP~q ),
	.cin(gnd),
	.combout(\Selector38~0_combout ),
	.cout());
defparam \Selector38~0 .lut_mask = 16'hAACC;
defparam \Selector38~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \flash_seq_read_ardin[7]~1 (
	.dataa(\Add0~26_combout ),
	.datab(\Add0~20_combout ),
	.datac(\Add0~22_combout ),
	.datad(\Add0~24_combout ),
	.cin(gnd),
	.combout(\flash_seq_read_ardin[7]~1_combout ),
	.cout());
defparam \flash_seq_read_ardin[7]~1 .lut_mask = 16'hFFFE;
defparam \flash_seq_read_ardin[7]~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \flash_seq_read_ardin[7]~2 (
	.dataa(\read_state.READ_STATE_SETUP~q ),
	.datab(\Add0~30_combout ),
	.datac(\Add0~28_combout ),
	.datad(\flash_seq_read_ardin[7]~1_combout ),
	.cin(gnd),
	.combout(\flash_seq_read_ardin[7]~2_combout ),
	.cout());
defparam \flash_seq_read_ardin[7]~2 .lut_mask = 16'hFFFE;
defparam \flash_seq_read_ardin[7]~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector38~1 (
	.dataa(\Selector38~0_combout ),
	.datab(\read_state.READ_STATE_SETUP~q ),
	.datac(\Add0~32_combout ),
	.datad(\flash_seq_read_ardin[7]~2_combout ),
	.cin(gnd),
	.combout(\Selector38~1_combout ),
	.cout());
defparam \Selector38~1 .lut_mask = 16'hBFFF;
defparam \Selector38~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \flash_seq_read_ardin[1]~3 (
	.dataa(\reset_n_reg2~q ),
	.datab(\read_state.READ_STATE_SETUP~q ),
	.datac(avmm_data_read),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\flash_seq_read_ardin[1]~3_combout ),
	.cout());
defparam \flash_seq_read_ardin[1]~3 .lut_mask = 16'hFAFC;
defparam \flash_seq_read_ardin[1]~3 .sum_lutc_input = "datac";

dffeas \flash_seq_read_ardin[2] (
	.clk(clock),
	.d(\Selector38~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\flash_seq_read_ardin[1]~3_combout ),
	.q(\flash_seq_read_ardin[2]~q ),
	.prn(vcc));
defparam \flash_seq_read_ardin[2] .is_wysiwyg = "true";
defparam \flash_seq_read_ardin[2] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~4 (
	.dataa(\flash_seq_read_ardin[3]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~3 ),
	.combout(\Add0~4_combout ),
	.cout(\Add0~5 ));
defparam \Add0~4 .lut_mask = 16'h5AAF;
defparam \Add0~4 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Selector37~0 (
	.dataa(\Add0~4_combout ),
	.datab(avmm_data_addr_3),
	.datac(gnd),
	.datad(\read_state.READ_STATE_SETUP~q ),
	.cin(gnd),
	.combout(\Selector37~0_combout ),
	.cout());
defparam \Selector37~0 .lut_mask = 16'hAACC;
defparam \Selector37~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector37~1 (
	.dataa(\Selector37~0_combout ),
	.datab(\read_state.READ_STATE_SETUP~q ),
	.datac(\Add0~32_combout ),
	.datad(\flash_seq_read_ardin[7]~2_combout ),
	.cin(gnd),
	.combout(\Selector37~1_combout ),
	.cout());
defparam \Selector37~1 .lut_mask = 16'hBFFF;
defparam \Selector37~1 .sum_lutc_input = "datac";

dffeas \flash_seq_read_ardin[3] (
	.clk(clock),
	.d(\Selector37~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\flash_seq_read_ardin[1]~3_combout ),
	.q(\flash_seq_read_ardin[3]~q ),
	.prn(vcc));
defparam \flash_seq_read_ardin[3] .is_wysiwyg = "true";
defparam \flash_seq_read_ardin[3] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~6 (
	.dataa(\flash_seq_read_ardin[4]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~5 ),
	.combout(\Add0~6_combout ),
	.cout(\Add0~7 ));
defparam \Add0~6 .lut_mask = 16'h5A5F;
defparam \Add0~6 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Selector36~0 (
	.dataa(\Add0~6_combout ),
	.datab(avmm_data_addr_4),
	.datac(gnd),
	.datad(\read_state.READ_STATE_SETUP~q ),
	.cin(gnd),
	.combout(\Selector36~0_combout ),
	.cout());
defparam \Selector36~0 .lut_mask = 16'hAACC;
defparam \Selector36~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector36~1 (
	.dataa(\Selector36~0_combout ),
	.datab(\read_state.READ_STATE_SETUP~q ),
	.datac(\Add0~32_combout ),
	.datad(\flash_seq_read_ardin[7]~2_combout ),
	.cin(gnd),
	.combout(\Selector36~1_combout ),
	.cout());
defparam \Selector36~1 .lut_mask = 16'hBFFF;
defparam \Selector36~1 .sum_lutc_input = "datac";

dffeas \flash_seq_read_ardin[4] (
	.clk(clock),
	.d(\Selector36~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\flash_seq_read_ardin[1]~3_combout ),
	.q(\flash_seq_read_ardin[4]~q ),
	.prn(vcc));
defparam \flash_seq_read_ardin[4] .is_wysiwyg = "true";
defparam \flash_seq_read_ardin[4] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~8 (
	.dataa(\flash_seq_read_ardin[5]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~7 ),
	.combout(\Add0~8_combout ),
	.cout(\Add0~9 ));
defparam \Add0~8 .lut_mask = 16'h5AAF;
defparam \Add0~8 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Selector35~0 (
	.dataa(\Add0~8_combout ),
	.datab(avmm_data_addr_5),
	.datac(gnd),
	.datad(\read_state.READ_STATE_SETUP~q ),
	.cin(gnd),
	.combout(\Selector35~0_combout ),
	.cout());
defparam \Selector35~0 .lut_mask = 16'hAACC;
defparam \Selector35~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector35~1 (
	.dataa(\Selector35~0_combout ),
	.datab(\read_state.READ_STATE_SETUP~q ),
	.datac(\Add0~32_combout ),
	.datad(\flash_seq_read_ardin[7]~2_combout ),
	.cin(gnd),
	.combout(\Selector35~1_combout ),
	.cout());
defparam \Selector35~1 .lut_mask = 16'hBFFF;
defparam \Selector35~1 .sum_lutc_input = "datac";

dffeas \flash_seq_read_ardin[5] (
	.clk(clock),
	.d(\Selector35~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\flash_seq_read_ardin[1]~3_combout ),
	.q(\flash_seq_read_ardin[5]~q ),
	.prn(vcc));
defparam \flash_seq_read_ardin[5] .is_wysiwyg = "true";
defparam \flash_seq_read_ardin[5] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~10 (
	.dataa(\flash_seq_read_ardin[6]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~9 ),
	.combout(\Add0~10_combout ),
	.cout(\Add0~11 ));
defparam \Add0~10 .lut_mask = 16'h5A5F;
defparam \Add0~10 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Selector34~0 (
	.dataa(\Add0~10_combout ),
	.datab(avmm_data_addr_6),
	.datac(gnd),
	.datad(\read_state.READ_STATE_SETUP~q ),
	.cin(gnd),
	.combout(\Selector34~0_combout ),
	.cout());
defparam \Selector34~0 .lut_mask = 16'hAACC;
defparam \Selector34~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector34~1 (
	.dataa(\Selector34~0_combout ),
	.datab(\read_state.READ_STATE_SETUP~q ),
	.datac(\Add0~32_combout ),
	.datad(\flash_seq_read_ardin[7]~2_combout ),
	.cin(gnd),
	.combout(\Selector34~1_combout ),
	.cout());
defparam \Selector34~1 .lut_mask = 16'hBFFF;
defparam \Selector34~1 .sum_lutc_input = "datac";

dffeas \flash_seq_read_ardin[6] (
	.clk(clock),
	.d(\Selector34~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\flash_seq_read_ardin[1]~3_combout ),
	.q(\flash_seq_read_ardin[6]~q ),
	.prn(vcc));
defparam \flash_seq_read_ardin[6] .is_wysiwyg = "true";
defparam \flash_seq_read_ardin[6] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~12 (
	.dataa(\flash_seq_read_ardin[7]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~11 ),
	.combout(\Add0~12_combout ),
	.cout(\Add0~13 ));
defparam \Add0~12 .lut_mask = 16'h5AAF;
defparam \Add0~12 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Selector33~0 (
	.dataa(\Add0~12_combout ),
	.datab(avmm_data_addr_7),
	.datac(gnd),
	.datad(\read_state.READ_STATE_SETUP~q ),
	.cin(gnd),
	.combout(\Selector33~0_combout ),
	.cout());
defparam \Selector33~0 .lut_mask = 16'hAACC;
defparam \Selector33~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector33~1 (
	.dataa(\Selector33~0_combout ),
	.datab(\read_state.READ_STATE_SETUP~q ),
	.datac(\Add0~32_combout ),
	.datad(\flash_seq_read_ardin[7]~2_combout ),
	.cin(gnd),
	.combout(\Selector33~1_combout ),
	.cout());
defparam \Selector33~1 .lut_mask = 16'hBFFF;
defparam \Selector33~1 .sum_lutc_input = "datac";

dffeas \flash_seq_read_ardin[7] (
	.clk(clock),
	.d(\Selector33~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\flash_seq_read_ardin[1]~3_combout ),
	.q(\flash_seq_read_ardin[7]~q ),
	.prn(vcc));
defparam \flash_seq_read_ardin[7] .is_wysiwyg = "true";
defparam \flash_seq_read_ardin[7] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~14 (
	.dataa(\flash_seq_read_ardin[8]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~13 ),
	.combout(\Add0~14_combout ),
	.cout(\Add0~15 ));
defparam \Add0~14 .lut_mask = 16'h5A5F;
defparam \Add0~14 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Selector32~0 (
	.dataa(\Add0~14_combout ),
	.datab(avmm_data_addr_8),
	.datac(gnd),
	.datad(\read_state.READ_STATE_SETUP~q ),
	.cin(gnd),
	.combout(\Selector32~0_combout ),
	.cout());
defparam \Selector32~0 .lut_mask = 16'hAACC;
defparam \Selector32~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector32~1 (
	.dataa(\Selector32~0_combout ),
	.datab(\read_state.READ_STATE_SETUP~q ),
	.datac(\Add0~32_combout ),
	.datad(\flash_seq_read_ardin[7]~2_combout ),
	.cin(gnd),
	.combout(\Selector32~1_combout ),
	.cout());
defparam \Selector32~1 .lut_mask = 16'hBFFF;
defparam \Selector32~1 .sum_lutc_input = "datac";

dffeas \flash_seq_read_ardin[8] (
	.clk(clock),
	.d(\Selector32~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\flash_seq_read_ardin[1]~3_combout ),
	.q(\flash_seq_read_ardin[8]~q ),
	.prn(vcc));
defparam \flash_seq_read_ardin[8] .is_wysiwyg = "true";
defparam \flash_seq_read_ardin[8] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~16 (
	.dataa(\flash_seq_read_ardin[9]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~15 ),
	.combout(\Add0~16_combout ),
	.cout(\Add0~17 ));
defparam \Add0~16 .lut_mask = 16'h5AAF;
defparam \Add0~16 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Selector31~0 (
	.dataa(\Add0~16_combout ),
	.datab(avmm_data_addr_9),
	.datac(gnd),
	.datad(\read_state.READ_STATE_SETUP~q ),
	.cin(gnd),
	.combout(\Selector31~0_combout ),
	.cout());
defparam \Selector31~0 .lut_mask = 16'hAACC;
defparam \Selector31~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector31~1 (
	.dataa(\Selector31~0_combout ),
	.datab(\read_state.READ_STATE_SETUP~q ),
	.datac(\Add0~32_combout ),
	.datad(\flash_seq_read_ardin[7]~2_combout ),
	.cin(gnd),
	.combout(\Selector31~1_combout ),
	.cout());
defparam \Selector31~1 .lut_mask = 16'hBFFF;
defparam \Selector31~1 .sum_lutc_input = "datac";

dffeas \flash_seq_read_ardin[9] (
	.clk(clock),
	.d(\Selector31~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\flash_seq_read_ardin[1]~3_combout ),
	.q(\flash_seq_read_ardin[9]~q ),
	.prn(vcc));
defparam \flash_seq_read_ardin[9] .is_wysiwyg = "true";
defparam \flash_seq_read_ardin[9] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~18 (
	.dataa(\flash_seq_read_ardin[10]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~17 ),
	.combout(\Add0~18_combout ),
	.cout(\Add0~19 ));
defparam \Add0~18 .lut_mask = 16'h5A5F;
defparam \Add0~18 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Selector30~0 (
	.dataa(\Add0~18_combout ),
	.datab(avmm_data_addr_10),
	.datac(gnd),
	.datad(\read_state.READ_STATE_SETUP~q ),
	.cin(gnd),
	.combout(\Selector30~0_combout ),
	.cout());
defparam \Selector30~0 .lut_mask = 16'hAACC;
defparam \Selector30~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector30~1 (
	.dataa(\Selector30~0_combout ),
	.datab(\read_state.READ_STATE_SETUP~q ),
	.datac(\Add0~32_combout ),
	.datad(\flash_seq_read_ardin[7]~2_combout ),
	.cin(gnd),
	.combout(\Selector30~1_combout ),
	.cout());
defparam \Selector30~1 .lut_mask = 16'hBFFF;
defparam \Selector30~1 .sum_lutc_input = "datac";

dffeas \flash_seq_read_ardin[10] (
	.clk(clock),
	.d(\Selector30~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\flash_seq_read_ardin[1]~3_combout ),
	.q(\flash_seq_read_ardin[10]~q ),
	.prn(vcc));
defparam \flash_seq_read_ardin[10] .is_wysiwyg = "true";
defparam \flash_seq_read_ardin[10] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~20 (
	.dataa(\flash_seq_read_ardin[11]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~19 ),
	.combout(\Add0~20_combout ),
	.cout(\Add0~21 ));
defparam \Add0~20 .lut_mask = 16'h5AAF;
defparam \Add0~20 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Selector29~0 (
	.dataa(\Add0~20_combout ),
	.datab(avmm_data_addr_11),
	.datac(gnd),
	.datad(\read_state.READ_STATE_SETUP~q ),
	.cin(gnd),
	.combout(\Selector29~0_combout ),
	.cout());
defparam \Selector29~0 .lut_mask = 16'hAACC;
defparam \Selector29~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector29~1 (
	.dataa(\Selector29~0_combout ),
	.datab(\read_state.READ_STATE_SETUP~q ),
	.datac(\Add0~32_combout ),
	.datad(\flash_seq_read_ardin[7]~2_combout ),
	.cin(gnd),
	.combout(\Selector29~1_combout ),
	.cout());
defparam \Selector29~1 .lut_mask = 16'hBFFF;
defparam \Selector29~1 .sum_lutc_input = "datac";

dffeas \flash_seq_read_ardin[11] (
	.clk(clock),
	.d(\Selector29~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\flash_seq_read_ardin[1]~3_combout ),
	.q(\flash_seq_read_ardin[11]~q ),
	.prn(vcc));
defparam \flash_seq_read_ardin[11] .is_wysiwyg = "true";
defparam \flash_seq_read_ardin[11] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~22 (
	.dataa(\flash_seq_read_ardin[12]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~21 ),
	.combout(\Add0~22_combout ),
	.cout(\Add0~23 ));
defparam \Add0~22 .lut_mask = 16'h5A5F;
defparam \Add0~22 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Selector28~0 (
	.dataa(\Add0~22_combout ),
	.datab(avmm_data_addr_12),
	.datac(gnd),
	.datad(\read_state.READ_STATE_SETUP~q ),
	.cin(gnd),
	.combout(\Selector28~0_combout ),
	.cout());
defparam \Selector28~0 .lut_mask = 16'hAACC;
defparam \Selector28~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector28~1 (
	.dataa(\Selector28~0_combout ),
	.datab(\read_state.READ_STATE_SETUP~q ),
	.datac(\Add0~32_combout ),
	.datad(\flash_seq_read_ardin[7]~2_combout ),
	.cin(gnd),
	.combout(\Selector28~1_combout ),
	.cout());
defparam \Selector28~1 .lut_mask = 16'hBFFF;
defparam \Selector28~1 .sum_lutc_input = "datac";

dffeas \flash_seq_read_ardin[12] (
	.clk(clock),
	.d(\Selector28~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\flash_seq_read_ardin[1]~3_combout ),
	.q(\flash_seq_read_ardin[12]~q ),
	.prn(vcc));
defparam \flash_seq_read_ardin[12] .is_wysiwyg = "true";
defparam \flash_seq_read_ardin[12] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~24 (
	.dataa(\flash_seq_read_ardin[13]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~23 ),
	.combout(\Add0~24_combout ),
	.cout(\Add0~25 ));
defparam \Add0~24 .lut_mask = 16'h5AAF;
defparam \Add0~24 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Selector27~0 (
	.dataa(\Add0~24_combout ),
	.datab(avmm_data_addr_13),
	.datac(gnd),
	.datad(\read_state.READ_STATE_SETUP~q ),
	.cin(gnd),
	.combout(\Selector27~0_combout ),
	.cout());
defparam \Selector27~0 .lut_mask = 16'hAACC;
defparam \Selector27~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector27~1 (
	.dataa(\Selector27~0_combout ),
	.datab(\read_state.READ_STATE_SETUP~q ),
	.datac(\Add0~32_combout ),
	.datad(\flash_seq_read_ardin[7]~2_combout ),
	.cin(gnd),
	.combout(\Selector27~1_combout ),
	.cout());
defparam \Selector27~1 .lut_mask = 16'hBFFF;
defparam \Selector27~1 .sum_lutc_input = "datac";

dffeas \flash_seq_read_ardin[13] (
	.clk(clock),
	.d(\Selector27~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\flash_seq_read_ardin[1]~3_combout ),
	.q(\flash_seq_read_ardin[13]~q ),
	.prn(vcc));
defparam \flash_seq_read_ardin[13] .is_wysiwyg = "true";
defparam \flash_seq_read_ardin[13] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~26 (
	.dataa(\flash_seq_read_ardin[14]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~25 ),
	.combout(\Add0~26_combout ),
	.cout(\Add0~27 ));
defparam \Add0~26 .lut_mask = 16'h5A5F;
defparam \Add0~26 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Selector26~0 (
	.dataa(\Add0~26_combout ),
	.datab(avmm_data_addr_14),
	.datac(\read_state.READ_STATE_SETUP~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector26~0_combout ),
	.cout());
defparam \Selector26~0 .lut_mask = 16'hACAC;
defparam \Selector26~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector26~1 (
	.dataa(\read_state.READ_STATE_SETUP~q ),
	.datab(\Add0~30_combout ),
	.datac(\Add0~32_combout ),
	.datad(\Selector26~0_combout ),
	.cin(gnd),
	.combout(\Selector26~1_combout ),
	.cout());
defparam \Selector26~1 .lut_mask = 16'hFF7F;
defparam \Selector26~1 .sum_lutc_input = "datac";

dffeas \flash_seq_read_ardin[14] (
	.clk(clock),
	.d(\Selector26~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\flash_seq_read_ardin[1]~3_combout ),
	.q(\flash_seq_read_ardin[14]~q ),
	.prn(vcc));
defparam \flash_seq_read_ardin[14] .is_wysiwyg = "true";
defparam \flash_seq_read_ardin[14] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~28 (
	.dataa(\flash_seq_read_ardin[15]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~27 ),
	.combout(\Add0~28_combout ),
	.cout(\Add0~29 ));
defparam \Add0~28 .lut_mask = 16'h5AAF;
defparam \Add0~28 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Selector25~0 (
	.dataa(\Add0~28_combout ),
	.datab(avmm_data_addr_15),
	.datac(\read_state.READ_STATE_SETUP~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector25~0_combout ),
	.cout());
defparam \Selector25~0 .lut_mask = 16'hACAC;
defparam \Selector25~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector25~1 (
	.dataa(\read_state.READ_STATE_SETUP~q ),
	.datab(\Add0~30_combout ),
	.datac(\Add0~32_combout ),
	.datad(\Selector25~0_combout ),
	.cin(gnd),
	.combout(\Selector25~1_combout ),
	.cout());
defparam \Selector25~1 .lut_mask = 16'hFF7F;
defparam \Selector25~1 .sum_lutc_input = "datac";

dffeas \flash_seq_read_ardin[15] (
	.clk(clock),
	.d(\Selector25~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\flash_seq_read_ardin[1]~3_combout ),
	.q(\flash_seq_read_ardin[15]~q ),
	.prn(vcc));
defparam \flash_seq_read_ardin[15] .is_wysiwyg = "true";
defparam \flash_seq_read_ardin[15] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~30 (
	.dataa(\flash_seq_read_ardin[16]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~29 ),
	.combout(\Add0~30_combout ),
	.cout(\Add0~31 ));
defparam \Add0~30 .lut_mask = 16'h5A5F;
defparam \Add0~30 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Selector24~0 (
	.dataa(\Add0~30_combout ),
	.datab(avmm_data_addr_16),
	.datac(gnd),
	.datad(\read_state.READ_STATE_SETUP~q ),
	.cin(gnd),
	.combout(\Selector24~0_combout ),
	.cout());
defparam \Selector24~0 .lut_mask = 16'hAACC;
defparam \Selector24~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector24~1 (
	.dataa(\Selector24~0_combout ),
	.datab(\read_state.READ_STATE_SETUP~q ),
	.datac(\Add0~32_combout ),
	.datad(\flash_seq_read_ardin[7]~2_combout ),
	.cin(gnd),
	.combout(\Selector24~1_combout ),
	.cout());
defparam \Selector24~1 .lut_mask = 16'hBFFF;
defparam \Selector24~1 .sum_lutc_input = "datac";

dffeas \flash_seq_read_ardin[16] (
	.clk(clock),
	.d(\Selector24~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\flash_seq_read_ardin[1]~3_combout ),
	.q(\flash_seq_read_ardin[16]~q ),
	.prn(vcc));
defparam \flash_seq_read_ardin[16] .is_wysiwyg = "true";
defparam \flash_seq_read_ardin[16] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~32 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add0~31 ),
	.combout(\Add0~32_combout ),
	.cout());
defparam \Add0~32 .lut_mask = 16'h0F0F;
defparam \Add0~32 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Selector39~1 (
	.dataa(\Selector39~0_combout ),
	.datab(\read_state.READ_STATE_SETUP~q ),
	.datac(\Add0~32_combout ),
	.datad(\flash_seq_read_ardin[7]~2_combout ),
	.cin(gnd),
	.combout(\Selector39~1_combout ),
	.cout());
defparam \Selector39~1 .lut_mask = 16'hBFFF;
defparam \Selector39~1 .sum_lutc_input = "datac";

dffeas \flash_seq_read_ardin[1] (
	.clk(clock),
	.d(\Selector39~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\flash_seq_read_ardin[1]~3_combout ),
	.q(\flash_seq_read_ardin[1]~q ),
	.prn(vcc));
defparam \flash_seq_read_ardin[1] .is_wysiwyg = "true";
defparam \flash_seq_read_ardin[1] .power_up = "low";

fiftyfivenm_lcell_comb \flash_page_addr~1 (
	.dataa(\flash_seq_read_ardin[1]~q ),
	.datab(avmm_data_addr_1),
	.datac(gnd),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\flash_page_addr~1_combout ),
	.cout());
defparam \flash_page_addr~1 .lut_mask = 16'hAACC;
defparam \flash_page_addr~1 .sum_lutc_input = "datac";

dffeas \flash_page_addr[1] (
	.clk(clock),
	.d(\flash_page_addr~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\flash_page_addr[1]~q ),
	.prn(vcc));
defparam \flash_page_addr[1] .is_wysiwyg = "true";
defparam \flash_page_addr[1] .power_up = "low";

fiftyfivenm_lcell_comb \flash_addr_wire_neg_reg~1 (
	.dataa(\reset_n_reg2~q ),
	.datab(\flash_page_addr[1]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\flash_addr_wire_neg_reg~1_combout ),
	.cout());
defparam \flash_addr_wire_neg_reg~1 .lut_mask = 16'hEEEE;
defparam \flash_addr_wire_neg_reg~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \flash_page_addr~2 (
	.dataa(\flash_seq_read_ardin[2]~q ),
	.datab(avmm_data_addr_2),
	.datac(gnd),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\flash_page_addr~2_combout ),
	.cout());
defparam \flash_page_addr~2 .lut_mask = 16'hAACC;
defparam \flash_page_addr~2 .sum_lutc_input = "datac";

dffeas \flash_page_addr[2] (
	.clk(clock),
	.d(\flash_page_addr~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\flash_page_addr[2]~q ),
	.prn(vcc));
defparam \flash_page_addr[2] .is_wysiwyg = "true";
defparam \flash_page_addr[2] .power_up = "low";

fiftyfivenm_lcell_comb \flash_addr_wire_neg_reg~2 (
	.dataa(\reset_n_reg2~q ),
	.datab(\flash_page_addr[2]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\flash_addr_wire_neg_reg~2_combout ),
	.cout());
defparam \flash_addr_wire_neg_reg~2 .lut_mask = 16'hEEEE;
defparam \flash_addr_wire_neg_reg~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \flash_page_addr~3 (
	.dataa(\flash_seq_read_ardin[3]~q ),
	.datab(avmm_data_addr_3),
	.datac(gnd),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\flash_page_addr~3_combout ),
	.cout());
defparam \flash_page_addr~3 .lut_mask = 16'hAACC;
defparam \flash_page_addr~3 .sum_lutc_input = "datac";

dffeas \flash_page_addr[3] (
	.clk(clock),
	.d(\flash_page_addr~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\flash_page_addr[3]~q ),
	.prn(vcc));
defparam \flash_page_addr[3] .is_wysiwyg = "true";
defparam \flash_page_addr[3] .power_up = "low";

fiftyfivenm_lcell_comb \flash_addr_wire_neg_reg~3 (
	.dataa(\reset_n_reg2~q ),
	.datab(\flash_page_addr[3]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\flash_addr_wire_neg_reg~3_combout ),
	.cout());
defparam \flash_addr_wire_neg_reg~3 .lut_mask = 16'hEEEE;
defparam \flash_addr_wire_neg_reg~3 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \flash_page_addr~4 (
	.dataa(\flash_seq_read_ardin[4]~q ),
	.datab(avmm_data_addr_4),
	.datac(gnd),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\flash_page_addr~4_combout ),
	.cout());
defparam \flash_page_addr~4 .lut_mask = 16'hAACC;
defparam \flash_page_addr~4 .sum_lutc_input = "datac";

dffeas \flash_page_addr[4] (
	.clk(clock),
	.d(\flash_page_addr~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\flash_page_addr[4]~q ),
	.prn(vcc));
defparam \flash_page_addr[4] .is_wysiwyg = "true";
defparam \flash_page_addr[4] .power_up = "low";

fiftyfivenm_lcell_comb \flash_addr_wire_neg_reg~4 (
	.dataa(\reset_n_reg2~q ),
	.datab(\flash_page_addr[4]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\flash_addr_wire_neg_reg~4_combout ),
	.cout());
defparam \flash_addr_wire_neg_reg~4 .lut_mask = 16'hEEEE;
defparam \flash_addr_wire_neg_reg~4 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \flash_page_addr~5 (
	.dataa(\flash_seq_read_ardin[5]~q ),
	.datab(avmm_data_addr_5),
	.datac(gnd),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\flash_page_addr~5_combout ),
	.cout());
defparam \flash_page_addr~5 .lut_mask = 16'hAACC;
defparam \flash_page_addr~5 .sum_lutc_input = "datac";

dffeas \flash_page_addr[5] (
	.clk(clock),
	.d(\flash_page_addr~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\flash_page_addr[5]~q ),
	.prn(vcc));
defparam \flash_page_addr[5] .is_wysiwyg = "true";
defparam \flash_page_addr[5] .power_up = "low";

fiftyfivenm_lcell_comb \flash_addr_wire_neg_reg~5 (
	.dataa(\reset_n_reg2~q ),
	.datab(\flash_page_addr[5]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\flash_addr_wire_neg_reg~5_combout ),
	.cout());
defparam \flash_addr_wire_neg_reg~5 .lut_mask = 16'hEEEE;
defparam \flash_addr_wire_neg_reg~5 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \flash_page_addr~6 (
	.dataa(\flash_seq_read_ardin[6]~q ),
	.datab(avmm_data_addr_6),
	.datac(gnd),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\flash_page_addr~6_combout ),
	.cout());
defparam \flash_page_addr~6 .lut_mask = 16'hAACC;
defparam \flash_page_addr~6 .sum_lutc_input = "datac";

dffeas \flash_page_addr[6] (
	.clk(clock),
	.d(\flash_page_addr~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\flash_page_addr[6]~q ),
	.prn(vcc));
defparam \flash_page_addr[6] .is_wysiwyg = "true";
defparam \flash_page_addr[6] .power_up = "low";

fiftyfivenm_lcell_comb \flash_addr_wire_neg_reg~6 (
	.dataa(\reset_n_reg2~q ),
	.datab(\flash_page_addr[6]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\flash_addr_wire_neg_reg~6_combout ),
	.cout());
defparam \flash_addr_wire_neg_reg~6 .lut_mask = 16'hEEEE;
defparam \flash_addr_wire_neg_reg~6 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \flash_page_addr~7 (
	.dataa(\flash_seq_read_ardin[7]~q ),
	.datab(avmm_data_addr_7),
	.datac(gnd),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\flash_page_addr~7_combout ),
	.cout());
defparam \flash_page_addr~7 .lut_mask = 16'hAACC;
defparam \flash_page_addr~7 .sum_lutc_input = "datac";

dffeas \flash_page_addr[7] (
	.clk(clock),
	.d(\flash_page_addr~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\flash_page_addr[7]~q ),
	.prn(vcc));
defparam \flash_page_addr[7] .is_wysiwyg = "true";
defparam \flash_page_addr[7] .power_up = "low";

fiftyfivenm_lcell_comb \flash_addr_wire_neg_reg~7 (
	.dataa(\reset_n_reg2~q ),
	.datab(\flash_page_addr[7]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\flash_addr_wire_neg_reg~7_combout ),
	.cout());
defparam \flash_addr_wire_neg_reg~7 .lut_mask = 16'hEEEE;
defparam \flash_addr_wire_neg_reg~7 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \flash_page_addr~8 (
	.dataa(\flash_seq_read_ardin[8]~q ),
	.datab(avmm_data_addr_8),
	.datac(gnd),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\flash_page_addr~8_combout ),
	.cout());
defparam \flash_page_addr~8 .lut_mask = 16'hAACC;
defparam \flash_page_addr~8 .sum_lutc_input = "datac";

dffeas \flash_page_addr[8] (
	.clk(clock),
	.d(\flash_page_addr~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\flash_page_addr[8]~q ),
	.prn(vcc));
defparam \flash_page_addr[8] .is_wysiwyg = "true";
defparam \flash_page_addr[8] .power_up = "low";

fiftyfivenm_lcell_comb \flash_addr_wire_neg_reg~8 (
	.dataa(\reset_n_reg2~q ),
	.datab(\flash_page_addr[8]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\flash_addr_wire_neg_reg~8_combout ),
	.cout());
defparam \flash_addr_wire_neg_reg~8 .lut_mask = 16'hEEEE;
defparam \flash_addr_wire_neg_reg~8 .sum_lutc_input = "datac";

dffeas \flash_page_addr[9] (
	.clk(clock),
	.d(\address_convertor|Add0~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\flash_page_addr[9]~q ),
	.prn(vcc));
defparam \flash_page_addr[9] .is_wysiwyg = "true";
defparam \flash_page_addr[9] .power_up = "low";

fiftyfivenm_lcell_comb \flash_addr_wire_neg_reg~9 (
	.dataa(\reset_n_reg2~q ),
	.datab(\flash_page_addr[9]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\flash_addr_wire_neg_reg~9_combout ),
	.cout());
defparam \flash_addr_wire_neg_reg~9 .lut_mask = 16'hEEEE;
defparam \flash_addr_wire_neg_reg~9 .sum_lutc_input = "datac";

dffeas \flash_page_addr[10] (
	.clk(clock),
	.d(\address_convertor|Add0~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\flash_page_addr[10]~q ),
	.prn(vcc));
defparam \flash_page_addr[10] .is_wysiwyg = "true";
defparam \flash_page_addr[10] .power_up = "low";

fiftyfivenm_lcell_comb \flash_addr_wire_neg_reg~10 (
	.dataa(\reset_n_reg2~q ),
	.datab(\flash_page_addr[10]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\flash_addr_wire_neg_reg~10_combout ),
	.cout());
defparam \flash_addr_wire_neg_reg~10 .lut_mask = 16'hEEEE;
defparam \flash_addr_wire_neg_reg~10 .sum_lutc_input = "datac";

dffeas \flash_page_addr[11] (
	.clk(clock),
	.d(\address_convertor|Add0~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\flash_page_addr[11]~q ),
	.prn(vcc));
defparam \flash_page_addr[11] .is_wysiwyg = "true";
defparam \flash_page_addr[11] .power_up = "low";

fiftyfivenm_lcell_comb \flash_addr_wire_neg_reg~11 (
	.dataa(\reset_n_reg2~q ),
	.datab(\flash_page_addr[11]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\flash_addr_wire_neg_reg~11_combout ),
	.cout());
defparam \flash_addr_wire_neg_reg~11 .lut_mask = 16'hEEEE;
defparam \flash_addr_wire_neg_reg~11 .sum_lutc_input = "datac";

dffeas \flash_page_addr[12] (
	.clk(clock),
	.d(\address_convertor|Add0~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\flash_page_addr[12]~q ),
	.prn(vcc));
defparam \flash_page_addr[12] .is_wysiwyg = "true";
defparam \flash_page_addr[12] .power_up = "low";

fiftyfivenm_lcell_comb \flash_addr_wire_neg_reg~12 (
	.dataa(\reset_n_reg2~q ),
	.datab(\flash_page_addr[12]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\flash_addr_wire_neg_reg~12_combout ),
	.cout());
defparam \flash_addr_wire_neg_reg~12 .lut_mask = 16'hEEEE;
defparam \flash_addr_wire_neg_reg~12 .sum_lutc_input = "datac";

dffeas \flash_page_addr[13] (
	.clk(clock),
	.d(\address_convertor|Add0~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\flash_page_addr[13]~q ),
	.prn(vcc));
defparam \flash_page_addr[13] .is_wysiwyg = "true";
defparam \flash_page_addr[13] .power_up = "low";

fiftyfivenm_lcell_comb \flash_addr_wire_neg_reg~13 (
	.dataa(\reset_n_reg2~q ),
	.datab(\flash_page_addr[13]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\flash_addr_wire_neg_reg~13_combout ),
	.cout());
defparam \flash_addr_wire_neg_reg~13 .lut_mask = 16'hEEEE;
defparam \flash_addr_wire_neg_reg~13 .sum_lutc_input = "datac";

dffeas \flash_page_addr[14] (
	.clk(clock),
	.d(\address_convertor|Add0~17_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\flash_page_addr[14]~q ),
	.prn(vcc));
defparam \flash_page_addr[14] .is_wysiwyg = "true";
defparam \flash_page_addr[14] .power_up = "low";

fiftyfivenm_lcell_comb \flash_addr_wire_neg_reg~14 (
	.dataa(\reset_n_reg2~q ),
	.datab(\flash_page_addr[14]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\flash_addr_wire_neg_reg~14_combout ),
	.cout());
defparam \flash_addr_wire_neg_reg~14 .lut_mask = 16'hEEEE;
defparam \flash_addr_wire_neg_reg~14 .sum_lutc_input = "datac";

dffeas \flash_page_addr[15] (
	.clk(clock),
	.d(\address_convertor|Add0~20_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\flash_page_addr[15]~q ),
	.prn(vcc));
defparam \flash_page_addr[15] .is_wysiwyg = "true";
defparam \flash_page_addr[15] .power_up = "low";

fiftyfivenm_lcell_comb \flash_addr_wire_neg_reg~15 (
	.dataa(\reset_n_reg2~q ),
	.datab(\flash_page_addr[15]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\flash_addr_wire_neg_reg~15_combout ),
	.cout());
defparam \flash_addr_wire_neg_reg~15 .lut_mask = 16'hEEEE;
defparam \flash_addr_wire_neg_reg~15 .sum_lutc_input = "datac";

dffeas \flash_page_addr[16] (
	.clk(clock),
	.d(\address_convertor|Add0~23_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\flash_page_addr[16]~q ),
	.prn(vcc));
defparam \flash_page_addr[16] .is_wysiwyg = "true";
defparam \flash_page_addr[16] .power_up = "low";

fiftyfivenm_lcell_comb \flash_addr_wire_neg_reg~16 (
	.dataa(\reset_n_reg2~q ),
	.datab(\flash_page_addr[16]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\flash_addr_wire_neg_reg~16_combout ),
	.cout());
defparam \flash_addr_wire_neg_reg~16 .lut_mask = 16'hEEEE;
defparam \flash_addr_wire_neg_reg~16 .sum_lutc_input = "datac";

dffeas \flash_page_addr[17] (
	.clk(clock),
	.d(\address_convertor|Add0~26_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!\reset_n_reg2~q ),
	.sload(gnd),
	.ena(vcc),
	.q(\flash_page_addr[17]~q ),
	.prn(vcc));
defparam \flash_page_addr[17] .is_wysiwyg = "true";
defparam \flash_page_addr[17] .power_up = "low";

fiftyfivenm_lcell_comb \flash_addr_wire_neg_reg~17 (
	.dataa(\reset_n_reg2~q ),
	.datab(\flash_page_addr[17]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\flash_addr_wire_neg_reg~17_combout ),
	.cout());
defparam \flash_addr_wire_neg_reg~17 .lut_mask = 16'hEEEE;
defparam \flash_addr_wire_neg_reg~17 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector8~0 (
	.dataa(\read_state.READ_STATE_FINAL~q ),
	.datab(\read_state.READ_STATE_READY~q ),
	.datac(\flash_drshft_reg~q ),
	.datad(\read_state.READ_STATE_IDLE~q ),
	.cin(gnd),
	.combout(\Selector8~0_combout ),
	.cout());
defparam \Selector8~0 .lut_mask = 16'hFFFD;
defparam \Selector8~0 .sum_lutc_input = "datac";

dffeas flash_drshft_reg(
	.clk(clock),
	.d(\Selector8~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\reset_n_reg2~q ),
	.q(\flash_drshft_reg~q ),
	.prn(vcc));
defparam flash_drshft_reg.is_wysiwyg = "true";
defparam flash_drshft_reg.power_up = "low";

fiftyfivenm_lcell_comb \flash_drshft_neg_reg~0 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\reset_n_reg2~q ),
	.datad(\flash_drshft_reg~q ),
	.cin(gnd),
	.combout(\flash_drshft_neg_reg~0_combout ),
	.cout());
defparam \flash_drshft_neg_reg~0 .lut_mask = 16'hFFF0;
defparam \flash_drshft_neg_reg~0 .sum_lutc_input = "datac";

dffeas flash_drshft_neg_reg(
	.clk(!clock),
	.d(\flash_drshft_neg_reg~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\flash_drshft_neg_reg~q ),
	.prn(vcc));
defparam flash_drshft_neg_reg.is_wysiwyg = "true";
defparam flash_drshft_neg_reg.power_up = "low";

endmodule

module ULA_UFM_altera_onchip_flash_convert_address (
	flash_read_addr_9,
	flash_read_addr_13,
	flash_read_addr_12,
	flash_read_addr_11,
	flash_read_addr_16,
	flash_read_addr_15,
	flash_read_addr_14,
	Add0,
	flash_read_addr_10,
	Add01,
	Add02,
	Add03,
	Add04,
	Add05,
	Add06,
	Add07,
	Add08)/* synthesis synthesis_greybox=1 */;
input 	flash_read_addr_9;
input 	flash_read_addr_13;
input 	flash_read_addr_12;
input 	flash_read_addr_11;
input 	flash_read_addr_16;
input 	flash_read_addr_15;
input 	flash_read_addr_14;
output 	Add0;
input 	flash_read_addr_10;
output 	Add01;
output 	Add02;
output 	Add03;
output 	Add04;
output 	Add05;
output 	Add06;
output 	Add07;
output 	Add08;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \Add0~0_combout ;
wire \LessThan0~0_combout ;
wire \LessThan0~1_combout ;
wire \Add0~1 ;
wire \Add0~3_combout ;
wire \Add0~4 ;
wire \Add0~6_combout ;
wire \Add0~7 ;
wire \Add0~9_combout ;
wire \Add0~10 ;
wire \Add0~12_combout ;
wire \Add0~13 ;
wire \Add0~15_combout ;
wire \Add0~16 ;
wire \Add0~18_combout ;
wire \Add0~19 ;
wire \Add0~21_combout ;
wire \Add0~22 ;
wire \Add0~24_combout ;


fiftyfivenm_lcell_comb \Add0~2 (
	.dataa(flash_read_addr_9),
	.datab(\Add0~0_combout ),
	.datac(gnd),
	.datad(\LessThan0~1_combout ),
	.cin(gnd),
	.combout(Add0),
	.cout());
defparam \Add0~2 .lut_mask = 16'hAACC;
defparam \Add0~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Add0~5 (
	.dataa(flash_read_addr_10),
	.datab(\Add0~3_combout ),
	.datac(gnd),
	.datad(\LessThan0~1_combout ),
	.cin(gnd),
	.combout(Add01),
	.cout());
defparam \Add0~5 .lut_mask = 16'hAACC;
defparam \Add0~5 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Add0~8 (
	.dataa(flash_read_addr_11),
	.datab(\Add0~6_combout ),
	.datac(gnd),
	.datad(\LessThan0~1_combout ),
	.cin(gnd),
	.combout(Add02),
	.cout());
defparam \Add0~8 .lut_mask = 16'hAACC;
defparam \Add0~8 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Add0~11 (
	.dataa(flash_read_addr_12),
	.datab(\Add0~9_combout ),
	.datac(gnd),
	.datad(\LessThan0~1_combout ),
	.cin(gnd),
	.combout(Add03),
	.cout());
defparam \Add0~11 .lut_mask = 16'hAACC;
defparam \Add0~11 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Add0~14 (
	.dataa(flash_read_addr_13),
	.datab(\Add0~12_combout ),
	.datac(gnd),
	.datad(\LessThan0~1_combout ),
	.cin(gnd),
	.combout(Add04),
	.cout());
defparam \Add0~14 .lut_mask = 16'hAACC;
defparam \Add0~14 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Add0~17 (
	.dataa(flash_read_addr_14),
	.datab(\Add0~15_combout ),
	.datac(gnd),
	.datad(\LessThan0~1_combout ),
	.cin(gnd),
	.combout(Add05),
	.cout());
defparam \Add0~17 .lut_mask = 16'hAACC;
defparam \Add0~17 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Add0~20 (
	.dataa(flash_read_addr_15),
	.datab(\Add0~18_combout ),
	.datac(gnd),
	.datad(\LessThan0~1_combout ),
	.cin(gnd),
	.combout(Add06),
	.cout());
defparam \Add0~20 .lut_mask = 16'hAACC;
defparam \Add0~20 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Add0~23 (
	.dataa(\LessThan0~1_combout ),
	.datab(\Add0~21_combout ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(Add07),
	.cout());
defparam \Add0~23 .lut_mask = 16'hEEEE;
defparam \Add0~23 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Add0~26 (
	.dataa(\Add0~24_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(\LessThan0~1_combout ),
	.cin(gnd),
	.combout(Add08),
	.cout());
defparam \Add0~26 .lut_mask = 16'hAAFF;
defparam \Add0~26 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Add0~0 (
	.dataa(flash_read_addr_9),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\Add0~0_combout ),
	.cout(\Add0~1 ));
defparam \Add0~0 .lut_mask = 16'h55AA;
defparam \Add0~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \LessThan0~0 (
	.dataa(flash_read_addr_13),
	.datab(flash_read_addr_12),
	.datac(flash_read_addr_11),
	.datad(flash_read_addr_16),
	.cin(gnd),
	.combout(\LessThan0~0_combout ),
	.cout());
defparam \LessThan0~0 .lut_mask = 16'hFFFE;
defparam \LessThan0~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \LessThan0~1 (
	.dataa(\LessThan0~0_combout ),
	.datab(flash_read_addr_16),
	.datac(flash_read_addr_15),
	.datad(flash_read_addr_14),
	.cin(gnd),
	.combout(\LessThan0~1_combout ),
	.cout());
defparam \LessThan0~1 .lut_mask = 16'hFFFE;
defparam \LessThan0~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Add0~3 (
	.dataa(flash_read_addr_10),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~1 ),
	.combout(\Add0~3_combout ),
	.cout(\Add0~4 ));
defparam \Add0~3 .lut_mask = 16'h5A5F;
defparam \Add0~3 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Add0~6 (
	.dataa(flash_read_addr_11),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~4 ),
	.combout(\Add0~6_combout ),
	.cout(\Add0~7 ));
defparam \Add0~6 .lut_mask = 16'h5AAF;
defparam \Add0~6 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Add0~9 (
	.dataa(flash_read_addr_12),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~7 ),
	.combout(\Add0~9_combout ),
	.cout(\Add0~10 ));
defparam \Add0~9 .lut_mask = 16'h5A5F;
defparam \Add0~9 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Add0~12 (
	.dataa(flash_read_addr_13),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~10 ),
	.combout(\Add0~12_combout ),
	.cout(\Add0~13 ));
defparam \Add0~12 .lut_mask = 16'h5AAF;
defparam \Add0~12 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Add0~15 (
	.dataa(flash_read_addr_14),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~13 ),
	.combout(\Add0~15_combout ),
	.cout(\Add0~16 ));
defparam \Add0~15 .lut_mask = 16'h5A5F;
defparam \Add0~15 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Add0~18 (
	.dataa(flash_read_addr_15),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~16 ),
	.combout(\Add0~18_combout ),
	.cout(\Add0~19 ));
defparam \Add0~18 .lut_mask = 16'h5AAF;
defparam \Add0~18 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Add0~21 (
	.dataa(flash_read_addr_16),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~19 ),
	.combout(\Add0~21_combout ),
	.cout(\Add0~22 ));
defparam \Add0~21 .lut_mask = 16'h5A5F;
defparam \Add0~21 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \Add0~24 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add0~22 ),
	.combout(\Add0~24_combout ),
	.cout());
defparam \Add0~24 .lut_mask = 16'h0F0F;
defparam \Add0~24 .sum_lutc_input = "cin";

endmodule

module ULA_UFM_altera_onchip_flash_block (
	drdout,
	arclk,
	drclk,
	xe_ye,
	se,
	ardin,
	nosc_ena,
	drshft)/* synthesis synthesis_greybox=1 */;
output 	[31:0] drdout;
input 	arclk;
input 	drclk;
input 	xe_ye;
input 	se;
input 	[22:0] ardin;
input 	nosc_ena;
input 	drshft;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [31:0] ufm_block_DRDOUT_bus;

assign drdout[0] = ufm_block_DRDOUT_bus[0];
assign drdout[1] = ufm_block_DRDOUT_bus[1];
assign drdout[2] = ufm_block_DRDOUT_bus[2];
assign drdout[3] = ufm_block_DRDOUT_bus[3];
assign drdout[4] = ufm_block_DRDOUT_bus[4];
assign drdout[5] = ufm_block_DRDOUT_bus[5];
assign drdout[6] = ufm_block_DRDOUT_bus[6];
assign drdout[7] = ufm_block_DRDOUT_bus[7];
assign drdout[8] = ufm_block_DRDOUT_bus[8];
assign drdout[9] = ufm_block_DRDOUT_bus[9];
assign drdout[10] = ufm_block_DRDOUT_bus[10];
assign drdout[11] = ufm_block_DRDOUT_bus[11];
assign drdout[12] = ufm_block_DRDOUT_bus[12];
assign drdout[13] = ufm_block_DRDOUT_bus[13];
assign drdout[14] = ufm_block_DRDOUT_bus[14];
assign drdout[15] = ufm_block_DRDOUT_bus[15];
assign drdout[16] = ufm_block_DRDOUT_bus[16];
assign drdout[17] = ufm_block_DRDOUT_bus[17];
assign drdout[18] = ufm_block_DRDOUT_bus[18];
assign drdout[19] = ufm_block_DRDOUT_bus[19];
assign drdout[20] = ufm_block_DRDOUT_bus[20];
assign drdout[21] = ufm_block_DRDOUT_bus[21];
assign drdout[22] = ufm_block_DRDOUT_bus[22];
assign drdout[23] = ufm_block_DRDOUT_bus[23];
assign drdout[24] = ufm_block_DRDOUT_bus[24];
assign drdout[25] = ufm_block_DRDOUT_bus[25];
assign drdout[26] = ufm_block_DRDOUT_bus[26];
assign drdout[27] = ufm_block_DRDOUT_bus[27];
assign drdout[28] = ufm_block_DRDOUT_bus[28];
assign drdout[29] = ufm_block_DRDOUT_bus[29];
assign drdout[30] = ufm_block_DRDOUT_bus[30];
assign drdout[31] = ufm_block_DRDOUT_bus[31];

fiftyfivenm_unvm ufm_block(
	.arclk(arclk),
	.arshft(vcc),
	.drclk(drclk),
	.drshft(drshft),
	.drdin(vcc),
	.nprogram(vcc),
	.nerase(vcc),
	.nosc_ena(nosc_ena),
	.par_en(vcc),
	.xe_ye(xe_ye),
	.se(se),
	.ardin({nosc_ena,nosc_ena,nosc_ena,nosc_ena,nosc_ena,ardin[17],ardin[16],ardin[15],ardin[14],ardin[13],ardin[12],ardin[11],ardin[10],ardin[9],ardin[8],ardin[7],ardin[6],ardin[5],ardin[4],ardin[3],ardin[2],ardin[1],ardin[0]}),
	.busy(),
	.osc(),
	.bgpbusy(),
	.sp_pass(),
	.se_pass(),
	.drdout(ufm_block_DRDOUT_bus));
defparam ufm_block.addr_range1_end_addr = 79871;
defparam ufm_block.addr_range1_offset = 512;
defparam ufm_block.addr_range2_end_addr = 79871;
defparam ufm_block.addr_range2_offset = 0;
defparam ufm_block.addr_range3_offset = 0;
defparam ufm_block.device_id = "08";
defparam ufm_block.init_filename = "d:/fpga/electron/max 10 board - board ver 1.05 - 10m08sa144c8g - as per 1.04 board config - data buffer pins different on this board/rom/many_roms.hex";
defparam ufm_block.init_filename_sim = "d:/fpga/electron/max 10 board - board ver 1.05 - 10m08sa144c8g - as per 1.04 board config - data buffer pins different on this board/rom/many_roms.dat";
defparam ufm_block.is_compressed_image = "true";
defparam ufm_block.is_dual_boot = "false";
defparam ufm_block.is_eram_skip = "true";
defparam ufm_block.max_ufm_valid_addr = 44031;
defparam ufm_block.max_valid_addr = 79871;
defparam ufm_block.min_ufm_valid_addr = 0;
defparam ufm_block.min_valid_addr = 0;
defparam ufm_block.part_name = "10m08sae144c8g";
defparam ufm_block.reserve_block = "false";

endmodule
