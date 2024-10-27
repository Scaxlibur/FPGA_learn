`timescale 1ns / 1ns //指的是时间精度

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/27 15:39:17
// Design Name: 
// Module Name: mux2_test_bench
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


module mux2_test_bench(
    //仿真用可以不用写端口
    );

    reg s_a;    //激励，输入端口定义为reg型
    reg s_b;
    reg sel;
    wire out;   //输出定义为wire型

    mux2 mux2_inst0( //实例化待测试的模块
    .a(s_a),
    .b(s_b),
    .sel(sel),
    .out(out)
    );

    initial begin
        s_a = 0;s_b = 0;sel = 0;
        #200;       //用来在仿真时设置延时，不能在正式项目里使用
        s_a = 0;s_b = 0;sel = 1;
        #200; 
        s_a = 0;s_b = 1;sel = 0;
        #200; 
        s_a = 0;s_b = 1;sel = 1;
        #200; 
        s_a = 1;s_b = 0;sel = 0;
        #200; 
        s_a = 1;s_b = 0;sel = 1;
        #200; 
        s_a = 1;s_b = 1;sel = 0;
        #200; 
        s_a = 1;s_b = 1;sel = 1;
        #200;
        $stop;
    end

endmodule
