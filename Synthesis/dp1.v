// Combined file including both prng and dp modules
module prng(
    input clka,
    input reset,
  	output reg [3:0] random_num
);

reg [7:0] random;
// From Xilinx File, to perform PRNG
wire feedback = random[7] ^ random[5] ^ random[4] ^ random[3];

always @(negedge clka) begin
    if (reset) begin
        // Initialize the LFSR with a non-zero value to ensure proper operation
        random <= 8'b1111_1111;
    end else begin
        // Shift the register to the left and insert the feedback value into the lowest bit
        random <= {random[6:0], feedback};
        // Adjust the value of random_num to 0-9
        random_num <= random % 10;
    end
end

endmodule



////////////////////////////////////////////////////////////////////////////////////////////////////////

module dp (clka, clkb, ans0, ans1, ans2, ans3, reset, save_test, valid, dp_same, dp_input_error, Anum, Bnum);
//-----------Input Ports---------------
input clka, clkb, reset, save_test;
input wire [3:0] ans0, ans1, ans2, ans3;
//-----------Output Ports---------------
output valid, dp_same, dp_input_error;
output wire [2:0] Anum, Bnum;
wire dp_input_error, dp_same;
reg valid;
//------------Internal Variables--------
// reg  temp_A, temp_B, temp_C, temp_D;
// reg  pattern_A, pattern_B, test_C, test_D;

reg  [3:0] num0, num1, num2, num3;
reg  [3:0] temp0, temp1, temp2, temp3;
wire [3:0] random_num;
//-------------Code Starts Here---------
prng prng_inst(.clka(clka), .reset(reset), .random_num(random_num));
    
reg [3:0] count; 


always @(negedge clka)
begin
    if (reset) begin
        count <= 0;
        valid <= 0;
        num0 <= 4'b0000;
        num1 <= 4'b0000;
        num2 <= 4'b0000;
        num3 <= 4'b0000;
    end 
    else if (save_test) begin
        case (count)
            0: begin
                count <= count + 1;
            end
            1: begin
                num0 <= random_num;
                count <= count + 1;
            end
            2: if (random_num != num0) begin
                num1 <= random_num;
                count <= count + 1;
            end
            3: if (random_num != num0 && random_num != num1) begin
                num2 <= random_num;
                count <= count + 1;
            end
            4: if (random_num != num0 && random_num != num1 && random_num != num2) begin
                num3 <= random_num;
                count <= count + 1;
                valid <= 1;
            end
            default: begin
                count <= count;
                valid <= 0;
            end
        endcase
    end
end


always @(negedge clkb)
begin
if (reset)
    begin
        temp0 <= 4'b0000;
        temp1 <= 4'b0000;
        temp2 <= 4'b0000;
        temp3 <= 4'b0000;
    end
else if (count == 5)
    begin
        temp0 <= ans0;
        temp1 <= ans1;
        temp2 <= ans2;
        temp3 <= ans3;
    end
end

assign Anum = (num0 == temp0) + (num1 == temp1) + (num2 == temp2) + (num3 == temp3);
assign Bnum = ((num0 == temp1 || num0 == temp2 || num0 == temp3) ? 1 : 0) +
              ((num1 == temp0 || num1 == temp2 || num1 == temp3) ? 1 : 0) +
              ((num2 == temp0 || num2 == temp1 || num2 == temp3) ? 1 : 0) +
              ((num3 == temp0 || num3 == temp1 || num3 == temp2) ? 1 : 0);
assign dp_input_error = (ans0 == ans1) || (ans0 == ans2) || (ans0 == ans3) || (ans1 == ans2) || (ans1 == ans3) || (ans2 == ans3);
assign dp_same = (Anum == 4) && (Bnum == 0);

endmodule //End Of Module dp  datapath
