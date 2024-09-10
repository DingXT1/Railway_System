`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/10 09:40:37
// Design Name: 
// Module Name: IO_deal
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


/////////////////////////////////////////////////////////////
//第二个模块！
module IO_deal(
 input clk, 
 input rst,         // 输入时钟和复位信号
 input [4:1] key_value,                
 input [1:1] key, 
 output reg [7:0]  start_station_value,//十进制
 output reg [7:0]  end_station_value,//十进制
 output reg [7:0]  pay_money_value,//十进制
 output reg [7:0]  recharge_money_value,//十进制
 
 output reg [15:0]  start_station,//数码管制，不是十进制
 output reg [15:0]  end_station,//数码管制，不是十进制
 //////////////////////////////////////
 //无作用，可以挪到别处
 output reg [15:0]  pay_money,//数码管制，不是十进制
 output reg [15:0]  recharge_money,//数码管制，不是十进制
  //////////////////////////////////////
 output reg [3:0]  segdisp_state//显示状态（以两位为单位）
);
reg [1:1]flag;
reg [16:0] i;
reg [16:0] j;
reg [3:0] start_one_unit;
reg [3:0] start_ten_unit;
reg [3:0] end_one_unit;
reg [3:0] end_ten_unit;


 initial 
    begin
    for(i=0;i<4;i=i+1)
     begin segdisp_state[i]=0;end
     start_station=16'b1100_0000_1100_0000;
     end_station=16'b1100_0000_1100_0000;
     //////////////////////////////////////
     //无作用，可以挪到别处  
     pay_money=16'b1111_1001_1111_1001;
     recharge_money=16'b1111_1001_1111_1001;
     //////////////////////////////////////
     start_one_unit=0;
     start_ten_unit=0;
     end_one_unit=0;
     end_ten_unit=0;

     start_station_value=0;
     end_station_value=0;
     pay_money_value=0;
     recharge_money_value=0;
    end
    

always @(negedge key)
begin

    flag=0;
    //状态重置
    if(segdisp_state >= 4)
    segdisp_state=0;
    //////////////////////起点/////////////////////////////
    if(segdisp_state==0)
    begin
        case (key_value)
            4'h0: begin start_station [6:0] = 7'b1000000;  start_ten_unit = 0; end
            4'h1: begin start_station [6:0] = 7'b1111001;  start_ten_unit = 1; end
            4'h2: begin start_station [6:0] = 7'b0100100;  start_ten_unit = 2; end  
            4'h3: begin start_station [6:0] = 7'b0110000;  start_ten_unit = 3; end
            4'h4: begin start_station [6:0] = 7'b0011001;  start_ten_unit = 4; end  
            4'h5: begin start_station [6:0] = 7'b0010010;  start_ten_unit = 5; end
            4'h6: begin start_station [6:0] = 7'b0000010;  start_ten_unit = 6; end 
            4'h7: begin start_station [6:0] = 7'b1111000;  start_ten_unit = 7; end 
            4'h8: begin start_station [6:0] = 7'b0000000;  start_ten_unit = 8; end 
            4'h9: begin start_station [6:0] = 7'b0010000;  start_ten_unit = 9; end 
            default :begin segdisp_state = segdisp_state +1;  end
        endcase 
         start_station [7] = 1;//共极，不用管
         start_station_value=start_ten_unit*10+start_one_unit;
         flag=1;
    end
    //可能语法有问题
    if(segdisp_state==1 && flag==0 )
    begin
        case (key_value)
            4'h0: begin start_station [14:8] = 7'b1000000;  start_one_unit = 0; end
            4'h1: begin start_station [14:8] = 7'b1111001;  start_one_unit = 1; end
            4'h2: begin start_station [14:8] = 7'b0100100;  start_one_unit = 2; end  
            4'h3: begin start_station [14:8] = 7'b0110000;  start_one_unit = 3; end
            4'h4: begin start_station [14:8] = 7'b0011001;  start_one_unit = 4; end  
            4'h5: begin start_station [14:8] = 7'b0010010;  start_one_unit = 5; end
            4'h6: begin start_station [14:8] = 7'b0000010;  start_one_unit = 6; end 
            4'h7: begin start_station [14:8] = 7'b1111000;  start_one_unit = 7; end 
            4'h8: begin start_station [14:8] = 7'b0000000;  start_one_unit = 8; end 
            4'h9: begin start_station [14:8] = 7'b0010000;  start_one_unit = 9; end 
            default :begin segdisp_state=segdisp_state+1;end
        endcase
		 start_station [15] =1;//共极，不用管
         start_station_value=start_ten_unit*10+start_one_unit;
		 flag=1;
    end
    
   //////////////////////终点///////////////////////////// 
    if(segdisp_state==2 && flag==0)
    
    begin
        case (key_value)
            4'h0: begin end_station [6:0] = 7'b1000000;  end_ten_unit = 0*10; end
            4'h1: begin end_station [6:0] = 7'b1111001;  end_ten_unit = 1*10; end
            4'h2: begin end_station [6:0] = 7'b0100100;  end_ten_unit = 2*10; end  
            4'h3: begin end_station [6:0] = 7'b0110000;  end_ten_unit = 3*10; end
            4'h4: begin end_station [6:0] = 7'b0011001;  end_ten_unit = 4*10; end  
            4'h5: begin end_station [6:0] = 7'b0010010;  end_ten_unit = 5*10; end
            4'h6: begin end_station [6:0] = 7'b0000010;  end_ten_unit = 6*10; end 
            4'h7: begin end_station [6:0] = 7'b1111000;  end_ten_unit = 7*10; end 
            4'h8: begin end_station [6:0] = 7'b0000000;  end_ten_unit = 8*10; end 
            4'h9: begin end_station [6:0] = 7'b0010000;  end_ten_unit = 9*10; end 
            default :begin segdisp_state=segdisp_state+1;end
        endcase 
         end_station [7] = 1;
         end_station_value=end_ten_unit*10+end_one_unit;
         flag=1;
    end
    
    if(segdisp_state==3 && flag==0)
    begin
        case (key_value)
            4'h0: begin end_station [14:8] = 7'b1000000;  end_one_unit = 0; end
            4'h1: begin end_station [14:8] = 7'b1111001;  end_one_unit = 1; end
            4'h2: begin end_station [14:8] = 7'b0100100;  end_one_unit = 2; end  
            4'h3: begin end_station [14:8] = 7'b0110000;  end_one_unit = 3; end
            4'h4: begin end_station [14:8] = 7'b0011001;  end_one_unit = 4; end  
            4'h5: begin end_station [14:8] = 7'b0010010;  end_one_unit = 5; end
            4'h6: begin end_station [14:8] = 7'b0000010;  end_one_unit = 6; end 
            4'h7: begin end_station [14:8] = 7'b1111000;  end_one_unit = 7; end 
            4'h8: begin end_station [14:8] = 7'b0000000;  end_one_unit = 8; end 
            4'h9: begin end_station [14:8] = 7'b0010000;  end_one_unit = 9; end 
            default :begin segdisp_state=segdisp_state+1;end
        endcase
		end_station [15] = 1;
		end_station_value=end_ten_unit*10+end_one_unit;
		flag=1;
    end
    
end
endmodule
