
module File (
    input wire s1,          // clk input
    input s2,
    input wire clk,
    inout  sdcmd,
    output wire[5:0]  led,
    output sdclk,
    output dat3,
    input sddat

);




reg  rstn;
assign dat3=1;
wire [5:0] mled;
assign led=~mled; 

wire ctrl=1;
wire clksd;


    Gowin_rPLL your_instance_name1(
        .clkout(clko), //output clkout
        .clkin(clk) //input clkin
    );



sd_file_reader #(
    .FILE_NAME_LEN     (11             ),
    .FILE_NAME        ( "example.txt"  ),
    .CLK_DIV          ( 1              ),
    .SIMULATE         ( 0              )
) sd_file_reader_i (
    .rstn             ( rstn           ),
    .clk              ( clko2            ),
    .sdclk            ( sdclk          ),
    .sdcmd            ( sdcmd          ),
    .sddat0           ( sddat          ),
    .card_stat        (mled[5:2]         ),
    .card_type        (                ),
    .filesystem_type  (                ),
    .file_found       (mled[1]          ),
    .outen            (mled[0]          ),
    .outbyte          (                )
);

    Gowin_CLKDIV your_instance_name(
        .clkout(clko2), //output clkout
        .hclkin(clko), //input hclkin
        .resetn(s2) //input resetn
    );


always @(posedge clk)
    begin
    if (s1==0)
        rstn=0;
    else
        rstn=1;
    end




endmodule