//
// Generated by Bluespec Compiler, version 2017.03.beta1 (build 35049, 2017-03-16)
//
// On Thu Apr  6 04:40:36 IST 2017
//
//
// Ports:
// Name                         I/O  size props
// tx_get                         O   110
// RDY_tx_get                     O     1
// RDY_rx_put                     O     1 reg
// m_command                      I     3
// verbose                        I     1 unused
// CLK                            I     1 clock
// RST_N                          I     1 reset
// rx_put                         I    58 reg
// EN_rx_put                      I     1
// EN_tx_get                      I     1
//
// Combinational paths from inputs to outputs:
//   m_command -> tx_get
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkTLM2Source(m_command,
		    verbose,
		    CLK,
		    RST_N,

		    EN_tx_get,
		    tx_get,
		    RDY_tx_get,

		    rx_put,
		    EN_rx_put,
		    RDY_rx_put);
  input  [2 : 0] m_command;
  input  verbose;
  input  CLK;
  input  RST_N;

  // actionvalue method tx_get
  input  EN_tx_get;
  output [109 : 0] tx_get;
  output RDY_tx_get;

  // action method rx_put
  input  [57 : 0] rx_put;
  input  EN_rx_put;
  output RDY_rx_put;

  // signals for module outputs
  wire [109 : 0] tx_get;
  wire RDY_rx_put, RDY_tx_get;

  // register gen_burst_length_gen_initialized
  reg gen_burst_length_gen_initialized;
  wire gen_burst_length_gen_initialized$D_IN,
       gen_burst_length_gen_initialized$EN;

  // register gen_burst_mode_gen_initialized
  reg gen_burst_mode_gen_initialized;
  wire gen_burst_mode_gen_initialized$D_IN, gen_burst_mode_gen_initialized$EN;

  // register gen_command_gen_initialized
  reg gen_command_gen_initialized;
  wire gen_command_gen_initialized$D_IN, gen_command_gen_initialized$EN;

  // register gen_count
  reg [9 : 0] gen_count;
  wire [9 : 0] gen_count$D_IN;
  wire gen_count$EN;

  // register gen_data_gen_initialized
  reg gen_data_gen_initialized;
  wire gen_data_gen_initialized$D_IN, gen_data_gen_initialized$EN;

  // register gen_descriptor_gen_initialized
  reg gen_descriptor_gen_initialized;
  wire gen_descriptor_gen_initialized$D_IN, gen_descriptor_gen_initialized$EN;

  // register gen_id
  reg [3 : 0] gen_id;
  reg [3 : 0] gen_id$D_IN;
  wire gen_id$EN;

  // register gen_log_size_gen_initialized
  reg gen_log_size_gen_initialized;
  wire gen_log_size_gen_initialized$D_IN, gen_log_size_gen_initialized$EN;

  // register gen_log_wrap_gen_initialized
  reg gen_log_wrap_gen_initialized;
  wire gen_log_wrap_gen_initialized$D_IN, gen_log_wrap_gen_initialized$EN;

  // register initialized
  reg initialized;
  wire initialized$D_IN, initialized$EN;

  // ports of submodule gen_burst_length_gen
  wire [9 : 0] gen_burst_length_gen$OUT;
  wire gen_burst_length_gen$EN;

  // ports of submodule gen_burst_mode_gen
  wire [1 : 0] gen_burst_mode_gen$OUT;
  wire gen_burst_mode_gen$EN;

  // ports of submodule gen_command_gen
  wire [1 : 0] gen_command_gen$OUT;
  wire gen_command_gen$EN;

  // ports of submodule gen_data_gen
  wire [35 : 0] gen_data_gen$OUT;
  wire gen_data_gen$EN;

  // ports of submodule gen_descriptor_gen
  wire [108 : 0] gen_descriptor_gen$OUT;
  wire gen_descriptor_gen$EN;

  // ports of submodule gen_log_size_gen
  wire gen_log_size_gen$EN, gen_log_size_gen$OUT;

  // ports of submodule gen_log_wrap_gen
  wire [1 : 0] gen_log_wrap_gen$OUT;
  wire gen_log_wrap_gen$EN;

  // ports of submodule response_fifo
  wire [57 : 0] response_fifo$D_IN, response_fifo$D_OUT;
  wire response_fifo$CLR,
       response_fifo$DEQ,
       response_fifo$EMPTY_N,
       response_fifo$ENQ,
       response_fifo$FULL_N;

  // rule scheduling signals
  wire CAN_FIRE_RL_gen_burst_length_gen_every,
       CAN_FIRE_RL_gen_burst_mode_gen_every,
       CAN_FIRE_RL_gen_command_gen_every,
       CAN_FIRE_RL_gen_data_gen_every,
       CAN_FIRE_RL_gen_descriptor_gen_every,
       CAN_FIRE_RL_gen_log_size_gen_every,
       CAN_FIRE_RL_gen_log_wrap_gen_every,
       CAN_FIRE_RL_grab_responses,
       CAN_FIRE_RL_start,
       CAN_FIRE_rx_put,
       CAN_FIRE_tx_get,
       WILL_FIRE_RL_gen_burst_length_gen_every,
       WILL_FIRE_RL_gen_burst_mode_gen_every,
       WILL_FIRE_RL_gen_command_gen_every,
       WILL_FIRE_RL_gen_data_gen_every,
       WILL_FIRE_RL_gen_descriptor_gen_every,
       WILL_FIRE_RL_gen_log_size_gen_every,
       WILL_FIRE_RL_gen_log_wrap_gen_every,
       WILL_FIRE_RL_grab_responses,
       WILL_FIRE_RL_start,
       WILL_FIRE_rx_put,
       WILL_FIRE_tx_get;

  // remaining internal signals
  reg [63 : 0] v__h2157, v__h3178;
  wire [108 : 0] IF_gen_count_1_EQ_0_2_THEN_IF_m_command_BIT_2__ETC___d124;
  wire [31 : 0] _theResult___addr__h2947,
		_theResult___data__h2948,
		addr__h2565;
  wire [9 : 0] IF_IF_m_command_BIT_2_3_THEN_m_command_BITS_1__ETC___d60,
	       IF_gen_burst_mode_gen_next_EQ_1_7_THEN_2_SL_ge_ETC___d59;
  wire [3 : 0] descriptor_byte_enable__h2755,
	       gen_id_5_PLUS_1___d66,
	       mask__h3580,
	       x__h3038,
	       x__h3577,
	       x__h3594;
  wire [2 : 0] _0_CONCAT_1_SL_gen_log_size_gen_next_1_0_BIT_1__ETC___d93,
	       x__h3259;
  wire [1 : 0] _1_SL_gen_log_size_genOUT__q1, x__h2743, x__h3608, y__h3596;

  // actionvalue method tx_get
  assign tx_get =
	     { gen_count != 10'd0,
	       IF_gen_count_1_EQ_0_2_THEN_IF_m_command_BIT_2__ETC___d124 } ;
  assign RDY_tx_get =
	     gen_descriptor_gen_initialized && gen_command_gen_initialized &&
	     gen_burst_mode_gen_initialized &&
	     gen_log_size_gen_initialized &&
	     gen_log_wrap_gen_initialized &&
	     gen_burst_length_gen_initialized &&
	     gen_data_gen_initialized ;
  assign CAN_FIRE_tx_get = RDY_tx_get ;
  assign WILL_FIRE_tx_get = EN_tx_get ;

  // action method rx_put
  assign RDY_rx_put = response_fifo$FULL_N ;
  assign CAN_FIRE_rx_put = response_fifo$FULL_N ;
  assign WILL_FIRE_rx_put = EN_rx_put ;

  // submodule gen_burst_length_gen
  ConstrainedRandom #(.width(32'd10),
		      .min(10'd1),
		      .max(10'd16)) gen_burst_length_gen(.RST(RST_N),
							 .CLK(CLK),
							 .EN(gen_burst_length_gen$EN),
							 .OUT(gen_burst_length_gen$OUT));

  // submodule gen_burst_mode_gen
  ConstrainedRandom #(.width(32'd2),
		      .min(2'd0),
		      .max(2'd1)) gen_burst_mode_gen(.RST(RST_N),
						     .CLK(CLK),
						     .EN(gen_burst_mode_gen$EN),
						     .OUT(gen_burst_mode_gen$OUT));

  // submodule gen_command_gen
  ConstrainedRandom #(.width(32'd2),
		      .min(2'd0),
		      .max(2'd1)) gen_command_gen(.RST(RST_N),
						  .CLK(CLK),
						  .EN(gen_command_gen$EN),
						  .OUT(gen_command_gen$OUT));

  // submodule gen_data_gen
  ConstrainedRandom #(.width(32'd36),
		      .min(36'd0),
		      .max(36'hFFFFFFFFF)) gen_data_gen(.RST(RST_N),
							.CLK(CLK),
							.EN(gen_data_gen$EN),
							.OUT(gen_data_gen$OUT));

  // submodule gen_descriptor_gen
  ConstrainedRandom #(.width(32'd109),
		      .min(109'd0),
		      .max(109'h17FFFFFFFFFFFFFFFFFFFFFFFFFF)) gen_descriptor_gen(.RST(RST_N),
										  .CLK(CLK),
										  .EN(gen_descriptor_gen$EN),
										  .OUT(gen_descriptor_gen$OUT));

  // submodule gen_log_size_gen
  ConstrainedRandom #(.width(32'd1),
		      .min(1'h0),
		      .max(1'd1)) gen_log_size_gen(.RST(RST_N),
						   .CLK(CLK),
						   .EN(gen_log_size_gen$EN),
						   .OUT(gen_log_size_gen$OUT));

  // submodule gen_log_wrap_gen
  ConstrainedRandom #(.width(32'd2),
		      .min(2'd1),
		      .max(2'd3)) gen_log_wrap_gen(.RST(RST_N),
						   .CLK(CLK),
						   .EN(gen_log_wrap_gen$EN),
						   .OUT(gen_log_wrap_gen$OUT));

  // submodule response_fifo
  FIFO2 #(.width(32'd58), .guarded(32'd1)) response_fifo(.RST(RST_N),
							 .CLK(CLK),
							 .D_IN(response_fifo$D_IN),
							 .ENQ(response_fifo$ENQ),
							 .DEQ(response_fifo$DEQ),
							 .CLR(response_fifo$CLR),
							 .D_OUT(response_fifo$D_OUT),
							 .FULL_N(response_fifo$FULL_N),
							 .EMPTY_N(response_fifo$EMPTY_N));

  // rule RL_grab_responses
  assign CAN_FIRE_RL_grab_responses = response_fifo$EMPTY_N ;
  assign WILL_FIRE_RL_grab_responses = response_fifo$EMPTY_N ;

  // rule RL_gen_descriptor_gen_every
  assign CAN_FIRE_RL_gen_descriptor_gen_every =
	     !gen_descriptor_gen_initialized ;
  assign WILL_FIRE_RL_gen_descriptor_gen_every =
	     CAN_FIRE_RL_gen_descriptor_gen_every ;

  // rule RL_gen_command_gen_every
  assign CAN_FIRE_RL_gen_command_gen_every = !gen_command_gen_initialized ;
  assign WILL_FIRE_RL_gen_command_gen_every =
	     CAN_FIRE_RL_gen_command_gen_every ;

  // rule RL_gen_burst_mode_gen_every
  assign CAN_FIRE_RL_gen_burst_mode_gen_every =
	     !gen_burst_mode_gen_initialized ;
  assign WILL_FIRE_RL_gen_burst_mode_gen_every =
	     CAN_FIRE_RL_gen_burst_mode_gen_every ;

  // rule RL_gen_burst_length_gen_every
  assign CAN_FIRE_RL_gen_burst_length_gen_every =
	     !gen_burst_length_gen_initialized ;
  assign WILL_FIRE_RL_gen_burst_length_gen_every =
	     CAN_FIRE_RL_gen_burst_length_gen_every ;

  // rule RL_gen_log_wrap_gen_every
  assign CAN_FIRE_RL_gen_log_wrap_gen_every = !gen_log_wrap_gen_initialized ;
  assign WILL_FIRE_RL_gen_log_wrap_gen_every =
	     CAN_FIRE_RL_gen_log_wrap_gen_every ;

  // rule RL_gen_data_gen_every
  assign CAN_FIRE_RL_gen_data_gen_every = !gen_data_gen_initialized ;
  assign WILL_FIRE_RL_gen_data_gen_every = CAN_FIRE_RL_gen_data_gen_every ;

  // rule RL_gen_log_size_gen_every
  assign CAN_FIRE_RL_gen_log_size_gen_every = !gen_log_size_gen_initialized ;
  assign WILL_FIRE_RL_gen_log_size_gen_every =
	     CAN_FIRE_RL_gen_log_size_gen_every ;

  // rule RL_start
  assign CAN_FIRE_RL_start = !initialized ;
  assign WILL_FIRE_RL_start = CAN_FIRE_RL_start ;

  // register gen_burst_length_gen_initialized
  assign gen_burst_length_gen_initialized$D_IN = 1'd1 ;
  assign gen_burst_length_gen_initialized$EN = CAN_FIRE_RL_start ;

  // register gen_burst_mode_gen_initialized
  assign gen_burst_mode_gen_initialized$D_IN = 1'd1 ;
  assign gen_burst_mode_gen_initialized$EN = CAN_FIRE_RL_start ;

  // register gen_command_gen_initialized
  assign gen_command_gen_initialized$D_IN = 1'd1 ;
  assign gen_command_gen_initialized$EN = CAN_FIRE_RL_start ;

  // register gen_count
  assign gen_count$D_IN =
	     (gen_count == 10'd0) ?
	       IF_IF_m_command_BIT_2_3_THEN_m_command_BITS_1__ETC___d60 -
	       10'd1 :
	       gen_count - 10'd1 ;
  assign gen_count$EN = EN_tx_get ;

  // register gen_data_gen_initialized
  assign gen_data_gen_initialized$D_IN = 1'd1 ;
  assign gen_data_gen_initialized$EN = CAN_FIRE_RL_start ;

  // register gen_descriptor_gen_initialized
  assign gen_descriptor_gen_initialized$D_IN = 1'd1 ;
  assign gen_descriptor_gen_initialized$EN = CAN_FIRE_RL_start ;

  // register gen_id
  always@(gen_count or gen_id or x__h3038 or gen_id_5_PLUS_1___d66)
  begin
    case (gen_count)
      10'd0: gen_id$D_IN = x__h3038;
      10'd1: gen_id$D_IN = gen_id_5_PLUS_1___d66;
      default: gen_id$D_IN = gen_id;
    endcase
  end
  assign gen_id$EN = EN_tx_get ;

  // register gen_log_size_gen_initialized
  assign gen_log_size_gen_initialized$D_IN = 1'd1 ;
  assign gen_log_size_gen_initialized$EN = CAN_FIRE_RL_start ;

  // register gen_log_wrap_gen_initialized
  assign gen_log_wrap_gen_initialized$D_IN = 1'd1 ;
  assign gen_log_wrap_gen_initialized$EN = CAN_FIRE_RL_start ;

  // register initialized
  assign initialized$D_IN = 1'd1 ;
  assign initialized$EN = CAN_FIRE_RL_start ;

  // submodule gen_burst_length_gen
  assign gen_burst_length_gen$EN =
	     EN_tx_get && gen_count == 10'd0 &&
	     gen_burst_mode_gen$OUT != 2'd1 ||
	     WILL_FIRE_RL_gen_burst_length_gen_every ;

  // submodule gen_burst_mode_gen
  assign gen_burst_mode_gen$EN =
	     EN_tx_get && gen_count == 10'd0 ||
	     WILL_FIRE_RL_gen_burst_mode_gen_every ;

  // submodule gen_command_gen
  assign gen_command_gen$EN =
	     EN_tx_get && gen_count == 10'd0 ||
	     WILL_FIRE_RL_gen_command_gen_every ;

  // submodule gen_data_gen
  assign gen_data_gen$EN =
	     EN_tx_get && gen_count != 10'd0 ||
	     WILL_FIRE_RL_gen_data_gen_every ;

  // submodule gen_descriptor_gen
  assign gen_descriptor_gen$EN =
	     EN_tx_get && gen_count == 10'd0 ||
	     WILL_FIRE_RL_gen_descriptor_gen_every ;

  // submodule gen_log_size_gen
  assign gen_log_size_gen$EN =
	     EN_tx_get && gen_count == 10'd0 ||
	     WILL_FIRE_RL_gen_log_size_gen_every ;

  // submodule gen_log_wrap_gen
  assign gen_log_wrap_gen$EN =
	     EN_tx_get && gen_count == 10'd0 &&
	     gen_burst_mode_gen$OUT == 2'd1 ||
	     WILL_FIRE_RL_gen_log_wrap_gen_every ;

  // submodule response_fifo
  assign response_fifo$D_IN = rx_put ;
  assign response_fifo$ENQ = EN_rx_put ;
  assign response_fifo$DEQ = response_fifo$EMPTY_N ;
  assign response_fifo$CLR = 1'b0 ;

  // remaining internal signals
  assign IF_IF_m_command_BIT_2_3_THEN_m_command_BITS_1__ETC___d60 =
	     (x__h2743 == 2'd0) ?
	       10'd1 :
	       IF_gen_burst_mode_gen_next_EQ_1_7_THEN_2_SL_ge_ETC___d59 ;
  assign IF_gen_burst_mode_gen_next_EQ_1_7_THEN_2_SL_ge_ETC___d59 =
	     (gen_burst_mode_gen$OUT == 2'd1) ?
	       10'd2 << gen_log_wrap_gen$OUT :
	       gen_burst_length_gen$OUT ;
  assign IF_gen_count_1_EQ_0_2_THEN_IF_m_command_BIT_2__ETC___d124 =
	     (gen_count == 10'd0) ?
	       { x__h2743,
		 2'd0,
		 _theResult___addr__h2947,
		 _theResult___data__h2948,
		 IF_gen_burst_mode_gen_next_EQ_1_7_THEN_2_SL_ge_ETC___d59,
		 x__h3577,
		 gen_burst_mode_gen$OUT,
		 x__h3608,
		 gen_descriptor_gen$OUT[22:12],
		 4'd0,
		 gen_id,
		 4'd0 } :
	       { 73'h0AAAAAAAAAAAAAAAAAA /* unspecified value */ ,
		 gen_data_gen$OUT[35:4],
		 gen_id } ;
  assign _0_CONCAT_1_SL_gen_log_size_gen_next_1_0_BIT_1__ETC___d93 =
	     x__h3259 + 3'd1 ;
  assign _1_SL_gen_log_size_genOUT__q1 = 2'd1 << gen_log_size_gen$OUT ;
  assign _theResult___addr__h2947 = addr__h2565 << gen_log_size_gen$OUT ;
  assign _theResult___data__h2948 =
	     (x__h2743 == 2'd0) ? 32'd0 : gen_descriptor_gen$OUT[72:41] ;
  assign addr__h2565 =
	     gen_descriptor_gen$OUT[104:73] >> gen_log_size_gen$OUT ;
  assign descriptor_byte_enable__h2755 =
	     mask__h3580 << _theResult___addr__h2947[1:0] ;
  assign gen_id_5_PLUS_1___d66 = gen_id + 4'd1 ;
  assign mask__h3580 = ~x__h3594 ;
  assign x__h2743 = m_command[2] ? m_command[1:0] : gen_command_gen$OUT ;
  assign x__h3038 =
	     (IF_IF_m_command_BIT_2_3_THEN_m_command_BITS_1__ETC___d60 ==
	      10'd1) ?
	       gen_id_5_PLUS_1___d66 :
	       gen_id ;
  assign x__h3259 = { 2'd0, _1_SL_gen_log_size_genOUT__q1[1] } ;
  assign x__h3577 =
	     (x__h2743 == 2'd0) ? 4'd15 : descriptor_byte_enable__h2755 ;
  assign x__h3594 = 4'd15 << y__h3596 ;
  assign x__h3608 = { 1'd0, _1_SL_gen_log_size_genOUT__q1[1] } ;
  assign y__h3596 = x__h3608 + 2'd1 ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        gen_burst_length_gen_initialized <= `BSV_ASSIGNMENT_DELAY 1'd0;
	gen_burst_mode_gen_initialized <= `BSV_ASSIGNMENT_DELAY 1'd0;
	gen_command_gen_initialized <= `BSV_ASSIGNMENT_DELAY 1'd0;
	gen_count <= `BSV_ASSIGNMENT_DELAY 10'd0;
	gen_data_gen_initialized <= `BSV_ASSIGNMENT_DELAY 1'd0;
	gen_descriptor_gen_initialized <= `BSV_ASSIGNMENT_DELAY 1'd0;
	gen_id <= `BSV_ASSIGNMENT_DELAY 4'd0;
	gen_log_size_gen_initialized <= `BSV_ASSIGNMENT_DELAY 1'd0;
	gen_log_wrap_gen_initialized <= `BSV_ASSIGNMENT_DELAY 1'd0;
	initialized <= `BSV_ASSIGNMENT_DELAY 1'd0;
      end
    else
      begin
        if (gen_burst_length_gen_initialized$EN)
	  gen_burst_length_gen_initialized <= `BSV_ASSIGNMENT_DELAY
	      gen_burst_length_gen_initialized$D_IN;
	if (gen_burst_mode_gen_initialized$EN)
	  gen_burst_mode_gen_initialized <= `BSV_ASSIGNMENT_DELAY
	      gen_burst_mode_gen_initialized$D_IN;
	if (gen_command_gen_initialized$EN)
	  gen_command_gen_initialized <= `BSV_ASSIGNMENT_DELAY
	      gen_command_gen_initialized$D_IN;
	if (gen_count$EN) gen_count <= `BSV_ASSIGNMENT_DELAY gen_count$D_IN;
	if (gen_data_gen_initialized$EN)
	  gen_data_gen_initialized <= `BSV_ASSIGNMENT_DELAY
	      gen_data_gen_initialized$D_IN;
	if (gen_descriptor_gen_initialized$EN)
	  gen_descriptor_gen_initialized <= `BSV_ASSIGNMENT_DELAY
	      gen_descriptor_gen_initialized$D_IN;
	if (gen_id$EN) gen_id <= `BSV_ASSIGNMENT_DELAY gen_id$D_IN;
	if (gen_log_size_gen_initialized$EN)
	  gen_log_size_gen_initialized <= `BSV_ASSIGNMENT_DELAY
	      gen_log_size_gen_initialized$D_IN;
	if (gen_log_wrap_gen_initialized$EN)
	  gen_log_wrap_gen_initialized <= `BSV_ASSIGNMENT_DELAY
	      gen_log_wrap_gen_initialized$D_IN;
	if (initialized$EN)
	  initialized <= `BSV_ASSIGNMENT_DELAY initialized$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    gen_burst_length_gen_initialized = 1'h0;
    gen_burst_mode_gen_initialized = 1'h0;
    gen_command_gen_initialized = 1'h0;
    gen_count = 10'h2AA;
    gen_data_gen_initialized = 1'h0;
    gen_descriptor_gen_initialized = 1'h0;
    gen_id = 4'hA;
    gen_log_size_gen_initialized = 1'h0;
    gen_log_wrap_gen_initialized = 1'h0;
    initialized = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_tx_get && gen_count == 10'd0 && verbose)
	begin
	  v__h3178 = $time;
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_tx_get && gen_count == 10'd0 && verbose)
	$write("(%0d) Request is: ", v__h3178);
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_tx_get && gen_count == 10'd0 && verbose)
	$write("<TDESC [%0d] ", gen_id);
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_tx_get && gen_count == 10'd0 && verbose && x__h2743 == 2'd0)
	$write("READ ");
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_tx_get && gen_count == 10'd0 && verbose && x__h2743 == 2'd1)
	$write("WRITE");
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_tx_get && gen_count == 10'd0 && verbose && x__h2743 != 2'd0 &&
	  x__h2743 != 2'd1)
	$write("UNKNOWN");
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_tx_get && gen_count == 10'd0 && verbose) $write(" ");
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_tx_get && gen_count == 10'd0 && verbose &&
	  gen_burst_mode_gen$OUT == 2'd0)
	$write("INCR %0d",
	       _0_CONCAT_1_SL_gen_log_size_gen_next_1_0_BIT_1__ETC___d93);
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_tx_get && gen_count == 10'd0 && verbose &&
	  gen_burst_mode_gen$OUT == 2'd2)
	$write("CNST %0d",
	       _0_CONCAT_1_SL_gen_log_size_gen_next_1_0_BIT_1__ETC___d93);
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_tx_get && gen_count == 10'd0 && verbose &&
	  gen_burst_mode_gen$OUT != 2'd0 &&
	  gen_burst_mode_gen$OUT != 2'd2)
	$write("WRAP %0d",
	       _0_CONCAT_1_SL_gen_log_size_gen_next_1_0_BIT_1__ETC___d93);
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_tx_get && gen_count == 10'd0 && verbose)
	$write(" (%0d)",
	       $unsigned(IF_gen_burst_mode_gen_next_EQ_1_7_THEN_2_SL_ge_ETC___d59));
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_tx_get && gen_count == 10'd0 && verbose)
	$write(" A:%h", _theResult___addr__h2947);
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_tx_get && gen_count == 10'd0 && verbose)
	$write(" D:%h>", _theResult___data__h2948);
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_tx_get && gen_count == 10'd0 && verbose) $write("\n");
    if (RST_N != `BSV_RESET_VALUE)
      if (response_fifo$EMPTY_N && verbose)
	begin
	  v__h2157 = $time;
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (response_fifo$EMPTY_N && verbose)
	$write("(%0d) Response is: ", v__h2157);
    if (RST_N != `BSV_RESET_VALUE)
      if (response_fifo$EMPTY_N && verbose)
	$write("<TRESP [%0d] ", response_fifo$D_OUT[7:4]);
    if (RST_N != `BSV_RESET_VALUE)
      if (response_fifo$EMPTY_N && verbose &&
	  response_fifo$D_OUT[57:56] == 2'd0)
	$write("READ ");
    if (RST_N != `BSV_RESET_VALUE)
      if (response_fifo$EMPTY_N && verbose &&
	  response_fifo$D_OUT[57:56] == 2'd1)
	$write("WRITE");
    if (RST_N != `BSV_RESET_VALUE)
      if (response_fifo$EMPTY_N && verbose &&
	  response_fifo$D_OUT[57:56] != 2'd0 &&
	  response_fifo$D_OUT[57:56] != 2'd1)
	$write("UNKNOWN");
    if (RST_N != `BSV_RESET_VALUE)
      if (response_fifo$EMPTY_N && verbose) $write(" ");
    if (RST_N != `BSV_RESET_VALUE)
      if (response_fifo$EMPTY_N && verbose &&
	  response_fifo$D_OUT[23:22] == 2'd0)
	$write("SUCCESS");
    if (RST_N != `BSV_RESET_VALUE)
      if (response_fifo$EMPTY_N && verbose &&
	  response_fifo$D_OUT[23:22] == 2'd1)
	$write("ERROR  ");
    if (RST_N != `BSV_RESET_VALUE)
      if (response_fifo$EMPTY_N && verbose &&
	  response_fifo$D_OUT[23:22] == 2'd2)
	$write("NO_RESP");
    if (RST_N != `BSV_RESET_VALUE)
      if (response_fifo$EMPTY_N && verbose &&
	  response_fifo$D_OUT[23:22] != 2'd0 &&
	  response_fifo$D_OUT[23:22] != 2'd1 &&
	  response_fifo$D_OUT[23:22] != 2'd2)
	$write("UNKNOWN");
    if (RST_N != `BSV_RESET_VALUE)
      if (response_fifo$EMPTY_N && verbose)
	$write(" %h>", response_fifo$D_OUT[55:24]);
    if (RST_N != `BSV_RESET_VALUE)
      if (response_fifo$EMPTY_N && verbose) $write("\n");
  end
  // synopsys translate_on
endmodule  // mkTLM2Source

