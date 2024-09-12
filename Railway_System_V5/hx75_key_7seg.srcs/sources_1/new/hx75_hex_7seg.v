`timescale 1ns / 1ps
module seg_dtxs(
    input clk, 
    input rst,           // 输入时钟和复位信号
    input [3:0]  top_state,
    input [15:0]  start_station,  //起始站点【8+8】
    input [15:0]  end_station,   //结束站点【8+8】
    //////////////////////////////////////////////
    input [15:0]  refer_money,   //单票价【8+8】
    input [15:0]  total_money,   //总票价【8+8】
    /////////////////////////////////////////////

    input [3:0]  segdisp_state,//数码管显示状态的4位数值。
    
    output reg [7:0] seg_value,        // 输出 8 位数码管【显示数据】
    output reg [7:0] seg_sel        // 输出 8 位数码管共阳/共阴【控制信号】
    );
    

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
    //数码管显示，每隔1ms
    always @(posedge clk) begin
        case (num)
            0: begin seg_sel= 8'b0111_1111;seg_value = start_station[7:0];  end// 赋值相应内容
            1: begin seg_sel= 8'b1011_1111;seg_value = start_station[15:8];  end
            2: begin seg_sel= 8'b1101_1111;seg_value = end_station[7:0];  end// 赋值相应内容
            3: begin seg_sel= 8'b1110_1111;seg_value = end_station[15:8]; end
            4: begin
                seg_sel= 8'b1111_0111;
                
                //状态1
                if(top_state==4'b0001)begin seg_value = 8'b1000_0110; end
                //状态0
                else begin seg_value = refer_money[7:0];  end 
                
               end
            5: begin 
                seg_sel= 8'b1111_1011;
                
                //状态1
                if(top_state==4'b0001)begin seg_value = 8'b1000_0110; end
                //状态0
                else begin seg_value = refer_money[15:8];  end       
                
               end
            6: begin 
                seg_sel= 8'b1111_1101;
                
                //状态1
                if(top_state==4'b0001)begin seg_value = 8'b1000_0110; end
                //状态0
                else begin seg_value = total_money[7:0];  end
                
                end
            7: begin 
                seg_sel= 8'b1111_1110;
                
                //状态1
                if(top_state==4'b0001)begin seg_value = 8'b1000_0110; end
                //状态0
                else begin seg_value = total_money[15:8];  end
                
                end           
            //原则上不会执行
            default: seg_sel <= 8'b0111_1111; // 默认激活第一个数码管
        endcase
    end

endmodule