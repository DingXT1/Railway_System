`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/12 20:08:49
// Design Name: 
// Module Name: Bill
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


module Bill(
    input clk,  
    input [3:0] top_state,
    input [2:0] signal,
    output reg [13:0] pay_auto_bill,
    output reg [13:0] pay_hand_bill
    );
    
    reg [1:0] bill_state;
    reg [7:0] single_bill;
    reg [7:0] pre_bill;
    reg [1:0] bill_flag;
     
    initial 
    begin
        pay_auto_bill=0;
        pay_hand_bill=0;
        single_bill=0;
        pre_bill=0;
    end
    
  always@(clk)
  begin
    pre_bill=single_bill;
//    //收单次状态
//        if(1)
//        begin
//             bill_state[0]=signal[2];
//             bill_state[1]=signal[1];
//             case(bill_state)
//                2'b00:begin single_bill=10; end
//                2'b01:begin single_bill=20; end
//                2'b10:begin single_bill=50; end
//                2'b11:begin single_bill=100; end
//                default:begin end
//              endcase
//              single_bill=100;
//        end     
//        else begin single_bill=0; end
        
//        //累加状态   
//        if(single_bill == pre_bill)begin end
//        else
//        begin
            //状态2+状态3
            if(top_state==4'b0010 || top_state==4'b0011)
            begin  pay_hand_bill=50; end
            //状态0+状态1
            else 
            begin  pay_auto_bill=60; end
//        end 
  end
    
endmodule
