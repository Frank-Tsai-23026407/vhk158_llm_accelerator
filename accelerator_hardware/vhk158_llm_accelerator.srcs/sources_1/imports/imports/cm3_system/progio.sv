
module progio (
	input  logic        HCLK,    // Clock
  	input  logic        HRESETn, // Reset

  	input  logic        IO_PROG_VALID,
	output logic        IO_PROG_READY,
	input  logic [31:0] IO_PROG_DATA,

	output logic        prog_ivalid,
	input  logic        prog_iready,
	output logic [31:0] prog_idata
);

	logic        prog_fifo_full;
	logic        prog_fifo_empty;
	logic        prog_fifo_write;
	logic [31:0] prog_fifo_wdata;
	logic        prog_fifo_read;
	logic [31:0] prog_fifo_rdata;

	assign IO_PROG_READY = ~prog_fifo_full;
	assign prog_fifo_write = IO_PROG_VALID;
	assign prog_fifo_wdata = IO_PROG_DATA;
	assign prog_ivalid = ~prog_fifo_empty;
	assign prog_fifo_read = prog_iready;
	assign prog_idata = prog_fifo_rdata;

	fifo #(
        .DEPTH(4),
        .WIDTH(32)
    ) u_prog_fifo (
        .i_clk   (HCLK),
        .i_rst_n (HRESETn),
        .o_full  (prog_fifo_full),
        .o_empty (prog_fifo_empty),
        .i_write (prog_fifo_write),
        .i_wdata (prog_fifo_wdata),
        .i_read  (prog_fifo_read),
        .o_rdata (prog_fifo_rdata)
    );

endmodule