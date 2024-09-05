`timescale 1ns / 1ps
module seg_dtxs(clk, rst,start_station, end_station, pay_money,recharge_money,seg_led,segdisp_state,seg_sel);
    input clk, rst;           // ����ʱ�Ӻ͸�λ�ź�
    input [15:0]start_station;
    input [15:0] end_station;
    input  [15:0]  pay_money;
    input  [15:0]  recharge_money;
    input [3:0]  segdisp_state;
    output [7:0] seg_led;        // ��� 8 λ�������ʾ����
    output [7:0] seg_sel;        // ��� 8 λ����ܹ���/���������ź�
    reg [7:0] seg_led;           // ���ڴ���������ʾ���ݵļĴ���
    reg [7:0] seg_sel;           // ���ڴ�������ѡ������źŵļĴ���
    reg [3:0] num;            // ������������ѡ��ǰ����������
    reg [16:0] counter;      // �����������ڲ���ʱ���ӳ�

    // ����1ms��ʱ
    always @(posedge clk or negedge rst) begin
        if (!rst)
            counter <= 0;    // ��λʱ������������
        else if (counter == 99_999)
            counter <= 0;    // �ﵽ 1ms �����
        else 
            counter <= counter + 1; // ���������һ
    end

    // ÿ��1ms������1���ӵ�4�Զ���0
    always @(posedge clk or negedge rst) begin
        if (!rst)
            num <= 0;         // ��λʱ��dm����
        else if ((counter == 99_999) && (num == 7))
            num <= 0;         // ���num�Ѿ�����7�Ҽ��������������
        else if (counter == 99_999)
            num <= num + 1;    // ÿ1ms dm��1
        else 
            num <= num;        // ���򱣳ֲ���
    end

    // ���ݼ�����ֵ��ѡ����һ������ܹ����˱���ͨ
    always @(*) begin
        case (num)
          0: seg_led <= start_station[7:0];  // ��Ӧ����4
            1: seg_led <= start_station[15:7];  // ��Ӧ����3
            2: seg_led <= end_station[7:0];  // ��Ӧ����2
            3: seg_led <= end_station[15:7];  // ��Ӧ����1
            4: seg_led <= pay_money[7:0];  // ��Ӧ����1
            5: seg_led <= pay_money[15:7];  // ��Ӧ����1
            6: seg_led <= recharge_money[7:0];  // ��Ӧ����1
            7: seg_led <= recharge_money[15:7];  // ��Ӧ����1
            default: seg_sel <= 8'b0111_1111; // Ĭ�ϼ����һ�������
        endcase
    end

    // ���ݱ���ͨ�������λ��������Ӧ����ʾ����
    always @(*) begin
        case (num)
            0: seg_led <= start_station[7:0];  // ��Ӧ����4
            1: seg_led <= start_station[15:8];  // ��Ӧ����3
            2: seg_led <= end_station[7:0];  // ��Ӧ����2
            3: seg_led <= end_station[15:8];  // ��Ӧ����1
            4: seg_led <= pay_money[7:0];  // ��Ӧ����1
            5: seg_led <= pay_money[15:8];  // ��Ӧ����1
            6: seg_led <= recharge_money[7:0];  // ��Ӧ����1
            7: seg_led <= recharge_money[15:8];  // ��Ӧ����1
        endcase
    end
endmodule

module Keyboard_conversion(
 input clk, 
 input rst,         // ����ʱ�Ӻ͸�λ�ź�
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