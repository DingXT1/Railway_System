`timescale 1ns / 1ps
module seg_dtxs(clk, rst,start_station, end_station, pay_money,recharge_money,seg_led,segdisp_state,seg_sel);
    input clk, rst;           // 输入时钟和复位信号
    input [15:0]start_station;
    input [15:0] end_station;
    input  [15:0]  pay_money;
    input  [15:0]  recharge_money;
    input [3:0]  segdisp_state;
    output [7:0] seg_led;        // 输出 8 位数码管显示数据
    output [7:0] seg_sel;        // 输出 8 位数码管共阳/共阴控制信号
    reg [7:0] seg_led;           // 用于存放数码管显示数据的寄存器
    reg [7:0] seg_sel;           // 用于存放数码管选择控制信号的寄存器
    reg [3:0] num;            // 计数器，用于选择当前激活的数码管
    reg [16:0] counter;      // 计数器，用于产生时间延迟

    // 产生1ms延时
    always @(posedge clk or negedge rst) begin
        if (!rst)
            counter <= 0;    // 复位时，计数器清零
        else if (counter == 99_999)
            counter <= 0;    // 达到 1ms 后归零
        else 
            counter <= counter + 1; // 否则计数加一
    end

    // 每隔1ms计数加1，加到4自动归0
    always @(posedge clk or negedge rst) begin
        if (!rst)
            num <= 0;         // 复位时，dm清零
        else if ((counter == 99_999) && (num == 7))
            num <= 0;         // 如果num已经到达7且计数已满，则归零
        else if (counter == 99_999)
            num <= num + 1;    // 每1ms dm加1
        else 
            num <= num;        // 否则保持不变
    end

    // 根据计数的值来选择哪一个数码管公共端被导通
    always @(*) begin
        case (num)
          0: seg_led <= start_station[7:0];  // 对应数字4
            1: seg_led <= start_station[15:7];  // 对应数字3
            2: seg_led <= end_station[7:0];  // 对应数字2
            3: seg_led <= end_station[15:7];  // 对应数字1
            4: seg_led <= pay_money[7:0];  // 对应数字1
            5: seg_led <= pay_money[15:7];  // 对应数字1
            6: seg_led <= recharge_money[7:0];  // 对应数字1
            7: seg_led <= recharge_money[15:7];  // 对应数字1
            default: seg_sel <= 8'b0111_1111; // 默认激活第一个数码管
        endcase
    end

    // 根据被导通的数码管位置设置相应的显示内容
    always @(*) begin
        case (num)
            0: seg_led <= start_station[7:0];  // 对应数字4
            1: seg_led <= start_station[15:8];  // 对应数字3
            2: seg_led <= end_station[7:0];  // 对应数字2
            3: seg_led <= end_station[15:8];  // 对应数字1
            4: seg_led <= pay_money[7:0];  // 对应数字1
            5: seg_led <= pay_money[15:8];  // 对应数字1
            6: seg_led <= recharge_money[7:0];  // 对应数字1
            7: seg_led <= recharge_money[15:8];  // 对应数字1
        endcase
    end
endmodule

module Keyboard_conversion(
 input clk, 
 input rst,         // 输入时钟和复位信号
 input [4:1] key_value,                
 input [1:1] key, 
 output reg [15:0]  start_station,
 output reg [15:0] end_station,
 output reg [15:0]  pay_money,
 output reg [15:0]  recharge_money,
 output reg [3:0]  segdisp_state
);

always @*  
begin
    if(segdisp_state==4)
    segdisp_state=0;
    if(segdisp_state==0)
    begin
        case (key_value)
            4'h0: start_station [6:0] = 7'b1000000;
            4'h1: start_station [6:0] = 7'b1111001;
            4'h2: start_station [6:0] = 7'b0100100;
            4'h3: start_station [6:0] = 7'b0110000;
            4'h4: start_station [6:0] = 7'b0011001;
            4'h5: start_station [6:0] = 7'b0010010;
            4'h6: start_station [6:0] = 7'b0000010;
            4'h7: start_station [6:0] = 7'b1111000;
            4'h8: start_station [6:0] = 7'b0000000;
            4'h9: start_station [6:0] = 7'b0010000;
            default :begin start_station [6:0]= start_station [6:0];segdisp_state=segdisp_state+1;end
        endcase 
         start_station [7] = key;
    end
    else if(segdisp_state==1)
    begin
        case (key_value)
            4'h0: start_station [15:8] = 7'b1000000;
            4'h1: start_station [15:8] = 7'b1111001;
            4'h2: start_station [15:8] = 7'b0100100;
            4'h3: start_station [15:8] = 7'b0110000;
            4'h4: start_station [15:8] = 7'b0011001;
            4'h5: start_station [15:8] = 7'b0010010;
            4'h6: start_station [15:8] = 7'b0000010;
            4'h7: start_station [15:8] = 7'b1111000;
            4'h8: start_station [15:8] = 7'b0000000;
            4'h9: start_station [15:8] = 7'b0010000;
            default :begin start_station [15:8]= start_station [15:8];segdisp_state=segdisp_state+1;end
        endcase
		 start_station [15] = key;
    end
     else if(segdisp_state==2)
    begin
        case (key_value)
            4'h0: end_station [6:0] = 7'b1000000;
            4'h1: end_station [6:0] = 7'b1111001;
            4'h2: end_station [6:0] = 7'b0100100;
            4'h3: end_station [6:0] = 7'b0110000;
            4'h4: end_station [6:0] = 7'b0011001;
            4'h5: end_station [6:0] = 7'b0010010;
            4'h6: end_station [6:0] = 7'b0000010;
            4'h7: end_station [6:0] = 7'b1111000;
            4'h8: end_station [6:0] = 7'b0000000;
            4'h9: end_station [6:0] = 7'b0010000;
            default :begin end_station [6:0]= end_station [6:0];segdisp_state=segdisp_state+1;end
        endcase 
         end_station [7] = key;
    end
    else if(segdisp_state==3)
    begin
        case (key_value)
            4'h0: end_station [15:8] = 7'b1000000;
            4'h1: end_station [15:8] = 7'b1111001;
            4'h2: end_station [15:8] = 7'b0100100;
            4'h3: end_station [15:8] = 7'b0110000;
            4'h4: end_station [15:8] = 7'b0011001;
            4'h5: end_station [15:8] = 7'b0010010;
            4'h6: end_station [15:8] = 7'b0000010;
            4'h7: end_station [15:8] = 7'b1111000;
            4'h8: end_station [15:8] = 7'b0000000;
            4'h9: end_station [15:8] = 7'b0010000;
            default :begin end_station [15:8]= end_station [15:8];segdisp_state=segdisp_state+1;end
        endcase
		 end_station [15] = key;
    end
       
       end
endmodule