`timescale 1ns / 1ps


module hx75_key_7seg(
	input sys_clk,  //50MHZ
	input [3:0] row,  //��
	output [3:0] col,   //��
	output [7:0] seg_sel,    //4�������ѡͨ�ź����  
	output  [7:0]  seg_led   //�������������ƽ
    );
	
	wire[3:0] key_value;
	wire key_valid;
	wire [15:0] start_station;
	wire [15:0] end_station;
	wire [15:0] pay_money;
	wire [15:0] recharge_money;
	wire [3:0] segdisp_state;
	key44 U1
	(
		.clk(sys_clk),  //50MHZ
		.reset(1'b0),
		.row(row),  //��
		.col(col),   //��
		.key_valid(key_valid),
		.key_value(key_value)  //��ֵ
	);
	
    Keyboard_conversion U2
    (
		.clk(sys_clk),  //50MHZ
		.rst(1'b1),
		.key_value(key_value),  //��ֵ
		.key(~key_valid),
		.start_station(start_station),
		.end_station(end_station),
		.pay_money(pay_money),
		.recharge_money(recharge_money),
		.segdisp_state(segdisp_state)
	);
	
	seg_dtxs U3
	(
		.clk(sys_clk),  //50MHZ
		.rst(1'b1),
		.start_station(start_station),
		.end_station(end_station),
		.pay_money(pay_money),
		.recharge_money(recharge_money),
		.segdisp_state(segdisp_state),
		.seg_sel(seg_sel),
		.seg_led(seg_led)  
	);
	/*
	hx75_hex_7seg U2( 
		.sw(key_value),  // key
		.key(~key_valid),  //Dot
		.seg_sel(seg_sel),
		.seg_led(seg_led)  
    );	*/
    
endmodule
