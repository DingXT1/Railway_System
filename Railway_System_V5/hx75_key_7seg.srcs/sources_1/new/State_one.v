`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/10 15:44:15
// Design Name: 
// Module Name: State_one
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


module num2seg(
input clk,
input [3:0] top_state,
input [3:0] ticket_num,
input [7:0] price,
output reg [15:0] refer_money,//数码管制，不是十进制
output reg [15:0] total_money//数码管制，不是十进制
    );
    
    reg [3:0]ten_unit;
    reg [3:0]one_unit;
    reg [7:0]total;
    reg [3:0]ten_unit_2;
    reg [3:0]one_unit_2;
    reg [7:0]test;
    initial 
    begin
        refer_money=16'b1111_1001_1111_1001;
        total_money=16'b1111_1001_1111_1001;
    end
    always@ (posedge clk) 
    begin
            ten_unit=price / 10;
            one_unit=price % 10;
            
            total=ticket_num*price;
            ten_unit_2=total / 10;
            one_unit_2=total % 10;
            
            //单票价
            case (ten_unit)
            4'h0: begin refer_money [6:0] = 7'b1000000;    end
            4'h1: begin refer_money [6:0] = 7'b1111001;    end
            4'h2: begin refer_money [6:0] = 7'b0100100;    end  
            4'h3: begin refer_money [6:0] = 7'b0110000;    end
            4'h4: begin refer_money [6:0] = 7'b0011001;    end  
            4'h5: begin refer_money [6:0] = 7'b0010010;    end
            4'h6: begin refer_money [6:0] = 7'b0000010;    end 
            4'h7: begin refer_money [6:0] = 7'b1111000;    end 
            4'h8: begin refer_money [6:0] = 7'b0000000;    end 
            4'h9: begin refer_money [6:0] = 7'b0010000;    end 
            default:refer_money [6:0]=7'b111_1111;
            endcase
            refer_money[7]=1;
            
            case (one_unit)
            4'h0: begin refer_money [14:8] = 7'b1000000;    end
            4'h1: begin refer_money [14:8] = 7'b1111001;    end
            4'h2: begin refer_money [14:8] = 7'b0100100;    end  
            4'h3: begin refer_money [14:8] = 7'b0110000;    end
            4'h4: begin refer_money [14:8] = 7'b0011001;    end  
            4'h5: begin refer_money [14:8] = 7'b0010010;    end
            4'h6: begin refer_money [14:8] = 7'b0000010;    end 
            4'h7: begin refer_money [14:8] = 7'b1111000;    end 
            4'h8: begin refer_money [14:8] = 7'b0000000;    end 
            4'h9: begin refer_money [14:8] = 7'b0010000;    end 
            default:refer_money [14:8]=7'b111_1111;
            endcase
            refer_money[15]=1;
            
            //总票价
            case (ten_unit_2)
            4'h0: begin total_money [6:0] = 7'b1000000;    end
            4'h1: begin total_money [6:0] = 7'b1111001;    end
            4'h2: begin total_money [6:0] = 7'b0100100;    end  
            4'h3: begin total_money [6:0] = 7'b0110000;    end
            4'h4: begin total_money [6:0] = 7'b0011001;    end  
            4'h5: begin total_money [6:0] = 7'b0010010;    end
            4'h6: begin total_money [6:0] = 7'b0000010;    end 
            4'h7: begin total_money [6:0] = 7'b1111000;    end 
            4'h8: begin total_money [6:0] = 7'b0000000;    end 
            4'h9: begin total_money [6:0] = 7'b0010000;    end 
            default:total_money [6:0]=7'b111_1111;
            endcase
            total_money[7]=1;
            
            case (one_unit_2)
            4'h0: begin total_money [14:8] = 7'b1000000;    end
            4'h1: begin total_money [14:8] = 7'b1111001;    end
            4'h2: begin total_money [14:8] = 7'b0100100;    end  
            4'h3: begin total_money [14:8] = 7'b0110000;    end
            4'h4: begin total_money [14:8] = 7'b0011001;    end  
            4'h5: begin total_money [14:8] = 7'b0010010;    end
            4'h6: begin total_money [14:8] = 7'b0000010;    end 
            4'h7: begin total_money [14:8] = 7'b1111000;    end 
            4'h8: begin total_money [14:8] = 7'b0000000;    end 
            4'h9: begin total_money [14:8] = 7'b0010000;    end 
            default:total_money [14:8]=7'b111_1111;
            endcase
            total_money[15]=1;
        
    end
     
endmodule
