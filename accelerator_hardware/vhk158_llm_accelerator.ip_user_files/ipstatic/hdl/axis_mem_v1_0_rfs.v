// (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////
/*----------------------------------------------------------------------------

 *Device: All
 *Purpose:
 *  A generic mux with any number of select lines, and one large input that could
 *  be a collection of buses.
 *
 *----------------------------------------------------------------------------*/
`timescale 1 ns / 1 ps
module axis_mem_v1_0_2_generic_mux
  #(
    parameter  C_WIDTH           = 16,
    parameter  C_NUM_BUSES       = 1
  ) 
  (
    input   [(C_NUM_BUSES*C_WIDTH)-1:0]    DIN_I,
    input   [clogb2(C_NUM_BUSES-1)-1:0]    SEL_I,   
    output wire [C_WIDTH-1:0]                 DOUT_O
  );
  
  `include "axis_mem_v1_0_2_lib_fn.vh"
  
  wire    [C_WIDTH-1:0] input_array [0:C_NUM_BUSES-1];
  
  assign  DOUT_O = input_array[SEL_I];
  
  generate
    genvar ig;
      for(ig=0; ig<C_NUM_BUSES; ig=ig+1) 
      begin: array_assignments
          assign  input_array[ig] = DIN_I[((ig+1)*C_WIDTH)-1:(ig*C_WIDTH)];
      end
  endgenerate
  
endmodule                   


// (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////
/*----------------------------------------------------------------------------

 *Device: All
 *Purpose:
 *  A generic memory read interface that breaks down a x-bit wide input read data into 
 *  y-bit output data chunks.  ACK_I pulsed when DIN_I is correct, EN_O, is asserted 
 *  when correct DOUT_O data and NEXT_READ_ADDR_O is outputted.  EN_I is asserted when 
 *  next data should be outputted.
 *
 *----------------------------------------------------------------------------*/
`timescale 1 ns / 1 ps

 module axis_mem_v1_0_2_generic_memrd
#(
  parameter C_INPUT_WIDTH     = 16,
  parameter C_OUTPUT_WIDTH    = 16,
  parameter C_DATA_DEPTH      = 65536,
  parameter C_RD_WRD_CNT_WIDTH = 10,
  parameter C_OUTPUT_ENABLE_LATENCY  = 0,
  parameter C_READ_ENABLE_LATENCY = 0,
  parameter C_LOG2_DATA_DEPTH  = clogb2(C_DATA_DEPTH-1)
) 
(
  input [C_INPUT_WIDTH-1:0]           DIN_I,
  input                               ACK_I,
  input                               EN_I,
  input                               READ_ADDR_RESET_I,
  input [C_LOG2_DATA_DEPTH-1:0]       READ_RESET_ADDR_I,
  input                               CLK_I,
  output wire                         RESET_ACK_O,
  output wire                         READ_ADDR_EN_O,
  output wire [C_LOG2_DATA_DEPTH-1:0] CURR_READ_ADDR_O,
  output wire [C_RD_WRD_CNT_WIDTH-1:0] CURR_READ_WRD_CNT_O,
  output wire                         EN_O,
  output wire [C_OUTPUT_WIDTH-1:0]    DOUT_O
);
  
  `include "axis_mem_v1_0_2_lib_fn.vh"
  
  localparam LC_READ_PER_ADDR = (C_INPUT_WIDTH-1)/C_OUTPUT_WIDTH + 1;
  localparam RESET_ADDR = 7'b0000001, REQUEST_READ = 7'b0000010, WAIT_READ_ACK = 7'b0000100, OUTPUT_DATA = 7'b0001000, IDLE = 7'b0010000, INCREMENT_BLOCK = 7'b0100000, INCREMENT_ADDRESS = 7'b1000000; 
  reg [6:0] current_state;
  reg [6:0] next_state;
  (* DONT_TOUCH = "TRUE" *) reg [clogb2(LC_READ_PER_ADDR-1)-1:0] curr_read_block;
 
  reg [(LC_READ_PER_ADDR)*C_OUTPUT_WIDTH-1:0] input_data;
  reg [C_OUTPUT_ENABLE_LATENCY:0] enable_out = 'b0;
  reg data_out_en;
  reg [C_READ_ENABLE_LATENCY:0] read_enable_out;
  reg read_en;
  reg reset_ack;
  reg [C_LOG2_DATA_DEPTH-1:0]  read_addr;
  reg [C_RD_WRD_CNT_WIDTH-1:0]  read_data_wrd_cnt;
  
  always @(posedge CLK_I)
  begin
    if (READ_ADDR_RESET_I == 1'b1)
    begin
      current_state <= RESET_ADDR;
      reset_ack <= 1'b1;
    end
    else
    begin
      current_state <= next_state;
      reset_ack <= 1'b0;
    end
  end

 assign RESET_ACK_O = reset_ack;
  
  always @ (current_state, ACK_I, EN_I, curr_read_block)
  begin
    case(current_state)

      RESET_ADDR:
      begin
        if (EN_I == 1'b1)
          next_state <= REQUEST_READ;
        else
          next_state <= RESET_ADDR;
      end
    
      REQUEST_READ:
      begin
        next_state <= WAIT_READ_ACK;
      end
    
      WAIT_READ_ACK:
      begin
        if (ACK_I == 1'b1)
          next_state <= OUTPUT_DATA;
        else
          next_state <= WAIT_READ_ACK;
      end
    
      OUTPUT_DATA:
      begin
        next_state <= IDLE;
      end
      
      IDLE:
      begin 
        if (EN_I == 1'b1)
        begin
          if (curr_read_block < LC_READ_PER_ADDR-1)
            next_state <= INCREMENT_BLOCK;
          else
            next_state <= INCREMENT_ADDRESS;
        end  
        else
          next_state <= IDLE;
      end

      INCREMENT_BLOCK:
      begin
        next_state <= OUTPUT_DATA;
      end
      
      INCREMENT_ADDRESS:
      begin
        next_state <= REQUEST_READ;
      end
      
      default:
      begin
        next_state <= RESET_ADDR;
      end
    
    endcase
  end
  
  //set outputs - case on next_state with always @ posedge of CLK_I rather than always @ current_state and case on current_state to workaround XST issue
  always @ (posedge CLK_I)
  begin
    //case (next_state)
    case (current_state)

      RESET_ADDR:
      begin
        read_addr <= READ_RESET_ADDR_I;
        read_data_wrd_cnt <= 'h0;
        curr_read_block <= 1'b0;
        read_en <= 1'b0;
        data_out_en <= 1'b0;
      end
      
      REQUEST_READ:
      begin
        read_addr <= read_addr;
        read_data_wrd_cnt <= read_data_wrd_cnt;
        curr_read_block <= curr_read_block;
        read_en <= 1'b1;
        data_out_en <= 1'b0;
      end
      
      WAIT_READ_ACK:
      begin
        read_addr <= read_addr;
        read_data_wrd_cnt <= read_data_wrd_cnt;
        curr_read_block <= curr_read_block;
        read_en <= 1'b0;
        data_out_en <= 1'b0;
      end

      OUTPUT_DATA:
      begin
        read_addr <= read_addr;
        read_data_wrd_cnt <= read_data_wrd_cnt;
        curr_read_block <= curr_read_block;
        read_en <= 1'b0;
        data_out_en <= 1'b1;
      end
      
      IDLE:
      begin
        read_addr <= read_addr;
        read_data_wrd_cnt <= read_data_wrd_cnt;
        curr_read_block <= curr_read_block;
        read_en <= 1'b0;
        data_out_en <= 1'b0;
      end
      
      INCREMENT_BLOCK:
      begin
        read_addr <= read_addr;
        read_data_wrd_cnt <= read_data_wrd_cnt + 1;
        curr_read_block <= curr_read_block+1;
        read_en <= 1'b0;
        data_out_en <= 1'b0;
      end

      INCREMENT_ADDRESS:
      begin
        read_addr <= read_addr+1;
        read_data_wrd_cnt <= read_data_wrd_cnt + 1;
        curr_read_block <= 0;
        read_en <= 1'b0;
        data_out_en <= 1'b0;
      end      
    endcase
  end

  generate 
    if (C_OUTPUT_ENABLE_LATENCY == 0)
    begin: no_enable_latency
      always @ (data_out_en)
      begin
        enable_out <= data_out_en;
      end
    end
    else if (C_OUTPUT_ENABLE_LATENCY == 1)
    begin: single_enable_latency
      always @ (posedge CLK_I)
      begin
        enable_out <= {data_out_en, 1'b0};
      end
    end
    else
    begin: multiple_enable_latency
      always @(posedge CLK_I)
      begin
        enable_out <= {enable_out[C_OUTPUT_ENABLE_LATENCY-1:1], data_out_en, 1'b0};
      end
    end
  endgenerate
  
  assign EN_O = enable_out[C_OUTPUT_ENABLE_LATENCY];
  
  //
  // Mahesh for DOA/DOB
  //
  reg read_en_temp;
  generate 
    if (C_READ_ENABLE_LATENCY == 0)
    begin: no_read_latency
      always @ (read_en)
      begin
        read_enable_out <= read_en;
      end
    end
    else if (C_OUTPUT_ENABLE_LATENCY == 1)
    begin: single_read_latency
      always @ (posedge CLK_I)
      begin
        read_enable_out <= {read_en, 1'b0};
      end
    end
    else
    begin: multiple_read_latency
      always @(posedge CLK_I)
      begin
        read_enable_out <= {read_enable_out[C_OUTPUT_ENABLE_LATENCY-1:1], read_en, 1'b0};
      end

      always @(posedge CLK_I)
      begin
        read_en_temp <= read_enable_out[C_OUTPUT_ENABLE_LATENCY];
      end
    end
  endgenerate
  
  assign READ_ADDR_EN_O = (read_enable_out[C_OUTPUT_ENABLE_LATENCY] | read_en_temp);
  
  //0 pad data for correct muxing
  initial 
  begin
    input_data <= {LC_READ_PER_ADDR*C_OUTPUT_WIDTH{1'b0}};
    current_state <= RESET_ADDR;
    next_state <= RESET_ADDR;
  end

  always @(posedge CLK_I)
  begin
    //if (ACK_I == 1'b1)
      input_data[C_INPUT_WIDTH-1:0] <= DIN_I;
  end
  
  axis_mem_v1_0_2_generic_mux
  #(
    .C_WIDTH(C_OUTPUT_WIDTH),
    .C_NUM_BUSES(LC_READ_PER_ADDR)
  ) u_data_mux (
    .DIN_I(input_data),
    .SEL_I(curr_read_block),
    .DOUT_O(DOUT_O)
  );  
  
  assign CURR_READ_ADDR_O = read_addr;
  assign CURR_READ_WRD_CNT_O = read_data_wrd_cnt;
  
endmodule
 


// (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module axis_mem_v1_0_2_mem
#(
  parameter                        C_MEMORY_TYPE      = 0,
  parameter                        C_RAM_WIDTH        = 16,
  parameter                        C_RAM_DEPTH        = 65536,
  parameter                        C_DEPTH_ADDR_WIDTH = 8,
  parameter                        BRAM_LATENCY       = 2
)
(
  input                            WRITE_CLK_I,
  input  [C_RAM_WIDTH-1:0]         WRITE_DATA_I,
  input                            EN_WRITE_I,
  input                            WE_WRITE_I,
  input  [C_DEPTH_ADDR_WIDTH-1:0]  ADDR_WRITE_I,
  input                            READ_CLK_I,
  input                            EN_READ_I,
  input  [C_DEPTH_ADDR_WIDTH-1:0]  ADDR_READ_I,
  output                           trigger_tb_o,
  output [C_RAM_WIDTH-2:0]         trigger_sample_o,
  output [C_RAM_WIDTH-1:0]         READ_DATA_O,
  output                           we_4_ext
);

  function integer blk_mem_gen_cnt;
  input integer width;
  input integer blk_max_width;
  integer temp_rm;
  integer temp;
  begin 
    temp_rm = width % blk_max_width;
    if (temp_rm == 0)
    begin
      temp = width / blk_max_width;
    end
    else
    begin
      temp = (width / blk_max_width) + 1;
    end
    blk_mem_gen_cnt = temp;
  end 
  endfunction
 
  reg [C_RAM_WIDTH-1:0] write_data_i;
  (*retiming_forward = 1 *) reg [C_DEPTH_ADDR_WIDTH-1:0] addr_write_i;
  (*retiming_forward = 1 *) reg we_write_i; 
  localparam LC_BLK_MAX_WIDTH = (C_RAM_DEPTH <= 32768) ? 512 : ((C_RAM_DEPTH == 65536) ? 256 : 128);
  localparam LC_BLK_MEM_CNT = blk_mem_gen_cnt(C_RAM_WIDTH, LC_BLK_MAX_WIDTH);

  always @(posedge WRITE_CLK_I)
  begin
    write_data_i <= WRITE_DATA_I;
    we_write_i   <= WE_WRITE_I;
    addr_write_i <= ADDR_WRITE_I;
  end
  assign trigger_tb_o     = write_data_i[C_RAM_WIDTH-1];
  assign trigger_sample_o = write_data_i[C_RAM_WIDTH-2:0];
  assign we_4_ext = we_write_i;
  genvar i;
  generate
   if (C_MEMORY_TYPE == 0)
   begin: BRAM
    if (LC_BLK_MEM_CNT > 1)
    begin: XPM
      for (i=0; i < LC_BLK_MEM_CNT-1; i=i+1) begin : BLKMEM
        xpm_memory_sdpram 
        #(
          .MEMORY_SIZE             (C_RAM_DEPTH*LC_BLK_MAX_WIDTH                        ),
          .MEMORY_PRIMITIVE        ("block"                                             ),
          .CLOCKING_MODE           ("independent_clock"                                      ),
          .MEMORY_INIT_FILE        ("none"                                              ),
          .MEMORY_INIT_PARAM       (""                                                  ),
          .USE_MEM_INIT            (1                                                   ),
          .WAKEUP_TIME             ("disable_sleep"                                     ),
          .MESSAGE_CONTROL         (0                                                   ),
          .ECC_MODE                ("no_ecc"                                            ),
          .AUTO_SLEEP_TIME         (0                                                   ),
          .USE_EMBEDDED_CONSTRAINT (0                                                   ),
          .MEMORY_OPTIMIZATION     ("true"                                              ),
          // Port A module parameters
          .WRITE_DATA_WIDTH_A      (LC_BLK_MAX_WIDTH                                    ),
          .BYTE_WRITE_WIDTH_A      (LC_BLK_MAX_WIDTH                                    ),
          .ADDR_WIDTH_A            (C_DEPTH_ADDR_WIDTH                                  ),
          // Port B module parameters
          .READ_DATA_WIDTH_B       (LC_BLK_MAX_WIDTH                                    ),
          .ADDR_WIDTH_B            (C_DEPTH_ADDR_WIDTH                                  ),
          .READ_RESET_VALUE_B      ("0"                                                 ),
          .READ_LATENCY_B          (BRAM_LATENCY                                        ),
          .WRITE_MODE_B            ("no_change"                                         )
        ) sdpram 
        (
          .sleep                   (1'b0                                                ),
          .clka                    (WRITE_CLK_I                                         ),
          .ena                     (EN_WRITE_I                                          ),
          //.wea                     (WE_WRITE_I                                          ),
          .wea                     (we_write_i                                          ),
          //.addra                   (ADDR_WRITE_I                                        ),
          .addra                   (addr_write_i                                        ),
          //.dina                    (WRITE_DATA_I[LC_BLK_MAX_WIDTH*i +: LC_BLK_MAX_WIDTH]),
          .dina                    (write_data_i[LC_BLK_MAX_WIDTH*i +: LC_BLK_MAX_WIDTH]),
          .injectsbiterra          (1'b0                                                ),
          .injectdbiterra          (1'b0                                                ),
          // Port B module ports
          .clkb                    (READ_CLK_I                                          ),
          .rstb                    (1'b0                                                ),
          .enb                     (EN_READ_I                                           ),
          .regceb                  (1'b1                                                ),
          .addrb                   (ADDR_READ_I                                         ),
          .doutb                   (READ_DATA_O[LC_BLK_MAX_WIDTH*i +: LC_BLK_MAX_WIDTH] ),
          .sbiterrb                (                                                    ),
          .dbiterrb                (                                                    )
        );
      end
      xpm_memory_sdpram 
      #(
        .MEMORY_SIZE             (C_RAM_DEPTH*(C_RAM_WIDTH - (LC_BLK_MAX_WIDTH * (LC_BLK_MEM_CNT - 1)))),
        .MEMORY_PRIMITIVE        ("block"                                             ),
        .CLOCKING_MODE           ("independent_clock"                                      ),
        .MEMORY_INIT_FILE        ("none"                                              ),
        .MEMORY_INIT_PARAM       (""                                                  ),
        .USE_MEM_INIT            (1                                                   ),
        .WAKEUP_TIME             ("disable_sleep"                                     ),
        .MESSAGE_CONTROL         (0                                                   ),
        .ECC_MODE                ("no_ecc"                                            ),
        .AUTO_SLEEP_TIME         (0                                                   ),
        .USE_EMBEDDED_CONSTRAINT (0                                                   ),
        .MEMORY_OPTIMIZATION     ("true"                                              ),
        // Port A module parameters
        .WRITE_DATA_WIDTH_A      (C_RAM_WIDTH - (LC_BLK_MAX_WIDTH * (LC_BLK_MEM_CNT - 1))),
        .BYTE_WRITE_WIDTH_A      (C_RAM_WIDTH - (LC_BLK_MAX_WIDTH * (LC_BLK_MEM_CNT - 1))),
        .ADDR_WIDTH_A            (C_DEPTH_ADDR_WIDTH                                  ),
        // Port B module parameters
        .READ_DATA_WIDTH_B       (C_RAM_WIDTH - (LC_BLK_MAX_WIDTH * (LC_BLK_MEM_CNT - 1))),
        .ADDR_WIDTH_B            (C_DEPTH_ADDR_WIDTH                                  ),
        .READ_RESET_VALUE_B      ("0"                                                 ),
        .READ_LATENCY_B          (BRAM_LATENCY                                        ),
        .WRITE_MODE_B            ("no_change"                                         )
      ) sdpram 
      (
        .sleep                   (1'b0                                                ),
        .clka                    (WRITE_CLK_I                                         ),
        .ena                     (EN_WRITE_I                                          ),
        //.wea                     (WE_WRITE_I                                          ),
        .wea                     (we_write_i                                          ),
        //.addra                   (ADDR_WRITE_I                                        ),
        .addra                   (addr_write_i                                        ),
        //.dina                    (WRITE_DATA_I[C_RAM_WIDTH - 1 : (LC_BLK_MAX_WIDTH * (LC_BLK_MEM_CNT - 1))]),
        .dina                    (write_data_i[C_RAM_WIDTH - 1 : (LC_BLK_MAX_WIDTH * (LC_BLK_MEM_CNT - 1))]),
        .injectsbiterra          (1'b0                                                ),
        .injectdbiterra          (1'b0                                                ),
        // Port B module ports
        .clkb                    (READ_CLK_I                                          ),
        .rstb                    (1'b0                                                ),
        .enb                     (EN_READ_I                                           ),
        .regceb                  (1'b1                                                ),
        .addrb                   (ADDR_READ_I                                         ),
        .doutb                   (READ_DATA_O[C_RAM_WIDTH - 1 : (LC_BLK_MAX_WIDTH * (LC_BLK_MEM_CNT - 1))] ),
        .sbiterrb                (                                                    ),
        .dbiterrb                (                                                    )
      );
    end
    else if (LC_BLK_MEM_CNT == 1)
    begin : XPM_1
      
      xpm_memory_sdpram 
      #(
        .MEMORY_SIZE             (C_RAM_DEPTH*C_RAM_WIDTH                             ),
        .MEMORY_PRIMITIVE        ("block"                                             ),
        .CLOCKING_MODE           ("independent_clock"                                 ),
        .MEMORY_INIT_FILE        ("none"                                              ),
        .MEMORY_INIT_PARAM       (""                                                  ),
        .USE_MEM_INIT            (1                                                   ),
        .WAKEUP_TIME             ("disable_sleep"                                     ),
        .MESSAGE_CONTROL         (0                                                   ),
        .ECC_MODE                ("no_ecc"                                            ),
        .AUTO_SLEEP_TIME         (0                                                   ),
        .USE_EMBEDDED_CONSTRAINT (0                                                   ),
        .MEMORY_OPTIMIZATION     ("true"                                              ),
        // Port A module parameters
        .WRITE_DATA_WIDTH_A      (C_RAM_WIDTH                                         ),
        .BYTE_WRITE_WIDTH_A      (C_RAM_WIDTH                                         ),
        .ADDR_WIDTH_A            (C_DEPTH_ADDR_WIDTH                                  ),
        // Port B module parameters
        .READ_DATA_WIDTH_B       (C_RAM_WIDTH                                         ),
        .ADDR_WIDTH_B            (C_DEPTH_ADDR_WIDTH                                  ),
        .READ_RESET_VALUE_B      ("0"                                                 ),
        .READ_LATENCY_B          (BRAM_LATENCY                                        ),
        .WRITE_MODE_B            ("no_change"                                         )
      ) sdpram 
      (
        .sleep                   (1'b0                                                ),
        .clka                    (WRITE_CLK_I                                         ),
        .ena                     (EN_WRITE_I                                          ),
        //.wea                     (WE_WRITE_I                                          ),
        .wea                     (we_write_i                                          ),
        //.addra                   (ADDR_WRITE_I                                        ),
        .addra                   (addr_write_i                                        ),
        //.dina                    (WRITE_DATA_I                                        ),
        .dina                    (write_data_i                                        ),
        .injectsbiterra          (1'b0                                                ),
        .injectdbiterra          (1'b0                                                ),
        // Port B module ports
        .clkb                    (READ_CLK_I                                          ),
        .rstb                    (1'b0                                                ),
        .enb                     (EN_READ_I                                           ),
        .regceb                  (1'b1                                                ),
        .addrb                   (ADDR_READ_I                                         ),
        .doutb                   (READ_DATA_O                                         ),
        .sbiterrb                (                                                    ),
        .dbiterrb                (                                                    )
      );
    end
   end
  else if (C_MEMORY_TYPE == 1)
    begin : URAM
      
      xpm_memory_sdpram 
      #(
        .MEMORY_SIZE             (C_RAM_DEPTH*C_RAM_WIDTH                             ),
        .MEMORY_PRIMITIVE        ("ultra"                                             ),
        .CLOCKING_MODE           ("common_clock"                                      ),
        .MEMORY_INIT_FILE        ("none"                                              ),
        .MEMORY_INIT_PARAM       (""                                                  ),
        .USE_MEM_INIT            (1                                                   ),
        .WAKEUP_TIME             ("disable_sleep"                                     ),
        .MESSAGE_CONTROL         (0                                                   ),
        .ECC_MODE                ("no_ecc"                                            ),
        .AUTO_SLEEP_TIME         (0                                                   ),
        .USE_EMBEDDED_CONSTRAINT (0                                                   ),
        .MEMORY_OPTIMIZATION     ("true"                                              ),
        // Port A module parameters
        .WRITE_DATA_WIDTH_A      (C_RAM_WIDTH                                         ),
        .BYTE_WRITE_WIDTH_A      (C_RAM_WIDTH                                         ),
        .ADDR_WIDTH_A            (C_DEPTH_ADDR_WIDTH                                  ),
        // Port B module parameters
        .READ_DATA_WIDTH_B       (C_RAM_WIDTH                                         ),
        .ADDR_WIDTH_B            (C_DEPTH_ADDR_WIDTH                                  ),
        .READ_RESET_VALUE_B      ("0"                                                 ),
        .READ_LATENCY_B          (3                                                   ),
        .WRITE_MODE_B            ("write_first"                                         )
      ) sdpram 
      (
        .sleep                   (1'b0                                                ),
        .clka                    (WRITE_CLK_I                                         ),
        .ena                     (EN_WRITE_I                                          ),
        //.wea                     (WE_WRITE_I                                          ),
        .wea                     (we_write_i                                          ),
        //.addra                   (ADDR_WRITE_I                                        ),
        .addra                   (addr_write_i                                        ),
        //.dina                    (WRITE_DATA_I                                        ),
        .dina                    (write_data_i                                        ),
        .injectsbiterra          (1'b0                                                ),
        .injectdbiterra          (1'b0                                                ),
        // Port B module ports
        .clkb                    (READ_CLK_I                                          ),
        .rstb                    (1'b0                                                ),
        .enb                     (EN_READ_I                                           ),
        .regceb                  (1'b1                                                ),
        .addrb                   (ADDR_READ_I                                         ),
        .doutb                   (READ_DATA_O                                         ),
        .sbiterrb                (                                                    ),
        .dbiterrb                (                                                    )
      );
    end

  endgenerate
endmodule



// (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////

`timescale 1 ns / 1 ps
(* DONT_TOUCH = "TRUE" *)
    module axis_mem_v1_0_2_axis_mem
    #(
      parameter integer C_MEMORY_TYPE          = 0,
      parameter integer C_RAM_WIDTH            = 32,
      // Include file for probe widths
      `include "axis_mem_v1_0_2_probe_width.vh"
      parameter integer C_RAM_DEPTH            = 1024,
      parameter integer C_EN_STRG_QUAL         = 0,
      parameter integer C_EN_ADV_TRIG          = 1,
      parameter integer C_DEPTH_ADDR_WIDTH     = 10,
      parameter integer C_RD_WRD_CNT_WIDTH     = 10,
      parameter integer C_NUM_PROBES           = 1,
      parameter integer C_AXIS_DATA_WIDTH      = 32,
      parameter [(C_NUM_PROBES*2)-1:0] C_DATA_TRIGGER = 2'b0
     )
     (
      input                                   M_AXIS_ACLK,
      // Include file for probe ports
      `include "axis_mem_v1_0_2_probe_ports.vh"
      input                                   read_data_en_i,
      input                                   TRIGGER_I,
      input [1:0]                             capture_mode_i,
      input                                   en_adv_trigger_i,
      input                                   clk,
      input                                   tr_clk,
      input                                   arm,
      input                                   WE_WRITE_I,
      input  [C_DEPTH_ADDR_WIDTH-1:0]         ADDR_WRITE_I,
      input  [C_DEPTH_ADDR_WIDTH-1:0]         read_reset_addr_i,
      input                                   read_addr_reset_i,
      output                                  reset_out_ack_o,
      output                                  data_out_en_o,
      output [C_AXIS_DATA_WIDTH-1:0]          data_word_out_o,
      output [C_DEPTH_ADDR_WIDTH-1:0]         trace_rd_addr_o,
      output [C_RD_WRD_CNT_WIDTH-1:0]         trace_rd_wrd_cnt_o,
      input                                   m_axis_tready,
      output                                  m_axis_tvalid,
      output                                  m_axis_tlast,
      output [511:0]                          m_axis_tdata,
      output [C_RAM_WIDTH-1:0]                trigger_sample_o,
      output                                  trigger_tb_o, 
      input                                   en_deep_storage,
      output [64-1:0]                         gap_count_o,
      output                                  last_flag_o,
      input  [10-1:0]                         max_depth_ext_strg_i
     );

    function integer clogb2 (input integer bit_depth);
        begin
            for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
                bit_depth = bit_depth >> 1;
        end
    endfunction
    
    localparam    C_CLOCKING_FACTOR   = (C_RAM_WIDTH)/512 ;
    localparam    C_DELAY_FACTOR      = (2*C_CLOCKING_FACTOR) ;
    localparam    C_CDC_DELAY         = C_CLOCKING_FACTOR ? (C_CLOCKING_FACTOR +1'b1): 2; 
    localparam    C_DELAY_FLOPS       = (C_CDC_DELAY > 2) ? (C_CDC_DELAY - 2) : 0;  //Adding extra flops when DELAY required from XPM CDC is greater than 2
    localparam    C_CDC_DELAY_FLOPS   = (C_CDC_DELAY > 2) ? 2 : C_CDC_DELAY;
    localparam    C_DELAY_COUNT_VALUE = C_CDC_DELAY - 1 ;  //Running delay counter for adding extra delay in tr_clk domain to align the signal w.r.t. clk domain
    localparam    C_ASSIGN_VALUE      = (C_DELAY_FLOPS > 0) ? (C_DELAY_FLOPS-1) : 0; //assigning value to delay registers 

    wire [10-1:0]                             max_depth_ext_strg_i_reg;
    wire [C_RAM_WIDTH-1:0]                    trigger_sample_o_reg;
    reg  [C_RAM_WIDTH-1:0]                    trigger_sample_o_reg_intf;  // now holding the trigger value here only in mem module rather than intf to as single clock tigger pulse is going through cdc register.
    wire                                      last_flag_o_reg;
    wire                                      trigger_tb_o_reg;
    reg                                       trigger_tb_o_reg_intf;
    wire                                      last_data_flag;
    wire [64-1:0]                             gap_count_o_reg;
    wire                                      arm_posedge;
    wire                                      arm_posedge_hub;
    reg                                       arm_delay;
    wire [C_RAM_WIDTH-1:0]                    mem_data_i;
    reg  [C_RAM_WIDTH-1:0]                    mem_data_shift0;
    reg  [C_RAM_WIDTH-1:0]                    mem_data_shift1;
    reg                                       trig_delay0 = 1'b0;
    wire [C_RAM_WIDTH:0]                      trace_rd_data_i;
    wire [C_RAM_WIDTH:0]                      trace_rd_data_i_reg;
    wire                                      trace_read_en;
    wire [C_DEPTH_ADDR_WIDTH-1:0]             trace_rd_addr;
    wire [C_RD_WRD_CNT_WIDTH-1:0]             trace_rd_wrd_cnt;

    wire                                      READ_CLK;
    wire                                      clk_x;
    wire                                      read_data_en;
    wire                                      WE_WRITE_I_d;
    reg                                       WE_WRITE_I_d1;
    wire                                      read_addr_reset;
    wire                                      data_out_en;
    wire  [C_DEPTH_ADDR_WIDTH-1:0]            ADDR_WRITE_I_d;
    reg   [C_DEPTH_ADDR_WIDTH-1:0]            ADDR_WRITE_I_d1;
    reg   [clogb2(C_CDC_DELAY)-1:0]           counter_delay;
    wire                                      arm_d; 
    wire                                      en_deep_storage_d; 

    wire                                      reset_out_ack;

    wire  [9:0]                               ext_strg_addr;
    wire                                      ext_strg_read_en;
    wire                                      we_4_ext;
    wire                                      we_4_ext_cdc;
    reg                                       we_4_ext_cdc1;
    
    (* DONT_TOUCH = "TRUE" *)reg [1:0]                                   trace_data_ack;

    `include "axis_mem_v1_0_2_mu_inst.vh"
generate 
  if (C_EN_STRG_QUAL == 1 || C_EN_ADV_TRIG == 1) begin :SQC_EN
     always @(posedge clk)
     begin
       mem_data_shift0 <= mem_data_i;
       trig_delay0 <= TRIGGER_I;
     end
  end

  if (C_EN_STRG_QUAL == 1 && C_EN_ADV_TRIG == 1)
  begin :SQC_ADV_TRIG
     always @(posedge clk)
     begin
       mem_data_shift1 <= mem_data_shift0;
     end
  end

endgenerate

generate 
  if (C_MEMORY_TYPE == 2 && C_RAM_WIDTH > 511)
  begin :trace_clock
    assign clk_x = tr_clk; 
  end
  else
  begin :probe_clock
    assign clk_x = clk;
  end
endgenerate

generate
      case (C_MEMORY_TYPE)
         0: begin: BRAM
                  assign READ_CLK = M_AXIS_ACLK;
                  assign read_data_en    = read_data_en_i;
                  assign read_addr_reset = read_addr_reset_i;
                  assign data_out_en_o   = data_out_en;
                  assign reset_out_ack_o = reset_out_ack;
                  end
         1: begin: URAM
                  assign READ_CLK = clk;

                   xpm_cdc_pulse #(
                      .DEST_SYNC_FF(4), 
                      .INIT_SYNC_FF(1), 
                      .REG_OUTPUT(0),   
                      .RST_USED(1),     
                      .SIM_ASSERT_CHK(1)
                   )
                   xpm_cdc_pulse_inst0 (
                      .dest_pulse(read_data_en),                 
                      .dest_clk(clk),            
                      .dest_rst(1'b0),       
                      .src_clk(M_AXIS_ACLK),     
                      .src_pulse(read_data_en_i),             
                      .src_rst(1'b0)          
                   );

                   xpm_cdc_pulse #(
                      .DEST_SYNC_FF(4),   
                      .INIT_SYNC_FF(1), 
                      .REG_OUTPUT(0),   
                      .RST_USED(1),     
                      .SIM_ASSERT_CHK(1)
                   )
                   xpm_cdc_pulse_inst1 (
                      .dest_pulse(read_addr_reset),                                                             
                      .dest_clk(clk),     
                      .dest_rst(1'b0),     
                      .src_clk(M_AXIS_ACLK),       
                      .src_pulse(read_addr_reset_i),                                                            
                      .src_rst(1'b0)        
                   );
 
                   xpm_cdc_pulse #(
                      .DEST_SYNC_FF(4),   
                      .INIT_SYNC_FF(1), 
                      .REG_OUTPUT(0),   
                      .RST_USED(1),     
                      .SIM_ASSERT_CHK(1)
                   )
                   xpm_cdc_pulse_inst2 (
                      .dest_pulse(reset_out_ack_o),                                                             
                      .dest_clk(M_AXIS_ACLK),     
                      .dest_rst(1'b0),     
                      .src_clk(clk),       
                      .src_pulse(reset_out_ack),                                                            
                      .src_rst(1'b0)        
                   );

                   xpm_cdc_pulse #(
                      .DEST_SYNC_FF(4),   
                      .INIT_SYNC_FF(1),   
                      .REG_OUTPUT(0),     
                      .RST_USED(1),       
                      .SIM_ASSERT_CHK(1)  
                   )
                   xpm_cdc_pulse_inst3 (
                      .dest_pulse(data_out_en_o),                 
                      .dest_clk(M_AXIS_ACLK),     
                      .dest_rst(1'b0),      
                      .src_clk(clk),       
                      .src_pulse(data_out_en),    
                      .src_rst(1'b0)         
                   );
                  end
          2: begin: EXTERNAL
                  assign READ_CLK = clk_x;

                   xpm_cdc_pulse #(
                      .DEST_SYNC_FF(4), 
                      .INIT_SYNC_FF(1), 
                      .REG_OUTPUT(0),   
                      .RST_USED(1),     
                      .SIM_ASSERT_CHK(1)
                   )
                   xpm_cdc_pulse_inst0 (
                      .dest_pulse(read_data_en),                 
                      .dest_clk(READ_CLK),            
                      .dest_rst(1'b0),       
                      .src_clk(M_AXIS_ACLK),     
                      .src_pulse(read_data_en_i),             
                      .src_rst(1'b0)          
                   );

                   xpm_cdc_pulse #(
                      .DEST_SYNC_FF(4),   
                      .INIT_SYNC_FF(1), 
                      .REG_OUTPUT(0),   
                      .RST_USED(1),     
                      .SIM_ASSERT_CHK(1)
                   )
                   xpm_cdc_pulse_inst1 (
                      .dest_pulse(read_addr_reset),                                                             
                      .dest_clk(READ_CLK),     
                      .dest_rst(1'b0),     
                      .src_clk(M_AXIS_ACLK),       
                      .src_pulse(read_addr_reset_i),                                                            
                      .src_rst(1'b0)        
                   );
 
                   xpm_cdc_pulse #(
                      .DEST_SYNC_FF(4),   
                      .INIT_SYNC_FF(1), 
                      .REG_OUTPUT(0),   
                      .RST_USED(1),     
                      .SIM_ASSERT_CHK(1)
                   )
                   xpm_cdc_pulse_inst2 (
                      .dest_pulse(reset_out_ack_o),                                                             
                      .dest_clk(M_AXIS_ACLK),     
                      .dest_rst(1'b0),     
                      .src_clk(READ_CLK),       
                      .src_pulse(reset_out_ack),                                                            
                      .src_rst(1'b0)        
                   );

                   xpm_cdc_pulse #(
                      .DEST_SYNC_FF(4),   
                      .INIT_SYNC_FF(1),   
                      .REG_OUTPUT(0),     
                      .RST_USED(1),       
                      .SIM_ASSERT_CHK(1)  
                   )
                   xpm_cdc_pulse_inst3 (
                      .dest_pulse(data_out_en_o),                 
                      .dest_clk(M_AXIS_ACLK),     
                      .dest_rst(1'b0),      
                      .src_clk(READ_CLK),       
                      .src_pulse(data_out_en),    
                      .src_rst(1'b0)         
                   );
                  end

         default: begin 
                  assign READ_CLK = M_AXIS_ACLK;
                  assign read_data_en    = read_data_en_i;
                  assign read_addr_reset = read_addr_reset_i;
                  assign data_out_en_o   = data_out_en;
                  assign reset_out_ack_o = reset_out_ack;
                  end
      endcase
endgenerate
    wire ram_read_en;
    wire  we_4_ext_reg;
    reg   we_4_ext_reg_r;
    reg tmp;
    reg wr_flag;  // Used for rd_en during backpressure scenario 
    reg wr_flag_r;
    reg wr_flag_f;
    wire wr_flag_ack;
    reg wr_flag_ack_r;
    reg [9:0] last_wr_addr;
    axis_mem_v1_0_2_mem
    #(
      .C_MEMORY_TYPE          ((C_MEMORY_TYPE > 1) ? 0 : C_MEMORY_TYPE),
      .C_RAM_WIDTH            (C_RAM_WIDTH+1             ),
      .C_RAM_DEPTH            ((C_MEMORY_TYPE > 1) ? 1024 : C_RAM_DEPTH),
      .C_DEPTH_ADDR_WIDTH     ((C_MEMORY_TYPE > 1) ? 10 : C_DEPTH_ADDR_WIDTH),
      .BRAM_LATENCY           ((C_MEMORY_TYPE > 1) ? 1 : 2) 
    ) u_trace_mem
    (
      .WRITE_CLK_I            (clk                       ),
      .WRITE_DATA_I           ((en_adv_trigger_i == 1'b1) ? {TRIGGER_I,mem_data_shift0} : {TRIGGER_I,mem_data_i}),
      .EN_WRITE_I             (arm                       ),
      .WE_WRITE_I             (WE_WRITE_I                ),
      .ADDR_WRITE_I           (ADDR_WRITE_I              ),
      .READ_CLK_I             (READ_CLK                  ),
      .EN_READ_I              (ram_read_en               ),
      .ADDR_READ_I            ((en_deep_storage_d == 1'b0) ? trace_rd_addr : ext_strg_addr),
      .READ_DATA_O            (trace_rd_data_i           ),
      .trigger_tb_o           (trigger_tb_o_reg          ),
      .trigger_sample_o       (trigger_sample_o_reg      ),
      .we_4_ext               (we_4_ext                  )
    );
     
    assign ram_read_en = (en_deep_storage_d == 1'b0) ? trace_read_en : ext_strg_read_en;
    
 generate
 if(C_CLOCKING_FACTOR)
 begin :Cumulative_probe_width_2
    genvar i;
   wire [C_DELAY_FACTOR : 0] connect_wire;  // delaying we_4_ext based on clocking factor 
   assign we_4_ext_reg = connect_wire[C_DELAY_FACTOR];
   assign connect_wire[0] = we_4_ext_cdc1;  
   for (i=1; i <= C_DELAY_FACTOR ; i=i+1) 
   begin :we_4_ext_delay_generation
      dfff DF1(READ_CLK,
        connect_wire[i-1], connect_wire[i]);
   end
     
   
  
   reg   [clogb2(C_CDC_DELAY)-1:0] counter_delay_2;  //Using counter logic for delaying the signal intead of flops and making it aligned to clk and also making delay dependent on tready signal for CR:1155156
   
   always @(posedge READ_CLK)
   begin
     if (!arm_d)
     begin
      wr_flag_f <= 1'b0;
      counter_delay_2 <= 'b0;
      
     end
     else if (wr_flag)
     begin
       wr_flag_f <= wr_flag;
       counter_delay_2 <= 'b0;
     end
     else if (counter_delay_2 == C_CLOCKING_FACTOR)
     begin
       wr_flag_f <= 1'b0;
       counter_delay_2 <= 'b0;
     end
     else if (~wr_flag & wr_flag_f & m_axis_tready)
     begin 
       wr_flag_f <= 1'b1;
       counter_delay_2 <= counter_delay_2 + 1'b1;
     end
     else if (~wr_flag & wr_flag_f & ~m_axis_tready)
     begin
       wr_flag_f <= wr_flag_f;
       counter_delay_2 <= counter_delay_2;
     end
     else
     begin
       wr_flag_f <= 1'b0;
       counter_delay_2 <= 'b0;
     end   
   end


  /*  wire [C_CLOCKING_FACTOR + 1 : 0] connect_wire_1;  // delaying wr_flag_f based on clocking factor  for bacpressure scenario 
   assign wr_flag_f = connect_wire_1[C_CLOCKING_FACTOR +1];
   assign connect_wire_1[0] = wr_flag;  
   for (i=1; i <= C_CLOCKING_FACTOR +1 ; i=i+1) 
   begin :wr_flag_delay
      dfff DF2(READ_CLK,
        connect_wire_1[i-1], connect_wire_1[i]);
   end
  */

   reg   [clogb2(C_CDC_DELAY)-1:0] counter_delay_3;  //Using counter logic for delaying the signal intead of flops and making it aligned to clk and also making delay dependent on tready signal for CR:1155156
 
   
   always @(posedge READ_CLK)
   begin
     if (!arm_d)
     begin
      wr_flag_ack_r <= 1'b0;
      counter_delay_3 <= 'b0;
      
     end
     else if (wr_flag)
     begin
       wr_flag_ack_r <= wr_flag;
       counter_delay_3 <= 'b0;
     end
     else if (counter_delay_3 == C_CLOCKING_FACTOR - 1)
     begin
       wr_flag_ack_r <= 1'b0;
       counter_delay_3 <= 'b0;
     end
     else if (~wr_flag & wr_flag_ack_r & m_axis_tready)
     begin 
       wr_flag_ack_r <= 1'b1;
       counter_delay_3 <= counter_delay_3 + 1'b1;
     end
     else if (~wr_flag & wr_flag_ack_r & ~m_axis_tready)
     begin
       wr_flag_ack_r <= wr_flag_ack_r;
       counter_delay_3 <= counter_delay_3;
     end
     else
     begin
       wr_flag_ack_r <= 1'b0;
       counter_delay_3 <= 'b0;
     end   
   end
   assign wr_flag_ack = wr_flag_ack_r;

   /* wire [C_CLOCKING_FACTOR : 0] connect_wire_2;  // delaying wr_flag_ack based on clocking factor for adjusting tlast and tvalid 
   assign wr_flag_ack = connect_wire_2[C_CLOCKING_FACTOR ];
   assign connect_wire_2[0] = wr_flag;  
   for (i=1; i <= C_CLOCKING_FACTOR ; i=i+1) 
   begin :wr_flag_ack_delay
      dfff DF3(READ_CLK,
        connect_wire_2[i-1], connect_wire_2[i]);
   end
*/

 end
 else
 begin :Less_than_512_2
    assign we_4_ext_reg = we_4_ext_reg_r; 
    assign wr_flag_ack = wr_flag;
    always @(posedge READ_CLK)
     begin
       we_4_ext_reg_r    <= we_4_ext_cdc1;
       wr_flag_f         <= wr_flag;
     end
  end
endgenerate

// Logic for running delay counter for adding extra delay to the signal present in tr_clk domain after CDC registers and aligning those signal w.r.t. clk domain
generate
 if(C_DELAY_FLOPS)
 begin :delay
   always @(posedge READ_CLK)
   begin
     if (arm_d)
     begin
       if (counter_delay < C_DELAY_COUNT_VALUE )
       begin
         counter_delay <= counter_delay + 1'b1;
       end
       else 
       begin
         counter_delay <= 'b0;
       end
     end
     else
     begin
       counter_delay <= 'b0;
     end
     if (arm_d == 1'b0)
     begin
       WE_WRITE_I_d1   <= 'b0 ;
       ADDR_WRITE_I_d1 <= 'b0 ;
       we_4_ext_cdc1   <= 'b0 ;
     end
     else if (counter_delay == C_ASSIGN_VALUE)
     begin
       WE_WRITE_I_d1   <= WE_WRITE_I_d ;
       ADDR_WRITE_I_d1 <= ADDR_WRITE_I_d ;
       we_4_ext_cdc1   <= we_4_ext_cdc ;
     end
     else 
     begin
       WE_WRITE_I_d1   <= WE_WRITE_I_d1 ;
       ADDR_WRITE_I_d1 <= ADDR_WRITE_I_d1 ;
       we_4_ext_cdc1   <= we_4_ext_cdc1 ;
     end
   end
 end
 else
 begin :no_delay
  always @(WE_WRITE_I_d or ADDR_WRITE_I_d or we_4_ext_cdc)
  begin 
     WE_WRITE_I_d1   <= WE_WRITE_I_d ;
     ADDR_WRITE_I_d1 <= ADDR_WRITE_I_d ;
     we_4_ext_cdc1   <= we_4_ext_cdc ;
  end
 end


endgenerate



//Logic for handling rd_en signal during backpressure scenario 
    generate
     if (C_MEMORY_TYPE > 1)
     begin: EXT_BACKPRESSURE
       always @(posedge READ_CLK)
       begin
       if(arm_posedge)
       begin
         last_wr_addr <= 10'b0;
       end
       else if (WE_WRITE_I_d1)
       begin
         last_wr_addr <= ADDR_WRITE_I_d1;
       end
       else
       begin
         last_wr_addr <= last_wr_addr;
       end	       
       if (arm_posedge)
       begin
         tmp     <= 1'b0;
         wr_flag <= 1'b0;
       end
       else if (we_4_ext_cdc1 & ~WE_WRITE_I_d1 & en_deep_storage_d)
       begin
         tmp     <= 1'b1;
         wr_flag <= 1'b1;
       end 
       else if (tmp && m_axis_tready && (ext_strg_addr == last_wr_addr ) && ext_strg_read_en )  // comparing by 1 less last write addr and also scanning wready condition
       begin
         wr_flag <= 1'b0;
         tmp     <= 1'b0; 
       end	       
       else if (tmp)
       begin
        wr_flag <= 1'b1;
        tmp     <= 1'b1;
       end	      
       else
       begin
         tmp     <= tmp;
         wr_flag <= wr_flag;
       end  
       end 
     end
   endgenerate



   reg tmp_tvalid;   //register for making tvalid initially high 
   generate
     if (C_MEMORY_TYPE > 1)
     begin: EXT
       always @(posedge READ_CLK)
       begin
         if (arm_posedge)
         begin
           trace_data_ack[0] <= 1'b0;
           trace_data_ack[1] <= 1'b0;
         end
         else if (en_deep_storage_d == 1'b0)        //for internal mode during runtime
         begin
           trace_data_ack[0] <= trace_read_en;
           trace_data_ack[1] <= trace_data_ack[0];
         end
         else if(en_deep_storage_d && tmp_tvalid )   //making tvalid high initially 
         begin
           trace_data_ack[0] <= (we_4_ext_reg | wr_flag_ack);
           trace_data_ack[1] <= trace_data_ack[0];
         end

         else if(en_deep_storage_d && m_axis_tready && ~tmp_tvalid)  //making tlast value dependent on tready
         begin
           trace_data_ack[0] <= (we_4_ext_reg | wr_flag_ack);
           trace_data_ack[1] <= trace_data_ack[0];
         end
         else
         begin
           trace_data_ack[0] <= trace_data_ack[0];
           trace_data_ack[1] <= trace_data_ack[1];
         end
         if (arm_posedge)
         begin
           tmp_tvalid  <= 1'b1;
         end
         else if(trace_data_ack[1] )
         begin
           tmp_tvalid  <= 1'b0;
         end
         else
         begin
           tmp_tvalid  <= tmp_tvalid;
         end
       end 
     end
     else
     begin: INT
       always @(posedge READ_CLK)
       begin
         if (en_deep_storage_d == 1'b0)
         begin
           trace_data_ack[0] <= trace_read_en;
           trace_data_ack[1] <= trace_data_ack[0];
         end
       end
     end
   endgenerate


      
    axis_mem_v1_0_2_generic_memrd
    #(
      .C_INPUT_WIDTH          (C_RAM_WIDTH+1             ),
      .C_OUTPUT_WIDTH         (C_AXIS_DATA_WIDTH         ),
      .C_DATA_DEPTH           (C_RAM_DEPTH               ),
      .C_RD_WRD_CNT_WIDTH     (C_RD_WRD_CNT_WIDTH        ),
      .C_OUTPUT_ENABLE_LATENCY(3                         ),
      .C_READ_ENABLE_LATENCY  (3                         )
    ) u_generic_memrd
    ( 
      .DIN_I                  (trace_rd_data_i           ),
      .ACK_I                  (trace_data_ack[1]         ),
      .EN_I                   (read_data_en              ),
      .READ_ADDR_RESET_I      (read_addr_reset           ),
      .READ_RESET_ADDR_I      (read_reset_addr_i         ),
      .CLK_I                  (READ_CLK                  ), 
      .RESET_ACK_O            (reset_out_ack             ),
      .READ_ADDR_EN_O         (trace_read_en             ),
      .CURR_READ_ADDR_O       (trace_rd_addr             ),
      .CURR_READ_WRD_CNT_O    (trace_rd_wrd_cnt          ),
      .EN_O                   (data_out_en               ),
      .DOUT_O                 (data_word_out_o           )
    );
    
  
   
    assign trace_rd_addr_o = trace_rd_addr;
    assign trace_rd_wrd_cnt_o = trace_rd_wrd_cnt;
    
     xpm_cdc_single #(
      .DEST_SYNC_FF(2),   
      .INIT_SYNC_FF(0),   
      .SIM_ASSERT_CHK(0), 
      .SRC_INPUT_REG(0)   
      )  
      xpm_cdc_en_deep_strg_o (
      .dest_out(en_deep_storage_d), 
      .dest_clk(READ_CLK), 
      .src_clk(M_AXIS_ACLK),   
      .src_in(en_deep_storage)      
      );
    

    generate
      if (C_MEMORY_TYPE == 2)
      begin :External_offload_ports
         
     xpm_cdc_array_single #(
      .DEST_SYNC_FF(4),   
      .INIT_SYNC_FF(0),   
      .SIM_ASSERT_CHK(0), 
      .SRC_INPUT_REG(1),  
      .WIDTH(10)        
      )
     xpm_cdc_max_depth_ext_strg_i (
      .dest_out(max_depth_ext_strg_i_reg), 
      .dest_clk(READ_CLK), 
      .src_clk(M_AXIS_ACLK),  
      .src_in(max_depth_ext_strg_i)
      );

     xpm_cdc_array_single #(
      .DEST_SYNC_FF(C_CDC_DELAY_FLOPS),   
      .INIT_SYNC_FF(0),   
      .SIM_ASSERT_CHK(0), 
      .SRC_INPUT_REG(0),  
      .WIDTH(C_DEPTH_ADDR_WIDTH)        
      )
     xpm_cdc_addr_write (
      .dest_out(ADDR_WRITE_I_d), 
      .dest_clk(READ_CLK), 
      .src_clk(M_AXIS_ACLK),  
      .src_in(ADDR_WRITE_I)
      );
  
      xpm_cdc_single #(
      .DEST_SYNC_FF(2),   
      .INIT_SYNC_FF(0),   
      .SIM_ASSERT_CHK(0), 
      .SRC_INPUT_REG(0)   
      )  
      xpm_cdc_arm_o (
      .dest_out(arm_d), 
      .dest_clk(READ_CLK), 
      .src_clk(M_AXIS_ACLK),   
      .src_in(arm)      
      );
     
      xpm_cdc_single #(
      .DEST_SYNC_FF(C_CDC_DELAY_FLOPS),   
      .INIT_SYNC_FF(0),   
      .SIM_ASSERT_CHK(0), 
      .SRC_INPUT_REG(0)   
      )  
      xpm_cdc_we_4_ext_o (
      .dest_out(we_4_ext_cdc), 
      .dest_clk(READ_CLK), 
      .src_clk(M_AXIS_ACLK),   
      .src_in(we_4_ext)      
      ); 
     
      xpm_cdc_single #(
      .DEST_SYNC_FF(C_CDC_DELAY_FLOPS),   
      .INIT_SYNC_FF(0),   
      .SIM_ASSERT_CHK(0), 
      .SRC_INPUT_REG(0)   
      )  
      xpm_cdc_we_write (
      .dest_out(WE_WRITE_I_d), 
      .dest_clk(READ_CLK), 
      .src_clk(M_AXIS_ACLK),   
      .src_in(WE_WRITE_I)      
      );  
     
   /*   xpm_cdc_array_single #(
      .DEST_SYNC_FF(4),   
      .INIT_SYNC_FF(0),   
      .SIM_ASSERT_CHK(0), 
      .SRC_INPUT_REG(1),  
      .WIDTH(C_RAM_WIDTH)        
      )
      xpm_cdc_trigger_sample_o (
      .dest_out(trigger_sample_o), 
      .dest_clk(M_AXIS_ACLK), 
      .src_clk(READ_CLK),  
      .src_in(trigger_sample_o_reg_intf)
      );
*/   
 
           
       xpm_cdc_array_single #(
      .DEST_SYNC_FF(4),   
      .INIT_SYNC_FF(0),   
      .SIM_ASSERT_CHK(0), 
      .SRC_INPUT_REG(1),  
      .WIDTH(64)        
      )
      xpm_cdc_gap_count_o (
      .dest_out(gap_count_o), 
      .dest_clk(M_AXIS_ACLK), 
      .src_clk(READ_CLK),  
      .src_in(gap_count_o_reg)
      );
 
      xpm_cdc_single #(
      .DEST_SYNC_FF(4),   
      .INIT_SYNC_FF(0),   
      .SIM_ASSERT_CHK(0), 
      .SRC_INPUT_REG(1)   
      )  
      xpm_cdc_last_flag_o (
      .dest_out(last_flag_o), 
      .dest_clk(M_AXIS_ACLK), 
      .src_clk(READ_CLK),   
      .src_in(last_flag_o_reg)      
      );
      assign trigger_sample_o = trigger_sample_o_reg_intf;
      assign trigger_tb_o     = trigger_tb_o_reg_intf;
      assign arm_posedge_hub  = arm & ~arm_delay;  //genrating arm_posedge on debug hub clock
      always @ (posedge clk)
      begin 
        arm_delay <= arm;
        if (arm_posedge_hub)
        begin
          trigger_tb_o_reg_intf     <= 1'b0;
          trigger_sample_o_reg_intf <= {C_RAM_WIDTH{1'b0}} ;
        end
        else if (trigger_tb_o_reg)
        begin
          trigger_tb_o_reg_intf      <= 1'b1;
          trigger_sample_o_reg_intf  <= trigger_sample_o_reg;
        end
        else
        begin
          trigger_tb_o_reg_intf     <= trigger_tb_o_reg_intf;
          trigger_sample_o_reg_intf <= trigger_sample_o_reg_intf;
        end
      end
      
       axis_mem_v1_0_2_trace_header #(
        .C_MEMORY_TYPE          (C_MEMORY_TYPE ),
        .C_RAM_WIDTH            (C_RAM_WIDTH ),
        .C_RAM_DEPTH            ((C_MEMORY_TYPE > 1) ? 1024 : C_RAM_DEPTH),
        .C_DEPTH_ADDR_WIDTH     ((C_MEMORY_TYPE > 1) ? 10 : C_DEPTH_ADDR_WIDTH)
    ) trace_header_inst
    (
    .M_AXIS_ACLK_t      (READ_CLK),     
    .trace_data_ack_t   (trace_data_ack),  
    .m_axis_tready_t    (m_axis_tready),   
    .m_axis_tvalid_t    (m_axis_tvalid),   
    .m_axis_tlast_t     (m_axis_tlast),    
    .m_axis_tdata_t     (m_axis_tdata),    
    .trace_rd_data_i_t  (trace_rd_data_i),
    .en_deep_storage_t    (en_deep_storage_d), 
    .arm_t              (arm_d),
    .last_data_flag     (last_data_flag),
    .we_4_ext           (we_4_ext_cdc1 | wr_flag ),
    .we_4_ext_t         (we_4_ext_reg | wr_flag_f),        
    .ADDR_WRITE_I_t     (ADDR_WRITE_I_d1),    
    .ext_strg_addr_t    (ext_strg_addr),  
    .ext_strg_read_en_t_o (ext_strg_read_en),
    .gap_count          (gap_count_o_reg),
    .last_flag          (last_flag_o_reg),
    .arm_posedge        (arm_posedge),
    .max_depth_ext_strg (max_depth_ext_strg_i_reg)
    );
 

      end
    endgenerate
endmodule

module dfff (clk,
  d, q);
  input      clk;
  input      d;
  output     q;

  reg        q;

  always @(posedge clk)
  begin
    q<=d;
  end
endmodule








// (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////
module axis_mem_v1_0_2_trace_header #(
  parameter                        C_MEMORY_TYPE      = 0,
  parameter                        C_RAM_WIDTH        = 16,
  parameter                        C_RAM_DEPTH        = 65536,
  parameter                        C_DEPTH_ADDR_WIDTH = 8
  )

(
 input                                 M_AXIS_ACLK_t,
 input      [1:0]                      trace_data_ack_t,
 input                                 m_axis_tready_t,
 output                                m_axis_tvalid_t,
 output                                m_axis_tlast_t,
 output     [511:0]                    m_axis_tdata_t,
 input      [C_RAM_WIDTH-1:0]          trace_rd_data_i_t,
 input                                 arm_t,
 input                                 en_deep_storage_t,
 input                                 we_4_ext_t,
 input                                 we_4_ext,
 input      [C_DEPTH_ADDR_WIDTH-1:0]   ADDR_WRITE_I_t,
 output reg [C_DEPTH_ADDR_WIDTH-1:0]   ext_strg_addr_t,
 output reg [64-1:0]                   gap_count,
 output reg                            last_flag,
 output                                arm_posedge,
 output                                ext_strg_read_en_t_o,
 input      [10-1:0]                   max_depth_ext_strg,
 output reg                            last_data_flag
 								
);

 function integer clogb2 (input integer bit_depth);
        begin
            for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
                bit_depth = bit_depth >> 1;
        end
    endfunction


 localparam                C_CLOCKING_FACTOR = (C_RAM_WIDTH)/512 ; 
 localparam                RAM_WIDTH_ROUNDED = C_CLOCKING_FACTOR*512 + 512;
 localparam		   IDLE  	     = 2'h0;
 localparam		   COUNT             = 2'h1;
 localparam		   HEADER            = 2'h2;
 localparam                CLOCKING_FACTOR_LESS = C_CLOCKING_FACTOR ? (C_CLOCKING_FACTOR - 1):0;
 
 reg                      ext_strg_read_en_t;
 reg                      tmp;
 reg                      arm_t_dly;
 reg                      tmp_1;
 reg  [1:0]		  state; 
 wire [512-1:0]           DOUT_O;
 reg  [32-1:0]            counter;
 reg  [64-1:0]            counter_x;
 reg  [10-1:0]            count_int;
 reg                      flag;
 wire                     flag_2;
 reg                      flag_2_d;
 reg                      flag_bc;
 reg                      flag_3;  // for boundary condition in less than 512 CPW case as flag gets high only after 1 cycle when addresses are same and for condition when both adresses are same and tready is also high at the same time we are using flag3
 reg [clogb2(C_CLOCKING_FACTOR)-1:0] sel_r;
 reg [clogb2(C_CLOCKING_FACTOR)-1:0] counter_probe;
 reg  [RAM_WIDTH_ROUNDED-1:0]   trace_rd_data_reg;
 wire                     we_4_ext_o;
 reg                      tlast_tmp; //for holding tlast and tvalid high during condition when tready is low
 //wire      [C_DEPTH_ADDR_WIDTH-1:0]   ADDR_WRITE_I_t_comp;
 
 assign arm_posedge          = arm_t & ~arm_t_dly;
 assign ext_strg_read_en_t_o = ext_strg_read_en_t & ~(|counter_probe) ;
 //assign ADDR_WRITE_I_t_comp  = (we_4_ext ? (ADDR_WRITE_I_t + 2) : ADDR_WRITE_I_t);
 
 always @ (posedge M_AXIS_ACLK_t)
 begin
   arm_t_dly <= arm_t;
   counter_x <= counter << 10 ;
   if (arm_posedge)
   begin
    gap_count  <= {64{1'b0}};
    last_flag  <= 1'b0;
   end
   else if (m_axis_tlast_t)
   begin
     gap_count <= count_int + counter_x ;
     last_flag <= 1'b1;
   end
   else 
   begin
     gap_count <= gap_count;
     last_flag <= last_flag;
   end
   if(arm_posedge)
   tlast_tmp   <= 1'b0;
   else if(~m_axis_tready_t & m_axis_tlast_t )
   tlast_tmp   <= 1'b1;
   else
   tlast_tmp <= 1'b0;
 end


 generate
      if (C_MEMORY_TYPE == 2)
      begin
        always @ (*)
        begin
          if (arm_t == 1'b0)
          begin
            ext_strg_read_en_t <= 1'b0;
            tmp                <= 1'b1;
          end
          else
          begin
            if (we_4_ext_t == 1'b1 )
            begin
              if (tmp == 1'b1)
              begin
                ext_strg_read_en_t <= 1'b1;
                tmp                <= 1'b0;
              end
              else if (m_axis_tready_t & (~flag |flag_2) & (~flag_3))
              begin
                ext_strg_read_en_t <= 1'b1 ;
              end
	      else
	      begin
	        ext_strg_read_en_t <= 1'b0;
	      end
            end
            else
            begin
               ext_strg_read_en_t <= 1'b0;
            end
          end
        end
	 always @ (posedge M_AXIS_ACLK_t)
        begin
          if (arm_t == 1'b0)
          begin
            ext_strg_addr_t    <= 'h0;
            tmp_1              <= 1'b1;
          end
          else
          begin
            if (we_4_ext_o == 1'b1 )
            begin
              if (tmp_1 == 1'b1)
              begin
                ext_strg_addr_t    <= 'h0;
                tmp_1                <= 1'b0;
              end
              else if (m_axis_tready_t & (~flag |flag_2) & ext_strg_addr_t == max_depth_ext_strg & ~(|counter_probe))
              begin
                ext_strg_addr_t    <= 'h0;
              end
              else if (m_axis_tready_t & (~flag |flag_2) & ~(|counter_probe) & ext_strg_read_en_t )
              begin
                ext_strg_addr_t    <= ext_strg_addr_t + 'h1;
              end
	      else
	      begin
		ext_strg_addr_t    <= ext_strg_addr_t;
	      end
            end
            else
            begin
              ext_strg_addr_t    <= ext_strg_addr_t;
            end
          end
        end

      end
    endgenerate

// Adjusting rd_en & select s/g for different 512 bus for cumulative data width
  generate 
      if (C_RAM_WIDTH > 511)
      begin
        always @ (posedge M_AXIS_ACLK_t)
        begin 
          if (arm_posedge)
          begin
            sel_r  <= 8'b0;
          end
          else if (m_axis_tvalid_t && m_axis_tready_t && sel_r == C_CLOCKING_FACTOR)
          begin
            sel_r <=  8'b0;
          end
          else if (m_axis_tvalid_t && m_axis_tready_t)
          begin
            sel_r <= sel_r + 1'b1;
          end
          else
          begin
            sel_r <= sel_r;
          end
          
          if (arm_posedge)
          begin
            last_data_flag <= 1'b0;
          end
          else if (counter_probe == C_CLOCKING_FACTOR -1'b1)
          begin
            last_data_flag <= 1'b1;
          end
          else
          begin
            last_data_flag <= 1'b0;
          end
          


          if (arm_posedge | flag_2_d)
          begin
             counter_probe <= 8'b0;
          end
          else if (counter_probe == C_CLOCKING_FACTOR  && ext_strg_read_en_t)
          begin
            counter_probe <= 8'b0;
          end
          else if (ext_strg_read_en_t)
          begin
            counter_probe <= counter_probe + 1'b1;
          end
          else
          begin
            counter_probe <= counter_probe;
          end
        end
      end 
      else
      begin
        always @ (posedge M_AXIS_ACLK_t)
        begin
          counter_probe <= 8'b0;
          sel_r         <= 8'b0;
          last_data_flag <= 1'b1;
        end
      end
 endgenerate




   reg   tmp_2;
   reg [C_DEPTH_ADDR_WIDTH-1:0]   ADDR_WRITE_I_t_d;
   reg [C_DEPTH_ADDR_WIDTH-1:0]   ext_strg_addr_t_d;
   wire   flag_addr_incr;   //for checking that that write addr is incrementing so that for width>512 condition we don't repeatively count gap for same wr_addr== rd_addr during intial stage 
   reg flag_addr_incr_d; //delaying by 1 for DW<512 to for trigger immediate condition
   reg tmp_state ; //for ajusting the header packet in cumulative probe width case so that it doesn't comes in between data packet
   wire flag_rd_addr_incr;   
 
 generate 
   if(C_CLOCKING_FACTOR)
   begin :state_for_cumulative_probe
      assign flag_addr_incr = ADDR_WRITE_I_t ^ ADDR_WRITE_I_t_d;
      assign flag_rd_addr_incr = ext_strg_addr_t ^ ext_strg_addr_t_d;
      always @ ( posedge M_AXIS_ACLK_t )
      begin
        ADDR_WRITE_I_t_d   <= ADDR_WRITE_I_t;
        ext_strg_addr_t_d  <= ext_strg_addr_t;
        
        if (!arm_t) 
        begin
          trace_rd_data_reg <= {RAM_WIDTH_ROUNDED {1'b0}};
          state             <= IDLE;
          tmp_2             <= 1'b1;
          tmp_state         <= 1'b0;
        end  
        case( state )
            IDLE:
            begin
	      count_int         <= {10{1'b0}}; 
	      flag_2_d          <= 1'b0;
              tmp_state         <= 1'b0;
              flag_3            <= 1'b0;
                if (tmp_2 == 1'b1)
                begin
                trace_rd_data_reg <=  trace_rd_data_i_t;
                tmp_2 <= 1'b0;
                state <= IDLE;
                end
                else if (m_axis_tready_t)
		begin
             	  state <= IDLE;
                  trace_rd_data_reg <= trace_rd_data_i_t;
		end
		else if (en_deep_storage_t && arm_t)   //going to next state only when external storage is enabled by software
		begin
		  state <= COUNT;
                  trace_rd_data_reg <= trace_rd_data_reg;
		end
                else 
                begin
		  state <= IDLE;
                  trace_rd_data_reg <= trace_rd_data_reg;
		end

                if ((ext_strg_addr_t  == ADDR_WRITE_I_t) & (flag_addr_incr) )
                begin
                   flag_bc <= 1'b1;
                end
                else if (flag_rd_addr_incr & m_axis_tready_t)
                begin
                  flag_bc <= 1'b0;
                end
                else if ((flag_bc == 1) & (!m_axis_tready_t) & (!flag_rd_addr_incr))
                begin
                  counter <= counter + 1;
		  flag    <= 1'b1; 
                  flag_bc <= 1'b0; 
                end
                else if (flag_rd_addr_incr)
                begin
                  flag_bc <= 1'b0;
                end
                else
                begin
                  counter  <= {32{1'b0}};
                  flag     <= 1'b0;
                end

            end
            COUNT:
            begin
              
              if (en_deep_storage_t == 0)   //going back to idle state when external storage is not enabled by software
              begin
                state <= IDLE;
              end
              else if (!m_axis_tready_t)
	      begin
                trace_rd_data_reg <= trace_rd_data_reg;
	        state <= COUNT;
                if(m_axis_tvalid_t)
                begin
                  count_int <= count_int + 1;              
                end
                else
                begin 
                  count_int <= count_int;
                end
		if (((ext_strg_addr_t  == ADDR_WRITE_I_t) & (flag_addr_incr) ) | flag_bc)
		begin
		  counter <= counter + 1;
		  flag    <= 1'b1;
                  flag_bc  <= 1'b0;
		end
		else
		begin
		  counter <= counter;
		  flag    <= flag;
		end
       	      end
	      else if (m_axis_tready_t && flag)
		begin
                  trace_rd_data_reg <= trace_rd_data_i_t;
		  state <= HEADER;
                  if (sel_r == CLOCKING_FACTOR_LESS)
                  flag_2_d <= 1'b1;
                  else
                  flag_2_d <= 1'b0;
		end
              else if (m_axis_tready_t && (ext_strg_addr_t == ADDR_WRITE_I_t ) && (flag_addr_incr) && (!ext_strg_read_en_t_o))
                begin
                  trace_rd_data_reg <= trace_rd_data_i_t;
		  state <= HEADER;
                  counter <= counter + 1;
		  flag    <= 1'b1;
                  flag_3  <= 1'b1;
                  if (sel_r == CLOCKING_FACTOR_LESS)
                  flag_2_d <= 1'b1;
                  else
                  flag_2_d <= 1'b0;
                end
	      else 
	       begin
                 trace_rd_data_reg <= trace_rd_data_i_t;
	         state <= IDLE;
                 counter           <= {32{1'b0}};
                 flag              <= 1'b0;

	       end			
            end
            HEADER:
            begin
              flag_bc  <= 1'b0;
              flag_3   <= 1'b0;
              if (en_deep_storage_t == 0)
              begin
                state <= IDLE;
              end
              else if (m_axis_tready_t & tmp_state & (sel_r == CLOCKING_FACTOR_LESS))
	      begin
	        state <= IDLE;
                trace_rd_data_reg <= { 1'b1, {RAM_WIDTH_ROUNDED-1-32{1'b0}}, counter};
                flag      <= 1'b0;
                tmp_state <= 1'b0;
              end
              else if (m_axis_tready_t && sel_r == C_CLOCKING_FACTOR )
	      begin
	        state <= HEADER;
                trace_rd_data_reg <= { 1'b1, {RAM_WIDTH_ROUNDED-1-32{1'b0}}, counter};
                flag      <= 1'b1;
                tmp_state <= 1'b1;
              end
	      else 
	      begin
	        state <= HEADER;
                trace_rd_data_reg <= trace_rd_data_reg;
                tmp_state <= tmp_state;
              end
              if (tmp_state == 1'b0 && sel_r == CLOCKING_FACTOR_LESS)
              flag_2_d <= 1'b1;
              else
              flag_2_d <= 1'b0;  
            end				
			
            default: 
            begin
              state <= IDLE;
            end
       endcase
     end 
   end
   else
   begin :state_for_less_than_512
      assign flag_addr_incr = ADDR_WRITE_I_t ^ ADDR_WRITE_I_t_d;
      always @ ( posedge M_AXIS_ACLK_t )
      begin
        ADDR_WRITE_I_t_d <= ADDR_WRITE_I_t;
        flag_addr_incr_d <= flag_addr_incr; 
        if (!arm_t) 
        begin
          trace_rd_data_reg <= {512 {1'b0}};
          state             <= IDLE;
          tmp_2             <= 1'b1;
        end  
        case( state )
            IDLE:
            begin
	      counter           <= {32{1'b0}}; 
	      count_int         <= {10{1'b0}}; 
	      flag              <= 1'b0;
              flag_3            <= 1'b0;
	      flag_2_d          <= 1'b0;
                if (tmp_2 == 1'b1) 
                begin
                trace_rd_data_reg <=  trace_rd_data_i_t;
                tmp_2 <= 1'b0;
                state <= IDLE;
                end
                else if (m_axis_tready_t)
		begin
             	  state <= IDLE;
                  trace_rd_data_reg <= trace_rd_data_i_t;
		end
		else if (en_deep_storage_t && arm_t)
		begin
		  state <= COUNT;
                  trace_rd_data_reg <= trace_rd_data_reg;
		end
                else 
                begin
		  state <= IDLE;
                  trace_rd_data_reg <= trace_rd_data_reg;
		end

            end
            COUNT:
            begin
              if (en_deep_storage_t == 0)
              begin
                state <= IDLE;
              end
              else if (!m_axis_tready_t)
	      begin
                trace_rd_data_reg <= trace_rd_data_reg;
	        state <= COUNT;
                if(m_axis_tvalid_t)
                begin
                  count_int <= count_int + 1;
                end
                else
                begin 
                  count_int <= count_int;
                end
		if ((ext_strg_addr_t == ADDR_WRITE_I_t ) & (flag_addr_incr_d))
		begin
		  counter <= counter + 1;
		  flag    <= 1'b1;
		end
		else
		begin
		  counter <= counter;
		  flag    <= flag;
		end
       	      end
	      else if (m_axis_tready_t && flag)
		begin
                  trace_rd_data_reg <= trace_rd_data_i_t;
		  state <= HEADER;
                  flag_2_d <= 1'b1;
		end
              else if (m_axis_tready_t & (ext_strg_addr_t == ADDR_WRITE_I_t ) & (flag_addr_incr_d))
                begin
                  trace_rd_data_reg <= trace_rd_data_i_t;
		  state <= HEADER;
                  flag_2_d <= 1'b1;
                  counter <= counter + 1;
		  flag    <= 1'b1;
                  flag_3  <= 1'b1;
                end
	      else 
	       begin
                 trace_rd_data_reg <= trace_rd_data_i_t;
	         state <= IDLE;
	       end			
            end
            HEADER:
            begin
              flag_3  <= 1'b0;
              if (en_deep_storage_t == 0)
              begin
                state <= IDLE;
              end
              else if (m_axis_tready_t)
	      begin
	        state <= IDLE;
                trace_rd_data_reg <= { 1'b1, {511-32{1'b0}}, counter};
                flag      <= 1'b0;
                flag_2_d    <= 1'b0;
              end
	      else 
	      begin
	        state <= HEADER;
                trace_rd_data_reg <= trace_rd_data_reg;
                flag_2_d <= 1'b0;
              end
            end				
			
            default: 
            begin
              state <= IDLE;
            end
       endcase
     end 
   end
 endgenerate

 wire trace_data_ack_t_r0;
 wire trace_data_ack_t_r1;
 generate 
  if(!C_CLOCKING_FACTOR)
  begin :probe_less_than_512
    assign m_axis_tlast_t  = (trace_data_ack_t[1] && ~trace_data_ack_t[0] && en_deep_storage_t) | tlast_tmp;
    assign m_axis_tvalid_t = (trace_data_ack_t[1] && en_deep_storage_t) | tlast_tmp;
    assign m_axis_tdata_t  = trace_rd_data_reg;
  end
  else 
  begin :probe_more_than_512
    axis_mem_v1_0_2_generic_mux
  #(
    .C_WIDTH(512),
    .C_NUM_BUSES(C_CLOCKING_FACTOR + 1)
  ) u_data_mux (
    .DIN_I(trace_rd_data_reg),
    .SEL_I(sel_r),
    .DOUT_O(DOUT_O)
  ); 

    assign m_axis_tlast_t  = (trace_data_ack_t[1] && ~trace_data_ack_t[0] && en_deep_storage_t) | tlast_tmp;
    assign m_axis_tvalid_t = (trace_data_ack_t[1]  && en_deep_storage_t) |tlast_tmp;
    assign m_axis_tdata_t  = DOUT_O;

  end
 endgenerate
 

 genvar i;
 generate
 if(C_CLOCKING_FACTOR)
 begin :Cumulative_probe_width
   wire [C_CLOCKING_FACTOR :0] connect_wire;              // delaying the flag_2 which moves moves state from header to IDLE based on clocking factor so that whole data of gap count is read out 
   assign flag_2 = connect_wire[C_CLOCKING_FACTOR];
   assign connect_wire[0] = flag_2_d;  
   for (i=1; i <= C_CLOCKING_FACTOR ; i=i+1) 
   begin :flag_delay_generation
      dff DFFF(M_AXIS_ACLK_t,
        connect_wire[i-1], connect_wire[i]);
   end
   // delaying the we_4_ext_o according to clocking factor for cumulative
   // probe width condition
   wire [C_CLOCKING_FACTOR :0] connect_wire1; 
   assign we_4_ext_o = connect_wire1[C_CLOCKING_FACTOR  ];
   assign connect_wire1[0] = we_4_ext;  
   for (i=1; i <= C_CLOCKING_FACTOR  ; i=i+1) 
   begin :we_4_ext_delay_genration
      dff DFFF1(M_AXIS_ACLK_t,
        connect_wire1[i-1], connect_wire1[i]);
   end
 end
 else 
 begin :probe_512
  assign flag_2     = flag_2_d;
  assign we_4_ext_o = we_4_ext; 
 end
 endgenerate

endmodule

module dff (clk,
  d, q);
  input      clk;
  input      d;
  output     q;

  reg        q;

  always @(posedge clk)
  begin
    q<=d;
  end
endmodule


