`timescale 1ns / 1ps

module top_design(
	input sys_clk,  //50MHZ
	input [4:1]sw,    // 开关输入信号
	input [3:0] row,  //行
	output [3:0] col,   //列
	output [7:0] seg_sel,    //4个数码管选通信号输出  
	output  [7:0] seg_value,   //段码输出，正电平
	output [4:1]led    // 去抖后的开关输出信号
    );
	wire[3:0] key_value;
	wire key_valid;
	//顶层状态
	wire [3:0] top_state;
	//数码管对应值
	//state 0
	wire [15:0] start_station;
	wire [7:0 ] start_station_value;
	wire [15:0] end_station;
	wire [7:0 ] end_station_value;
	//state 1
	wire [7:0]  price;
	wire [15:0] refer_money;
	//state 2
	wire [15:0] pay_money;
	wire [7:0 ] pay_money_value;
	wire [15:0] recharge_money;
	wire [7:0 ] recharge_money_value;
	
	//数码管对应值
	wire [3:0] segdisp_state;
	
	
	
	//键盘扫描模块
	key44 U1
	(
		.clk(sys_clk),  //50MHZ
		.reset(1'b0),
		.row(row),  //行
		.col(col),   //列
		.key_valid(key_valid),
		.key_value(key_value)  //键值
	);
	
	//输入输出处理模块
    IO_deal U2
    (
		.clk(sys_clk),  //50MHZ
		.rst(1'b1),
		.key_value(key_value),  //键值
		.key(key_valid),
		.start_station_value(start_station_value),
		.end_station_value(end_station_value),
		.pay_money_value(pay_money_value),
		.recharge_money_value(recharge_money),
		.start_station(start_station),
		.end_station(end_station),
		.recharge_money(recharge_money),
		.segdisp_state(segdisp_state)
	);
	
	//显示模块
	seg_dtxs U3
	(
		.clk(sys_clk),  //50MHZ
		.rst(1'b1),
		.top_state(top_state),
		.start_station(start_station),
		.end_station(end_station),
		.pay_money(pay_money),
		.refer_money(refer_money),
		.recharge_money(recharge_money),
		.segdisp_state(segdisp_state),
		.seg_sel(seg_sel),
		.seg_value(seg_value)  
	);
	
	//计算票价模块
    Select U4
    (
        .clk(sys_clk),//50MHZ
        .start_station_value(start_station_value),
        .end_station_value(end_station_value),
        .price(price)
    );
    
    //开关模块
    switch U5(
        .clk(sys_clk),//50MHZ
        .sw(sw),    // 开关输入信号
        .led(led),     // 去抖后的开关输出信号
        .top_state(top_state)
    );
    
    //状态1模块
    State_one U6(
        .clk(sys_clk),//50MHZ
        .top_state(top_state),
        .price(price),
        .refer_money(refer_money)//数码管制，不是十进制
    );
    
endmodule
