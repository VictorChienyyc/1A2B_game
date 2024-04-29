`timescale 1ns / 1ps

module top_tb;

    // Inputs
    reg in_clka;
    reg in_clkb;
	reg in_loadtest;
	reg in_enter;
	reg in_restart;
    reg [3:0] in_ans0;
    reg [3:0] in_ans1;
    reg [3:0] in_ans2;
    reg [3:0] in_ans3;

    // Outputs
    wire [2:0] out_Anum;
    wire [2:0] out_Bnum;
    wire [2:0] out_state;
    wire out_valid;

    // Instantiate the Unit Under Test (UUT)
//    top uut (
//        .in_clka(in_clka), 
//        .in_clkb(in_clkb), 
//        .in_start(in_start), 
//        .in_reset(in_reset), 
//        .in_ans0(in_ans0), 
//        .in_ans1(in_ans1), 
//        .in_ans2(in_ans2), 
//        .in_ans3(in_ans3), 
//        .out_Anum(out_Anum), 
//        .out_Bnum(out_Bnum), 
//        .out_state(out_state), 
//        .out_valid(out_valid)
//    );
	
	// modify
	    top uut (
        .in_clka(in_clka), 
        .in_clkb(in_clkb),
		.in_loadtest(in_loadtest),
		.in_enter(in_enter),
		.in_restart(in_restart),
        .in_ans0(in_ans0), 
        .in_ans1(in_ans1), 
        .in_ans2(in_ans2), 
        .in_ans3(in_ans3), 
        .out_Anum(out_Anum), 
        .out_Bnum(out_Bnum), 
        .out_state(out_state), 
        .out_valid(out_valid)
    );

    // Clock Generation
    initial begin
        in_clka = 0;
        in_clkb = 0;
        forever begin
            #5 in_clka = ~in_clka;  // 100 MHz Clock
            #10 in_clkb = ~in_clkb; // 50 MHz Clock
        end
    end

    // Test Stimulus
    initial begin
        // Initialize Inputs
        in_loadtest = 0;
        in_restart = 1;
		in_enter = 0;
        in_ans0 = 0;
        in_ans1 = 0;
        in_ans2 = 0;
        in_ans3 = 0;

        // Wait for global reset
        #100;
        in_restart = 0;

        // Load Test
        #50;
		
		// Test the IDLE to TEMP_TEST transition
		in_loadtest = 1; #20; in_loadtest = 0; #40;
		
		// Test TEMP_TEST to WAIT transition
		in_enter = 1; #20; in_enter = 0; #40;		
		
        in_ans0 = 2;
        in_ans1 = 3;
        in_ans2 = 4;
        in_ans3 = 5;


        // More cycles to observe behaviors
        #200;

        // Test the IDLE to TEMP_TEST transition
		in_loadtest = 1; #20; in_loadtest = 0; #40;


        // Test TEMP_TEST to WAIT transition
		in_enter = 1; #20; in_enter = 0; #40;		
		
        in_ans0 = 5;
        in_ans1 = 4;
        in_ans2 = 3;
        in_ans3 = 2;


        // More cycles to observe behaviors
        #200;


        // Test the IDLE to TEMP_TEST transition
		in_loadtest = 1; #20; in_loadtest = 0; #40;


        // Test TEMP_TEST to WAIT transition
		in_enter = 1; #20; in_enter = 0; #40;		
		
        in_ans0 = 5;
        in_ans1 = 4;
        in_ans2 = 2;
        in_ans3 = 3;


        // More cycles to observe behaviors
        #200;

        // Test the IDLE to TEMP_TEST transition
		in_loadtest = 1; #20; in_loadtest = 0; #40;


        // Test TEMP_TEST to WAIT transition
		in_enter = 1; #20; in_enter = 0; #40;		
		
        in_ans0 = 5;
        in_ans1 = 4;
        in_ans2 = 2;
        in_ans3 = 8;


        // More cycles to observe behaviors
        #200;

        // Another reset test
        #50;
        in_restart = 1;
        #50;
        in_restart = 0;

        // End of Test
        #100;
        $finish;
    end
      
endmodule
