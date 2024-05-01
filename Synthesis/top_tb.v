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
    wire [1:0] out_state;
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
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10

        // Wait for global reset
        in_restart = 0;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10

        // Load Test
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		// Test the IDLE to TEMP_TEST transition
		in_loadtest = 1;  
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_loadtest = 0; 
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		
		// Test TEMP_TEST to WAIT transition
		in_enter = 1; 
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		
		in_enter = 0; 
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		
        in_ans0 = 2;
        in_ans1 = 3;
        in_ans2 = 4;
        in_ans3 = 5;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10


        // More cycles to observe behaviors
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
//--------------------
        // Test the IDLE to TEMP_TEST transition
		in_loadtest = 1;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10

		in_loadtest = 0; 
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10


        // Test TEMP_TEST to WAIT transition
		in_enter = 1; 
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		
		in_enter = 0; 
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10		
		
        in_ans0 = 5;
        in_ans1 = 4;
        in_ans2 = 3;
        in_ans3 = 2;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10


        // More cycles to observe behaviors
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10


        // Test the IDLE to TEMP_TEST transition
		in_loadtest = 1; 
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10

		in_loadtest = 0; 
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10


        // Test TEMP_TEST to WAIT transition
		in_enter = 1; 
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10

		in_enter = 0; 
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		
        in_ans0 = 5;
        in_ans1 = 4;
        in_ans2 = 2;
        in_ans3 = 3;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10


        // More cycles to observe behaviors
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10

        // Test the IDLE to TEMP_TEST transition
		in_loadtest = 1; 
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10

		in_loadtest = 0; 
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10


        // Test TEMP_TEST to WAIT transition
		in_enter = 1; 
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10


		in_enter = 0; 
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10		
		
        in_ans0 = 5;
        in_ans1 = 4;
        in_ans2 = 2;
        in_ans3 = 8;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10


        // More cycles to observe behaviors
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
	
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10

        // Another reset test
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		
        in_restart = 1;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10


        in_restart = 0;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10

        // End of Test
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10
		
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 1; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 0; #10;
		in_clka = 0; in_clkb = 1; #10;

    end
      
endmodule

