module top (
    in_clka, in_clkb, in_loadtest, in_enter, in_restart, 
    in_ans0, in_ans1, in_ans2, in_ans3, 
    out_Anum, out_Bnum, out_state, out_valid
);

    input wire in_clka, in_clkb, in_loadtest, in_enter, in_restart;
    input wire [3:0]  in_ans0, in_ans1, in_ans2, in_ans3;
    output wire [2:0] out_Anum, out_Bnum;
    output wire [2:0] out_state;  
    output wire out_valid;

	wire out_save_test, out_reset;

    // Instantiate the main_FSM
    main_FSM main_fsm (
        .clka(in_clka),
        .clkb(in_clkb),
        .loadtest(in_loadtest),
        .enter(in_enter),
        .restart(in_restart),
        .dp_same(dp_same), 
        .dp_input_error(dp_input_error),
        .same(same),  
        .input_error(input_error),
        .save_test(out_save_test),
		.reset(out_reset),
        .state(out_state)
    );

    // Instantiate the dp module
    dp dp (
        .clka(in_clka),
        .clkb(in_clkb),
        .ans0(in_ans0),
        .ans1(in_ans1),
        .ans2(in_ans2),
        .ans3(in_ans3),
        .reset(out_reset),
        .save_test(out_save_test),
        .valid(out_valid),
        .dp_same(dp_same),  
        .dp_input_error(dp_input_error),  
        .Anum(out_Anum),
        .Bnum(out_Bnum)
    );

endmodule
