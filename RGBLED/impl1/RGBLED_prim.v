// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Wed Oct 19 21:03:20 2022
//
// Verilog Description of module RGBLED
//

module RGBLED (sw, led);   // e:/lattice_fpga/rgbled/rgbled.v(1[8:14])
    input [2:0]sw;   // e:/lattice_fpga/rgbled/rgbled.v(2[14:16])
    output [2:0]led;   // e:/lattice_fpga/rgbled/rgbled.v(3[15:18])
    
    
    wire led_c_2_c, led_c_1_c, led_c_0_c, GND_net, VCC_net;
    
    VLO i23 (.Z(GND_net));
    OB led_pad_2 (.I(led_c_2_c), .O(led[2]));   // e:/lattice_fpga/rgbled/rgbled.v(3[15:18])
    OB led_pad_1 (.I(led_c_1_c), .O(led[1]));   // e:/lattice_fpga/rgbled/rgbled.v(3[15:18])
    OB led_pad_0 (.I(led_c_0_c), .O(led[0]));   // e:/lattice_fpga/rgbled/rgbled.v(3[15:18])
    IB led_c_2_pad (.I(sw[2]), .O(led_c_2_c));   // e:/lattice_fpga/rgbled/rgbled.v(2[14:16])
    IB led_c_1_pad (.I(sw[1]), .O(led_c_1_c));   // e:/lattice_fpga/rgbled/rgbled.v(2[14:16])
    IB led_c_0_pad (.I(sw[0]), .O(led_c_0_c));   // e:/lattice_fpga/rgbled/rgbled.v(2[14:16])
    GSR GSR_INST (.GSR(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VHI i24 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

