`timescale 1ns / 1ps
module seg_dtxs(clk, rst,start_station, end_station, pay_money,recharge_money,seg_value,segdisp_state,seg_sel);
    input clk, rst;           // 输入时钟和复位信号
    input [15:0]start_station;  //起始站点【8+8】
    input [15:0] end_station;   //结束站点【8+8】
    input  [15:0]  pay_money; //支付金额【8+8】
    input  [15:0]  recharge_money;//找零金额【8+8】

    input [3:0]  segdisp_state;//数码管显示状态的4位数值。
    
    output [7:0] seg_value;        // 输出 8 位数码管【显示数据】
    output [7:0] seg_sel;        // 输出 8 位数码管共阳/共阴【控制信号】
    reg [7:0] seg_value;           // 用于存放数码管显示数据的寄存器
    reg [7:0] seg_sel;           // 用于存放数码管选择控制信号的寄存器
    reg [3:0] num;            // 上级计数器，用于选择当前激活的数码管
    reg [16:0] counter;      // 下级计数器，用于产生时间延迟
    reg i;
 initial 
     begin
    for(i=0;i<8;i=i+1)
    begin
     seg_sel[i]=0;
    end
    seg_value=8'b11000000;
    end
   
    // 产生1ms延时【根据时钟信号】
    always @(posedge clk or negedge rst) begin
        if (!rst)
            counter <= 0;    // 复位时，计数器清零
        else if (counter == 99_999)
            counter <= 0;    // 达到 1ms 后归零
        else 
            counter <= counter + 1; // 否则计数加一
    end

     ////////////////////////////////////////////////////////////////////////////////
    //每隔1ms，num计数器加1，直到7，然后归零。
    //num用选择当前激活的数码管。
    always @(posedge clk or negedge rst) begin
        if (!rst)
            num <= 0;         // 复位时，dm清零
        else if ((counter == 99_999) && (num == 7))//【1ms】+num为7
            num <= 0;         // 归零
        else if (counter == 99_999)
            num <= num + 1;    // 每1ms num加1
        else 
            num <= num;        // 否则保持不变
    end
    
    
     ////////////////////////////////////////////////////////////////////////////////
    //根据num的值，选择相应的输入信号段（start_station、end_station、pay_money、recharge_money）来显示。
    //default分支设置了默认的数码管选择信号。
    always @(posedge clk) begin
        case (num)
            0: begin seg_sel= 8'b0111_1111;seg_value = start_station[7:0];  end// 赋值相应内容
            1: begin seg_sel= 8'b1011_1111;seg_value = start_station[15:8];  end
            2: begin seg_sel= 8'b1101_1111;seg_value = end_station[7:0];  end// 赋值相应内容
            3: begin  seg_sel= 8'b1110_1111;seg_value = end_station[15:8]; end
            4: begin seg_sel= 8'b1111_0111;seg_value =  pay_money[7:0];  end// 赋值相应内容
            5: begin seg_sel= 8'b1111_1011; seg_value =  pay_money[15:8]; end
            6: begin seg_sel= 8'b1111_1101;seg_value = recharge_money[7:0];  end// 赋值相应内容
            7: begin seg_sel= 8'b1111_1110; seg_value =recharge_money[15:8]; end           
            //原则上不会执行
            default: seg_sel <= 8'b0111_1111; // 默认激活第一个数码管
        endcase
    end

endmodule


/////////////////////////////////////////////////////////////
//第二个模块！
module Keyboard_conversion(
 input clk, 
 input rst,         // 输入时钟和复位信号
 input [4:1] key_value,                
 input [1:1] key, 

 output reg [15:0]  start_station,//数码管制，不是十进制
 output reg [15:0]  end_station,//数码管制，不是十进制
 output reg [15:0]  pay_money,//数码管制，不是十进制
 output reg [15:0]  recharge_money,//数码管制，不是十进制
 output reg [3:0]  segdisp_state//显示状态（以两位为单位）
);
reg [1:1]flag;
reg [16:0] i;
reg [16:0] j;

 initial 
     begin
    for(i=0;i<4;i=i+1)
     begin  segdisp_state[i]=0;end
     start_station=16'b1100_0000_1100_0000;
     end_station=16'b1100_0000_1100_0000;
     pay_money=16'b1100_0000_1100_0000;
     recharge_money=16'b1100_0000_1100_0000;
    end
    

always @(negedge key)
begin

    flag=0;
    //状态重置
    if(segdisp_state >= 8)
    segdisp_state=0;
    //////////////////////起点/////////////////////////////
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
            default :begin segdisp_state = segdisp_state +1;  end
        endcase 
         start_station [7] = 1;//共极，不用管
         flag=1;
    end
    //可能语法有问题
    if(segdisp_state==1 && flag==0 )
    begin
        case (key_value)
            4'h0: start_station [14:8] = 7'b1000000;
            4'h1: start_station [14:8] = 7'b1111001;
            4'h2: start_station [14:8] = 7'b0100100;
            4'h3: start_station [14:8] = 7'b0110000;
            4'h4: start_station [14:8] = 7'b0011001;
            4'h5: start_station [14:8] = 7'b0010010;
            4'h6: start_station [14:8] = 7'b0000010;
            4'h7: start_station [14:8] = 7'b1111000;
            4'h8: start_station [14:8] = 7'b0000000;
            4'h9: start_station [14:8] = 7'b0010000;
            default :begin segdisp_state=segdisp_state+1;end
        endcase
		 start_station [15] =1;//共极，不用管
		 flag=1;
    end
    
   //////////////////////终点///////////////////////////// 
    if(segdisp_state==2 && flag==0)
    
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
            default :begin segdisp_state=segdisp_state+1;end
        endcase 
         end_station [7] = 1;
         flag=1;
    end
    
    if(segdisp_state==3 && flag==0)
    begin
        case (key_value)
            4'h0: end_station [14:8] = 7'b1000000;
            4'h1: end_station [14:8] = 7'b1111001;
            4'h2: end_station [14:8] = 7'b0100100;
            4'h3: end_station [14:8] = 7'b0110000;
            4'h4: end_station [14:8] = 7'b0011001;
            4'h5: end_station [14:8] = 7'b0010010;
            4'h6: end_station [14:8] = 7'b0000010;
            4'h7: end_station [14:8] = 7'b1111000;
            4'h8: end_station [14:8] = 7'b0000000;
            4'h9: end_station [14:8] = 7'b0010000;
            default :begin segdisp_state=segdisp_state+1;end
        endcase
		end_station [15] = 1;
		flag=1;
    end
    
    //////////////////////投币///////////////////////////// 
    if(segdisp_state==4 && flag==0)
    begin
        case (key_value)
            4'h0: pay_money [6:0] = 7'b1000000;
            4'h1: pay_money [6:0] = 7'b1111001;
            4'h2: pay_money [6:0] = 7'b0100100;
            4'h3: pay_money [6:0] = 7'b0110000;
            4'h4: pay_money [6:0] = 7'b0011001;
            4'h5: pay_money [6:0] = 7'b0010010;
            4'h6: pay_money [6:0] = 7'b0000010;
            4'h7: pay_money [6:0] = 7'b1111000;
            4'h8: pay_money [6:0] = 7'b0000000;
            4'h9: pay_money [6:0] = 7'b0010000;
            default :begin segdisp_state=segdisp_state+1;end
        endcase 
         pay_money [7] = 1;
         flag=1;
    end
    
    if(segdisp_state==5 && flag==0)
    begin
        case (key_value)
            4'h0: pay_money [14:8] = 7'b1000000;
            4'h1: pay_money [14:8] = 7'b1111001;
            4'h2: pay_money [14:8] = 7'b0100100;
            4'h3: pay_money [14:8] = 7'b0110000;
            4'h4: pay_money [14:8] = 7'b0011001;
            4'h5: pay_money [14:8] = 7'b0010010;
            4'h6: pay_money [14:8] = 7'b0000010;
            4'h7: pay_money [14:8] = 7'b1111000;
            4'h8: pay_money [14:8] = 7'b0000000;
            4'h9: pay_money [14:8] = 7'b0010000;
            default :begin segdisp_state=segdisp_state+1;end
        endcase
		pay_money [15] = 1;
		flag=1;
    end
    
    
    //////////////////////找零///////////////////////////// 
     if(segdisp_state==6 && flag==0)
    begin
        case (key_value)
            4'h0: recharge_money [6:0] = 7'b1000000;
            4'h1: recharge_money [6:0] = 7'b1111001;
            4'h2: recharge_money [6:0] = 7'b0100100;
            4'h3: recharge_money [6:0] = 7'b0110000;
            4'h4: recharge_money [6:0] = 7'b0011001;
            4'h5: recharge_money [6:0] = 7'b0010010;
            4'h6: recharge_money [6:0] = 7'b0000010;
            4'h7: recharge_money [6:0] = 7'b1111000;
            4'h8: recharge_money [6:0] = 7'b0000000;
            4'h9: recharge_money [6:0] = 7'b0010000;
            default :begin segdisp_state=segdisp_state+1;end
        endcase 
         recharge_money [7] = 1;
         flag=1;
    end
    
   if(segdisp_state==7 && flag==0)
    begin
        case (key_value)
            4'h0: recharge_money [14:8] = 7'b1000000;
            4'h1: recharge_money [14:8] = 7'b1111001;
            4'h2: recharge_money [14:8] = 7'b0100100;
            4'h3: recharge_money [14:8] = 7'b0110000;
            4'h4: recharge_money [14:8] = 7'b0011001;
            4'h5: recharge_money [14:8] = 7'b0010010;
            4'h6: recharge_money [14:8] = 7'b0000010;
            4'h7: recharge_money [14:8] = 7'b1111000;
            4'h8: recharge_money [14:8] = 7'b0000000;
            4'h9: recharge_money [14:8] = 7'b0010000;
            default :begin segdisp_state=segdisp_state+1;end
        endcase
		recharge_money [15] =1;
		flag=1;
    end 
end
endmodule