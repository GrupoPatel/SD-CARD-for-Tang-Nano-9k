//Copyright (C)2014-2023 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: IP file
//GOWIN Version: V1.9.9 Beta-1
//Part Number: GW1NR-LV9QN88PC6/I5
//Device: GW1NR-9
//Device Version: C
//Created Time: Tue Aug 08 13:25:34 2023

module Gowin_CLKDIV2 (clkout, hclkin, resetn);

output clkout;
input hclkin;
input resetn;

CLKDIV2 clkdiv2_inst (
    .CLKOUT(clkout),
    .HCLKIN(hclkin),
    .RESETN(resetn)
);

endmodule //Gowin_CLKDIV2
