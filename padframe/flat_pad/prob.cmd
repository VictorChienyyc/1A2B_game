vector state out_state\[1\] out_state\[0\]
vector in_newX in_newX\[3\] in_newX\[2\] in_newX\[1\] in_newX\[0\] 
vector in_newY in_newY\[3\] in_newY\[2\] in_newY\[1\] in_newY\[0\]
vector out_DO out_DO\[3\] out_DO\[2\] out_DO\[1\] out_DO\[0\] 

ana in_clka in_clkb in_restart in_start_load in_start_accum out_state\[1\] out_state\[0\]
ana in_newX\[3\] in_newX\[2\] in_newX\[1\] in_newX\[0\] in_newX
ana in_newY\[3\] in_newY\[2\] in_newY\[1\] in_newY\[0\] in_newY
ana out_DO\[3\] out_DO\[2\] out_DO\[1\] out_DO\[0\] out_DO

V in_restart         1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 1
V in_start_load      0 1 1 1 1 0 0 0 0 0 1 1 1 0 0 0 1 1 1 0 0 0 0
V in_start_accum     0 0 0 0 0 1 1 1 1 1 0 0 0 1 1 1 0 0 0 1 1 1 1
V in_newX\[3\]       0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
V in_newX\[2\]       0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 
V in_newX\[1\]       0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0
V in_newX\[0\]       0 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 0 0

V in_newY\[3\]       0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V in_newY\[2\]       0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1
V in_newY\[1\]       0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0
V in_newY\[0\]       0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0 0

clock in_clka    0 1 0 0 
clock in_clkb    0 0 0 1 
R
~

