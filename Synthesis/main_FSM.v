module main_FSM (clka, clkb, loadtest, enter, restart, dp_same, dp_input_error, same, input_error, save_test, reset, state);
//-------------Input Ports-----------------------------
input   clka, clkb, loadtest, enter, restart, dp_same, dp_input_error;
//-------------Output Ports----------------------------
output  same, input_error, save_test, reset, state;
//-------------Input ports Data Type-------------------
wire    clka, clkb, loadtest, enter, restart, dp_same, dp_input_error;
//-------------Output Ports Data Type------------------
reg     same, input_error, save_test, reset;
reg     [1:0] state;

//——————Internal Constants--------------------------
parameter SIZE = 2;
parameter IDLE  = 2'b00, TEMP_TEST = 2'b01, WAIT = 2'b11;



// Internal Variables
reg [SIZE-1:0] next_state;

// Combinational Logic for determining next state
always @(*) begin
    case (state)
        IDLE:
            if (1)
                next_state = TEMP_TEST;
            else
                next_state = IDLE;
        TEMP_TEST:
            if (enter)
                next_state = WAIT;
            else
                next_state = TEMP_TEST;
        WAIT:
            if (1)
                next_state = TEMP_TEST;
            else if (1)
                next_state = IDLE;
            else
                next_state = WAIT;
        default:
                next_state = IDLE;
    endcase
end


//----------Seq Logic-----------------------------
always @ (negedge clka)
begin
  if (restart) begin
    state <= IDLE;
  end else begin
    state <= next_state;
  end
end


//----------Output Logic——————————————
always @ (negedge clkb)
begin
  case(state)
  IDLE: begin
		  reset <= 1'b1;
          same  <= 1'b0;
          input_error <= 1'b0;
          save_test <= 1'b0;
        end
  TEMP_TEST: begin
		      reset <= 1'b0;
          save_test <= 1'b1;
        end
  WAIT: begin
          reset <= 1'b0;
          same  <= dp_same;
          input_error <= dp_input_error;
          end

  default: begin
		  reset <= 1'b1;
          same  <= 1'b0;
          input_error <= 1'b0;
          save_test <= 1'b0;
         end
  endcase

end // End Of Block OUTPUT_LOGIC

endmodule // End of Module main_FSM





