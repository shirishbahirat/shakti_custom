//
// Generated by Bluespec Compiler, version 2014.07.A (build 34078, 2014-07-30)
//
// On Fri Jan 22 01:17:51 IST 2016
//
//
// Ports:
// Name                         I/O  size props
// wallace_rba_part2              O   128
// wallace_rba_part2_s2_1p        I    64
// wallace_rba_part2_s2_1m        I    64
// wallace_rba_part2_s2_2p        I    64
// wallace_rba_part2_s2_2m        I    64
// wallace_rba_part2_inp1         I    64
// wallace_rba_part2_inp2         I    64
//
// Combinational paths from inputs to outputs:
//   (wallace_rba_part2_s2_1p,
//    wallace_rba_part2_s2_1m,
//    wallace_rba_part2_s2_2p,
//    wallace_rba_part2_s2_2m,
//    wallace_rba_part2_inp1,
//    wallace_rba_part2_inp2) -> wallace_rba_part2
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

module module_wallace_rba_part2(wallace_rba_part2_s2_1p,
				wallace_rba_part2_s2_1m,
				wallace_rba_part2_s2_2p,
				wallace_rba_part2_s2_2m,
				wallace_rba_part2_inp1,
				wallace_rba_part2_inp2,
				wallace_rba_part2);
  // value method wallace_rba_part2
  input  [63 : 0] wallace_rba_part2_s2_1p;
  input  [63 : 0] wallace_rba_part2_s2_1m;
  input  [63 : 0] wallace_rba_part2_s2_2p;
  input  [63 : 0] wallace_rba_part2_s2_2m;
  input  [63 : 0] wallace_rba_part2_inp1;
  input  [63 : 0] wallace_rba_part2_inp2;
  output [127 : 0] wallace_rba_part2;

  // signals for module outputs
  wire [127 : 0] wallace_rba_part2;

  // remaining internal signals
  wire [127 : 0] rbAdder___d1;
  wire [63 : 0] s3_1m__h27, s3_1p__h28;

  // value method wallace_rba_part2
  module_rbAdder instance_rbAdder_1(.rbAdder_ap(s3_1p__h28),
				    .rbAdder_am(s3_1m__h27),
				    .rbAdder_bp(wallace_rba_part2_inp1),
				    .rbAdder_bm(wallace_rba_part2_inp2),
				    .rbAdder(wallace_rba_part2));

  // remaining internal signals
  module_rbAdder instance_rbAdder_0(.rbAdder_ap(wallace_rba_part2_s2_1p),
				    .rbAdder_am(wallace_rba_part2_s2_1m),
				    .rbAdder_bp(wallace_rba_part2_s2_2p),
				    .rbAdder_bm(wallace_rba_part2_s2_2m),
				    .rbAdder(rbAdder___d1));
  assign s3_1m__h27 = rbAdder___d1[63:0] ;
  assign s3_1p__h28 = rbAdder___d1[127:64] ;
endmodule  // module_wallace_rba_part2

