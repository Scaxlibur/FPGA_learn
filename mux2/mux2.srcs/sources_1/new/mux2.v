`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/27 11:03:40
// Design Name: 二选一多路器
// Module Name: mux2
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


module mux2(                    //创建了一个模块
    a,                          //端口列表
    b,
    sel,
    out
    );

    input a;                    //设置端口属性
    input b;
    input sel;
    output out;

    assign out = (sel==1)?a:b;  //赋值语句，使用了三目运算符
    
endmodule
