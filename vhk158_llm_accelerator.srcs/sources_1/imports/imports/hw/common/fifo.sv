module fifo #(
	parameter DEPTH = 8,
	parameter WIDTH = 8,
	// DEPTH must be exp2
	parameter ADDRW = $clog2(DEPTH) 
)(
	input              i_clk,
	input              i_rst_n,

	output             o_full,
	output             o_empty,
	
	input              i_write,
	input  [WIDTH-1:0] i_wdata,
	
	input              i_read,
	output [WIDTH-1:0] o_rdata
);
	
	reg [WIDTH-1:0] buffer_w [0:DEPTH-1];
	reg [WIDTH-1:0] buffer_r [0:DEPTH-1];
	wire [ADDRW-1:0] rptr, wptr;
	reg [  ADDRW:0] rpos_w, rpos_r;
	reg [  ADDRW:0] wpos_w, wpos_r;
	wire do_read, do_write;
	integer i;

	assign rptr = rpos_r[ADDRW-1:0];
	assign wptr = wpos_r[ADDRW-1:0];
	assign o_empty = (rptr == wptr) && (rpos_r[ADDRW] == wpos_r[ADDRW]);
	assign o_full  = (rptr == wptr) && (rpos_r[ADDRW] != wpos_r[ADDRW]);
	assign o_rdata = buffer_r[rptr];

	assign do_read  = i_read  & !o_empty;
	assign do_write = i_write & !o_full;

	always@(*) begin
		for(i=0; i<DEPTH; i=i+1)
			buffer_w[i] = buffer_r[i];
		
		rpos_w = rpos_r;
		wpos_w = wpos_r;
		if(do_read) begin
			rpos_w = rpos_r + 1;
		end
		if(do_write) begin
			wpos_w = wpos_r + 1;
			buffer_w[wptr] = i_wdata;
		end
	end

	always@(posedge i_clk or negedge i_rst_n) begin
		if(!i_rst_n) begin
			for(i=0; i<DEPTH; i=i+1) begin
				buffer_r[i] <= 0;
			end
			rpos_r <= 0;
			wpos_r <= 0;
		end else begin
			for(i=0; i<DEPTH; i=i+1)
				buffer_r[i] <= buffer_w[i];
			rpos_r <= rpos_w;
			wpos_r <= wpos_w;
		end
	end

endmodule