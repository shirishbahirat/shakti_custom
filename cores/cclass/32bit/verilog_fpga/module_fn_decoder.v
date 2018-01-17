//
// Generated by Bluespec Compiler, version 2016.07.beta1 (build 34806, 2016-07-05)
//
// On Tue Mar 28 10:39:07 IST 2017
//
//
// Ports:
// Name                         I/O  size props
// fn_decoder                     O    62
// fn_decoder__instruction        I    32
// fn_decoder_pred_type           I     1
//
// Combinational paths from inputs to outputs:
//   (fn_decoder__instruction, fn_decoder_pred_type) -> fn_decoder
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

module module_fn_decoder(fn_decoder__instruction,
			 fn_decoder_pred_type,
			 fn_decoder);
  // value method fn_decoder
  input  [31 : 0] fn_decoder__instruction;
  input  fn_decoder_pred_type;
  output [61 : 0] fn_decoder;

  // signals for module outputs
  wire [61 : 0] fn_decoder;

  // remaining internal signals
  reg [19 : 0] _theResult_____10__h31;
  reg [4 : 0] x__h500, x__h698;
  reg [1 : 0] CASE_fn_decoder__instruction_BITS_6_TO_2_0b0_0_ETC__q2;
  wire [19 : 0] immediate_value___1__h111,
		immediate_value___1__h197,
		immediate_value___1__h300,
		immediate_value__h27;
  wire [11 : 0] fn_decoder__instruction_BITS_31_TO_20__q1, x__h201, x__h303;
  wire [4 : 0] x__h542, x__h655;

  // value method fn_decoder
  assign fn_decoder =
	     { (fn_decoder__instruction[6:2] == 5'b11011 &&
		_theResult_____10__h31 == 20'd0) ?
		 2'd1 :
		 ((fn_decoder__instruction[6:2] == 5'b11100) ?
		    2'd2 :
		    ((fn_decoder__instruction[6:2] == 5'b00011 &&
		      fn_decoder__instruction[14:12] == 3'b0) ?
		       2'd3 :
		       CASE_fn_decoder__instruction_BITS_6_TO_2_0b0_0_ETC__q2)),
	       x__h500,
	       x__h542,
	       x__h655,
	       x__h698,
	       fn_decoder__instruction[6:2] == 5'b00001 ||
	       fn_decoder__instruction[6:2] == 5'b10000 ||
	       fn_decoder__instruction[6:2] == 5'b10001 ||
	       fn_decoder__instruction[6:2] == 5'b10010 ||
	       fn_decoder__instruction[6:2] == 5'b10011 ||
	       fn_decoder__instruction[6:2] == 5'b10100 &&
	       fn_decoder__instruction[31:28] != 4'b1010 &&
	       fn_decoder__instruction[31:28] != 4'b1100 &&
	       fn_decoder__instruction[31:28] != 4'b1110,
	       fn_decoder__instruction[6:2] == 5'b10000 ||
	       fn_decoder__instruction[6:2] == 5'b10011 ||
	       fn_decoder__instruction[6:2] == 5'b10001 ||
	       fn_decoder__instruction[6:2] == 5'b10010 ||
	       fn_decoder__instruction[6:2] == 5'b10100 &&
	       fn_decoder__instruction[31:28] != 4'b1101 &&
	       fn_decoder__instruction[31:28] != 4'b1111,
	       fn_decoder__instruction[6:2] == 5'b10000 ||
	       fn_decoder__instruction[6:2] == 5'b10011 ||
	       fn_decoder__instruction[6:2] == 5'b10001 ||
	       fn_decoder__instruction[6:2] == 5'b10010 ||
	       fn_decoder__instruction[6:2] == 5'b01001 ||
	       fn_decoder__instruction[6:2] == 5'b10100 &&
	       fn_decoder__instruction[31:30] != 2'b01 &&
	       fn_decoder__instruction[31:30] != 2'b11,
	       fn_decoder__instruction[6:2],
	       fn_decoder__instruction[14:12],
	       fn_decoder__instruction[31:25],
	       _theResult_____10__h31,
	       fn_decoder__instruction[6:2] == 5'b00100 ||
	       fn_decoder__instruction[6:2] == 5'b00101 ||
	       fn_decoder__instruction[6:2] == 5'b11011 ||
	       fn_decoder__instruction[6:2] == 5'b11001 ||
	       fn_decoder__instruction[6:2] == 5'b01101 ||
	       fn_decoder__instruction[6:2] == 5'b11000 ||
	       fn_decoder__instruction[6:2] == 5'b0 ||
	       fn_decoder__instruction[6:2] == 5'b00001 ||
	       fn_decoder__instruction[6:2] == 5'b01001 ||
	       fn_decoder__instruction[6:2] == 5'b01000,
	       fn_decoder_pred_type } ;

  // remaining internal signals
  assign fn_decoder__instruction_BITS_31_TO_20__q1 =
	     fn_decoder__instruction[31:20] ;
  assign immediate_value___1__h111 =
	     { fn_decoder__instruction[31],
	       fn_decoder__instruction[19:12],
	       fn_decoder__instruction[20],
	       fn_decoder__instruction[30:21] } ;
  assign immediate_value___1__h197 = { {8{x__h201[11]}}, x__h201 } ;
  assign immediate_value___1__h300 = { {8{x__h303[11]}}, x__h303 } ;
  assign immediate_value__h27 =
	     { {8{fn_decoder__instruction_BITS_31_TO_20__q1[11]}},
	       fn_decoder__instruction_BITS_31_TO_20__q1 } ;
  assign x__h201 =
	     { fn_decoder__instruction[31],
	       fn_decoder__instruction[7],
	       fn_decoder__instruction[30:25],
	       fn_decoder__instruction[11:8] } ;
  assign x__h303 =
	     { fn_decoder__instruction[31:25],
	       fn_decoder__instruction[11:7] } ;
  assign x__h542 =
	     (fn_decoder__instruction[6:2] == 5'b00101 ||
	      fn_decoder__instruction[6:2] == 5'b01101 ||
	      fn_decoder__instruction[6:2] == 5'b11011 ||
	      fn_decoder__instruction[6:2] == 5'b11001 ||
	      fn_decoder__instruction[6:2] == 5'b0 ||
	      fn_decoder__instruction[6:2] == 5'b00001 ||
	      fn_decoder__instruction[6:2] == 5'b00100 ||
	      fn_decoder__instruction[6:2] == 5'b11100 ||
	      fn_decoder__instruction[6:2] == 5'b10100 &&
	      fn_decoder__instruction[31:30] == 2'b11) ?
	       5'd0 :
	       fn_decoder__instruction[24:20] ;
  assign x__h655 =
	     (fn_decoder__instruction[6:4] == 3'b100) ?
	       fn_decoder__instruction[31:27] :
	       5'd0 ;
  always@(fn_decoder__instruction)
  begin
    case (fn_decoder__instruction[6:2])
      5'b00101, 5'b01101, 5'b11011: x__h500 = 5'd0;
      default: x__h500 = fn_decoder__instruction[19:15];
    endcase
  end
  always@(fn_decoder__instruction)
  begin
    case (fn_decoder__instruction[6:2])
      5'b01000, 5'b01001, 5'b11000: x__h698 = 5'd0;
      default: x__h698 = fn_decoder__instruction[11:7];
    endcase
  end
  always@(fn_decoder__instruction or
	  immediate_value__h27 or
	  immediate_value___1__h300 or
	  immediate_value___1__h197 or immediate_value___1__h111)
  begin
    case (fn_decoder__instruction[6:2])
      5'b00101, 5'b01101:
	  _theResult_____10__h31 = fn_decoder__instruction[31:12];
      5'b01000, 5'b01001: _theResult_____10__h31 = immediate_value___1__h300;
      5'b11000: _theResult_____10__h31 = immediate_value___1__h197;
      5'b11011: _theResult_____10__h31 = immediate_value___1__h111;
      default: _theResult_____10__h31 = immediate_value__h27;
    endcase
  end
  always@(fn_decoder__instruction)
  begin
    case (fn_decoder__instruction[6:2])
      5'b0,
      5'b00001,
      5'b00100,
      5'b00101,
      5'b01000,
      5'b01001,
      5'b01011,
      5'b01100,
      5'b01101,
      5'b10000,
      5'b10001,
      5'b10010,
      5'b10011,
      5'b10100,
      5'b11000,
      5'b11001,
      5'b11011:
	  CASE_fn_decoder__instruction_BITS_6_TO_2_0b0_0_ETC__q2 = 2'd0;
      default: CASE_fn_decoder__instruction_BITS_6_TO_2_0b0_0_ETC__q2 = 2'd1;
    endcase
  end
endmodule  // module_fn_decoder

