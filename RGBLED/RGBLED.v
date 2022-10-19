module RGBLED(sw,led);
	input [2:0] sw;
	output [2:0] led;
	
	assign led = sw;
	
endmodule