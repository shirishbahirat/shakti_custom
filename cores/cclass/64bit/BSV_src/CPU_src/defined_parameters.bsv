`define Reg_width 64 // the register data width of the processor.
`define RegFileSize 64 // describes the size of ht register file in the processor.
`define Addr_width 64 // the address width
`define Loop 1
//`define simulate
`ifdef simulate
  `define Addr_space 19	//since we are leaving off the lower 2 bits of address(byte addressable memory), we have to 
`else
  `define Addr_space 16
`endif
`ifdef simulate
  `define BAUD_RATE 5
`else
  `define BAUD_RATE 163
`endif
/////////////////////////// Register Mapping for Machine Mode Regs /////////////////
`define MCPUID   'hF00 // CPU Description
`define MIMPID   'hF01 // Vecndor ID and Version Number
`define MHARTID  'hF10 // Hardware thread ID
`define MSTATUS  'h300 // Machine Status Register
`define MTVEC    'h301 // Machine trap-handler base address
`define MTDELEG  'h302 // machine trap delegation regsiter
`define MIE      'h304 // machine interrupt-enable register
`define MTIMECMP 'h321 // machine wall-clock timer compare value
`define MTIME    'h701 // machine wall-clock time
`define MTIMEH   'h741 // Upper 32 bits of mtime, RV32I only
`define MSCRATCH 'h340 // scracth register for machine trap handlers
`define MEPC     'h341 // machine exception program counter
`define MCAUSE   'h342 // machine trap cause
`define MBADDR   'h343 // machine bad address
`define MIP      'h344 // machine interrupt pending
`define MBASE    'h380 // base register
`define MBOUND   'h381 // bound register
`define MIBASE   'h382 // instruction base register
`define MIBOUND  'h383 // intruction bound register
`define MDBASE   'h384 // data base register
`define MDBOUND  'h385 // data bound register
`define UARTTX   'h77f // Uart Transmit register. Write-only
`define UARTRX   'h77e // Uart Receive register. Read-only TODO: Make this read-only address
`define RDCYCLE   'hC00 // Uart Receive register. Read-only TODO: Make this read-only address
////////////////////////////////////////////////////////////////////////////////////

