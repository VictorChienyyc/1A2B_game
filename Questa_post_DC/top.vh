/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Apr 30 17:14:37 2024
/////////////////////////////////////////////////////////////


module top ( in_clka, in_clkb, in_enter, in_restart, in_ans0, in_ans1, in_ans2, 
        in_ans3, out_Anum, out_Bnum, out_state, out_valid );
  input [3:0] in_ans0;
  input [3:0] in_ans1;
  input [3:0] in_ans2;
  input [3:0] in_ans3;
  output [2:0] out_Anum;
  output [2:0] out_Bnum;
  output [1:0] out_state;
  input in_clka, in_clkb, in_enter, in_restart;
  output out_valid;
  wire   out_save_test, out_reset, \main_fsm/n12 , \main_fsm/n10 ,
         \main_fsm/n9 , \main_fsm/N20 , \dp/n423 , \dp/n422 , \dp/n421 ,
         \dp/n420 , \dp/n419 , \dp/n418 , \dp/n417 , \dp/n416 , \dp/n415 ,
         \dp/n414 , \dp/n413 , \dp/n412 , \dp/n411 , \dp/n410 , \dp/n409 ,
         \dp/n408 , \dp/n407 , \dp/n406 , \dp/n405 , \dp/n404 , \dp/n403 ,
         \dp/n402 , \dp/n401 , \dp/n400 , \dp/n399 , \dp/n398 , \dp/n397 ,
         \dp/n396 , \dp/n395 , \dp/n394 , \dp/n393 , \dp/n392 , \dp/n391 ,
         \dp/n390 , \dp/n389 , \dp/n388 , \dp/n387 , \dp/n386 , \dp/n385 ,
         \dp/n384 , \dp/n383 , \dp/n382 , \dp/n381 , \dp/n380 , \dp/n379 ,
         \dp/n378 , \dp/n377 , \dp/n376 , \dp/n375 , \dp/n374 , \dp/n373 ,
         \dp/n372 , \dp/n371 , \dp/n370 , \dp/n369 , \dp/n368 , \dp/n367 ,
         \dp/n366 , \dp/n365 , \dp/n364 , \dp/n363 , \dp/n362 , \dp/n361 ,
         \dp/n360 , \dp/n359 , \dp/n358 , \dp/n357 , \dp/n356 , \dp/n355 ,
         \dp/n354 , \dp/n353 , \dp/n352 , \dp/n351 , \dp/n350 , \dp/n349 ,
         \dp/n348 , \dp/n347 , \dp/n346 , \dp/n345 , \dp/n344 , \dp/n343 ,
         \dp/n342 , \dp/n341 , \dp/n340 , \dp/n339 , \dp/n338 , \dp/n337 ,
         \dp/n336 , \dp/n335 , \dp/n334 , \dp/n333 , \dp/n332 , \dp/n331 ,
         \dp/n330 , \dp/n329 , \dp/n328 , \dp/n327 , \dp/n326 , \dp/n325 ,
         \dp/n324 , \dp/n323 , \dp/n322 , \dp/n321 , \dp/n320 , \dp/n319 ,
         \dp/n318 , \dp/n317 , \dp/n316 , \dp/n315 , \dp/n314 , \dp/n313 ,
         \dp/n312 , \dp/n311 , \dp/n310 , \dp/n309 , \dp/n308 , \dp/n307 ,
         \dp/n306 , \dp/n305 , \dp/n304 , \dp/n303 , \dp/n302 , \dp/n301 ,
         \dp/n300 , \dp/n299 , \dp/n298 , \dp/n297 , \dp/n296 , \dp/n295 ,
         \dp/n294 , \dp/n293 , \dp/n292 , \dp/n291 , \dp/n290 , \dp/n289 ,
         \dp/n249 , \dp/n246 , \dp/n245 , \dp/n244 , \dp/n243 , \dp/n242 ,
         \dp/n241 , \dp/n240 , \dp/n239 , \dp/n238 , \dp/n237 , \dp/n236 ,
         \dp/n235 , \dp/n234 , \dp/n233 , \dp/n232 , \dp/n231 , \dp/n230 ,
         \dp/n229 , \dp/n228 , \dp/n227 , \dp/n226 , \dp/n225 , \dp/n224 ,
         \dp/n223 , \dp/n222 , \dp/n221 , \dp/n220 , \dp/n219 , \dp/n218 ,
         \dp/dp_cluster_1/N122 , \dp/dp_cluster_1/N123 ,
         \dp/dp_cluster_0/N139 , \dp/match3_others , \dp/match2_others ,
         \dp/match1_others , \dp/match0_others , \dp/prng_inst/n6 ,
         \dp/prng_inst/n5 , \dp/prng_inst/n4 , \dp/prng_inst/n3 ,
         \dp/prng_inst/n2 , \dp/prng_inst/n1 , \dp/prng_inst/feedback ,
         \dp/prng_inst/rem_20/u_div/SumTmp[4][3] ,
         \dp/prng_inst/rem_20/u_div/SumTmp[4][2] ,
         \dp/prng_inst/rem_20/u_div/SumTmp[3][3] ,
         \dp/prng_inst/rem_20/u_div/SumTmp[3][2] ,
         \dp/prng_inst/rem_20/u_div/SumTmp[2][3] ,
         \dp/prng_inst/rem_20/u_div/SumTmp[2][2] ,
         \dp/prng_inst/rem_20/u_div/SumTmp[1][3] ,
         \dp/prng_inst/rem_20/u_div/SumTmp[1][2] ,
         \dp/prng_inst/rem_20/u_div/SumTmp[0][3] ,
         \dp/prng_inst/rem_20/u_div/SumTmp[0][2] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131;
  wire   [3:0] \dp/temp3 ;
  wire   [3:0] \dp/temp2 ;
  wire   [3:0] \dp/temp1 ;
  wire   [3:0] \dp/temp0 ;
  wire   [3:0] \dp/num3 ;
  wire   [3:0] \dp/num2 ;
  wire   [3:0] \dp/num1 ;
  wire   [3:0] \dp/num0 ;
  wire   [3:0] \dp/count ;
  wire   [3:0] \dp/random_num ;
  wire   [7:0] \dp/prng_inst/random ;
  wire   [7:0] \dp/prng_inst/rem_20/quotient ;

  AOI21X1 \main_fsm/U15  ( .A(out_state[1]), .B(n45), .C(in_restart), .Y(
        \main_fsm/N20 ) );
  NOR2X1 \main_fsm/U14  ( .A(n45), .B(out_state[1]), .Y(\main_fsm/n9 ) );
  NAND3X1 \main_fsm/U13  ( .A(\main_fsm/n9 ), .B(n13), .C(in_enter), .Y(
        \main_fsm/n12 ) );
  AOI21X1 \main_fsm/U10  ( .A(out_state[0]), .B(out_save_test), .C(
        \main_fsm/n9 ), .Y(\main_fsm/n10 ) );
  DFFNEGX1 \main_fsm/reset_reg  ( .D(n45), .CLK(n3), .Q(out_reset) );
  DFFNEGX1 \main_fsm/save_test_reg  ( .D(n44), .CLK(n3), .Q(out_save_test) );
  DFFNEGX1 \main_fsm/state_reg[1]  ( .D(n12), .CLK(in_clka), .Q(out_state[1])
         );
  DFFNEGX1 \main_fsm/state_reg[0]  ( .D(\main_fsm/N20 ), .CLK(n8), .Q(
        out_state[0]) );
  XNOR2X1 \dp/U291  ( .A(\dp/num3 [1]), .B(\dp/temp3 [1]), .Y(\dp/n384 ) );
  XNOR2X1 \dp/U290  ( .A(\dp/num3 [2]), .B(\dp/temp3 [2]), .Y(\dp/n385 ) );
  XNOR2X1 \dp/U289  ( .A(n68), .B(\dp/num3 [3]), .Y(\dp/n387 ) );
  XNOR2X1 \dp/U288  ( .A(n65), .B(\dp/num3 [0]), .Y(\dp/n388 ) );
  NOR2X1 \dp/U287  ( .A(\dp/n387 ), .B(\dp/n388 ), .Y(\dp/n386 ) );
  NAND3X1 \dp/U286  ( .A(\dp/n384 ), .B(\dp/n385 ), .C(\dp/n386 ), .Y(
        \dp/n368 ) );
  XNOR2X1 \dp/U285  ( .A(\dp/num0 [1]), .B(\dp/temp0 [1]), .Y(\dp/n379 ) );
  XNOR2X1 \dp/U284  ( .A(\dp/num0 [2]), .B(\dp/temp0 [2]), .Y(\dp/n380 ) );
  XNOR2X1 \dp/U283  ( .A(n63), .B(\dp/num0 [3]), .Y(\dp/n382 ) );
  XNOR2X1 \dp/U282  ( .A(n60), .B(\dp/num0 [0]), .Y(\dp/n383 ) );
  NOR2X1 \dp/U281  ( .A(\dp/n382 ), .B(\dp/n383 ), .Y(\dp/n381 ) );
  NAND3X1 \dp/U280  ( .A(\dp/n379 ), .B(\dp/n380 ), .C(\dp/n381 ), .Y(
        \dp/n365 ) );
  XNOR2X1 \dp/U279  ( .A(\dp/num2 [1]), .B(\dp/temp2 [1]), .Y(\dp/n374 ) );
  XNOR2X1 \dp/U278  ( .A(\dp/num2 [2]), .B(\dp/temp2 [2]), .Y(\dp/n375 ) );
  XNOR2X1 \dp/U277  ( .A(n53), .B(\dp/num2 [3]), .Y(\dp/n377 ) );
  XNOR2X1 \dp/U276  ( .A(n50), .B(\dp/num2 [0]), .Y(\dp/n378 ) );
  NOR2X1 \dp/U275  ( .A(\dp/n377 ), .B(\dp/n378 ), .Y(\dp/n376 ) );
  NAND3X1 \dp/U274  ( .A(\dp/n374 ), .B(\dp/n375 ), .C(\dp/n376 ), .Y(
        \dp/n366 ) );
  XNOR2X1 \dp/U273  ( .A(\dp/num1 [1]), .B(\dp/temp1 [1]), .Y(\dp/n369 ) );
  XNOR2X1 \dp/U272  ( .A(\dp/num1 [2]), .B(\dp/temp1 [2]), .Y(\dp/n370 ) );
  XNOR2X1 \dp/U271  ( .A(n58), .B(\dp/num1 [3]), .Y(\dp/n372 ) );
  XNOR2X1 \dp/U270  ( .A(n55), .B(\dp/num1 [0]), .Y(\dp/n373 ) );
  NOR2X1 \dp/U269  ( .A(\dp/n372 ), .B(\dp/n373 ), .Y(\dp/n371 ) );
  NAND3X1 \dp/U268  ( .A(\dp/n369 ), .B(\dp/n370 ), .C(\dp/n371 ), .Y(
        \dp/n367 ) );
  XNOR2X1 \dp/U267  ( .A(n48), .B(n54), .Y(\dp/n364 ) );
  XNOR2X1 \dp/U266  ( .A(n59), .B(\dp/n364 ), .Y(\dp/dp_cluster_1/N122 ) );
  XNOR2X1 \dp/U265  ( .A(\dp/n368 ), .B(\dp/dp_cluster_1/N122 ), .Y(
        out_Anum[0]) );
  NAND2X1 \dp/U264  ( .A(n64), .B(\dp/dp_cluster_1/N122 ), .Y(\dp/n363 ) );
  OAI22X1 \dp/U263  ( .A(\dp/n364 ), .B(\dp/n365 ), .C(\dp/n366 ), .D(
        \dp/n367 ), .Y(\dp/dp_cluster_1/N123 ) );
  XNOR2X1 \dp/U262  ( .A(\dp/n363 ), .B(\dp/dp_cluster_1/N123 ), .Y(
        out_Anum[1]) );
  NAND3X1 \dp/U261  ( .A(\dp/dp_cluster_1/N122 ), .B(\dp/dp_cluster_1/N123 ), 
        .C(n64), .Y(\dp/n249 ) );
  XNOR2X1 \dp/U260  ( .A(\dp/num0 [0]), .B(\dp/temp1 [0]), .Y(\dp/n361 ) );
  XNOR2X1 \dp/U259  ( .A(\dp/num0 [3]), .B(\dp/temp1 [3]), .Y(\dp/n362 ) );
  NAND2X1 \dp/U258  ( .A(\dp/n361 ), .B(\dp/n362 ), .Y(\dp/n344 ) );
  XNOR2X1 \dp/U257  ( .A(\dp/num0 [1]), .B(\dp/temp1 [1]), .Y(\dp/n359 ) );
  XNOR2X1 \dp/U256  ( .A(\dp/num0 [2]), .B(\dp/temp1 [2]), .Y(\dp/n360 ) );
  NAND2X1 \dp/U255  ( .A(\dp/n359 ), .B(\dp/n360 ), .Y(\dp/n345 ) );
  XNOR2X1 \dp/U254  ( .A(n67), .B(\dp/num0 [2]), .Y(\dp/n357 ) );
  XNOR2X1 \dp/U253  ( .A(n66), .B(\dp/num0 [1]), .Y(\dp/n358 ) );
  NOR2X1 \dp/U252  ( .A(\dp/n357 ), .B(\dp/n358 ), .Y(\dp/n347 ) );
  XNOR2X1 \dp/U251  ( .A(n68), .B(\dp/num0 [3]), .Y(\dp/n355 ) );
  XNOR2X1 \dp/U250  ( .A(n65), .B(\dp/num0 [0]), .Y(\dp/n356 ) );
  NOR2X1 \dp/U249  ( .A(\dp/n355 ), .B(\dp/n356 ), .Y(\dp/n348 ) );
  XNOR2X1 \dp/U248  ( .A(n52), .B(\dp/num0 [2]), .Y(\dp/n353 ) );
  XNOR2X1 \dp/U247  ( .A(n51), .B(\dp/num0 [1]), .Y(\dp/n354 ) );
  NOR2X1 \dp/U246  ( .A(\dp/n353 ), .B(\dp/n354 ), .Y(\dp/n349 ) );
  XNOR2X1 \dp/U245  ( .A(n53), .B(\dp/num0 [3]), .Y(\dp/n351 ) );
  XNOR2X1 \dp/U244  ( .A(n50), .B(\dp/num0 [0]), .Y(\dp/n352 ) );
  NOR2X1 \dp/U243  ( .A(\dp/n351 ), .B(\dp/n352 ), .Y(\dp/n350 ) );
  AOI22X1 \dp/U242  ( .A(\dp/n347 ), .B(\dp/n348 ), .C(\dp/n349 ), .D(
        \dp/n350 ), .Y(\dp/n346 ) );
  OAI21X1 \dp/U241  ( .A(\dp/n344 ), .B(\dp/n345 ), .C(\dp/n346 ), .Y(
        \dp/match0_others ) );
  XNOR2X1 \dp/U240  ( .A(\dp/num1 [0]), .B(\dp/temp0 [0]), .Y(\dp/n342 ) );
  XNOR2X1 \dp/U239  ( .A(\dp/num1 [3]), .B(\dp/temp0 [3]), .Y(\dp/n343 ) );
  NAND2X1 \dp/U238  ( .A(\dp/n342 ), .B(\dp/n343 ), .Y(\dp/n325 ) );
  XNOR2X1 \dp/U237  ( .A(\dp/num1 [1]), .B(\dp/temp0 [1]), .Y(\dp/n340 ) );
  XNOR2X1 \dp/U236  ( .A(\dp/num1 [2]), .B(\dp/temp0 [2]), .Y(\dp/n341 ) );
  NAND2X1 \dp/U235  ( .A(\dp/n340 ), .B(\dp/n341 ), .Y(\dp/n326 ) );
  XNOR2X1 \dp/U234  ( .A(n67), .B(\dp/num1 [2]), .Y(\dp/n338 ) );
  XNOR2X1 \dp/U233  ( .A(n66), .B(\dp/num1 [1]), .Y(\dp/n339 ) );
  NOR2X1 \dp/U232  ( .A(\dp/n338 ), .B(\dp/n339 ), .Y(\dp/n328 ) );
  XNOR2X1 \dp/U231  ( .A(n68), .B(\dp/num1 [3]), .Y(\dp/n336 ) );
  XNOR2X1 \dp/U230  ( .A(n65), .B(\dp/num1 [0]), .Y(\dp/n337 ) );
  NOR2X1 \dp/U229  ( .A(\dp/n336 ), .B(\dp/n337 ), .Y(\dp/n329 ) );
  XNOR2X1 \dp/U228  ( .A(n52), .B(\dp/num1 [2]), .Y(\dp/n334 ) );
  XNOR2X1 \dp/U227  ( .A(n51), .B(\dp/num1 [1]), .Y(\dp/n335 ) );
  NOR2X1 \dp/U226  ( .A(\dp/n334 ), .B(\dp/n335 ), .Y(\dp/n330 ) );
  XNOR2X1 \dp/U225  ( .A(n53), .B(\dp/num1 [3]), .Y(\dp/n332 ) );
  XNOR2X1 \dp/U224  ( .A(n50), .B(\dp/num1 [0]), .Y(\dp/n333 ) );
  NOR2X1 \dp/U223  ( .A(\dp/n332 ), .B(\dp/n333 ), .Y(\dp/n331 ) );
  AOI22X1 \dp/U222  ( .A(\dp/n328 ), .B(\dp/n329 ), .C(\dp/n330 ), .D(
        \dp/n331 ), .Y(\dp/n327 ) );
  OAI21X1 \dp/U221  ( .A(\dp/n325 ), .B(\dp/n326 ), .C(\dp/n327 ), .Y(
        \dp/match1_others ) );
  XNOR2X1 \dp/U220  ( .A(\dp/num2 [0]), .B(\dp/temp0 [0]), .Y(\dp/n323 ) );
  XNOR2X1 \dp/U219  ( .A(\dp/num2 [3]), .B(\dp/temp0 [3]), .Y(\dp/n324 ) );
  NAND2X1 \dp/U218  ( .A(\dp/n323 ), .B(\dp/n324 ), .Y(\dp/n306 ) );
  XNOR2X1 \dp/U217  ( .A(\dp/num2 [1]), .B(\dp/temp0 [1]), .Y(\dp/n321 ) );
  XNOR2X1 \dp/U216  ( .A(\dp/num2 [2]), .B(\dp/temp0 [2]), .Y(\dp/n322 ) );
  NAND2X1 \dp/U215  ( .A(\dp/n321 ), .B(\dp/n322 ), .Y(\dp/n307 ) );
  XNOR2X1 \dp/U214  ( .A(n67), .B(\dp/num2 [2]), .Y(\dp/n319 ) );
  XNOR2X1 \dp/U213  ( .A(n66), .B(\dp/num2 [1]), .Y(\dp/n320 ) );
  NOR2X1 \dp/U212  ( .A(\dp/n319 ), .B(\dp/n320 ), .Y(\dp/n309 ) );
  XNOR2X1 \dp/U211  ( .A(n68), .B(\dp/num2 [3]), .Y(\dp/n317 ) );
  XNOR2X1 \dp/U210  ( .A(n65), .B(\dp/num2 [0]), .Y(\dp/n318 ) );
  NOR2X1 \dp/U209  ( .A(\dp/n317 ), .B(\dp/n318 ), .Y(\dp/n310 ) );
  XNOR2X1 \dp/U208  ( .A(n57), .B(\dp/num2 [2]), .Y(\dp/n315 ) );
  XNOR2X1 \dp/U207  ( .A(n56), .B(\dp/num2 [1]), .Y(\dp/n316 ) );
  NOR2X1 \dp/U206  ( .A(\dp/n315 ), .B(\dp/n316 ), .Y(\dp/n311 ) );
  XNOR2X1 \dp/U205  ( .A(n58), .B(\dp/num2 [3]), .Y(\dp/n313 ) );
  XNOR2X1 \dp/U204  ( .A(n55), .B(\dp/num2 [0]), .Y(\dp/n314 ) );
  NOR2X1 \dp/U203  ( .A(\dp/n313 ), .B(\dp/n314 ), .Y(\dp/n312 ) );
  AOI22X1 \dp/U202  ( .A(\dp/n309 ), .B(\dp/n310 ), .C(\dp/n311 ), .D(
        \dp/n312 ), .Y(\dp/n308 ) );
  OAI21X1 \dp/U201  ( .A(\dp/n306 ), .B(\dp/n307 ), .C(\dp/n308 ), .Y(
        \dp/match2_others ) );
  XOR2X1 \dp/U200  ( .A(\dp/match1_others ), .B(\dp/match2_others ), .Y(
        \dp/n292 ) );
  XOR2X1 \dp/U199  ( .A(\dp/match0_others ), .B(\dp/n292 ), .Y(
        \dp/dp_cluster_0/N139 ) );
  XNOR2X1 \dp/U198  ( .A(\dp/num3 [0]), .B(\dp/temp0 [0]), .Y(\dp/n304 ) );
  XNOR2X1 \dp/U197  ( .A(\dp/num3 [3]), .B(\dp/temp0 [3]), .Y(\dp/n305 ) );
  NAND2X1 \dp/U196  ( .A(\dp/n304 ), .B(\dp/n305 ), .Y(\dp/n293 ) );
  XNOR2X1 \dp/U195  ( .A(\dp/num3 [1]), .B(\dp/temp0 [1]), .Y(\dp/n302 ) );
  XNOR2X1 \dp/U194  ( .A(\dp/num3 [2]), .B(\dp/temp0 [2]), .Y(\dp/n303 ) );
  NAND2X1 \dp/U193  ( .A(\dp/n302 ), .B(\dp/n303 ), .Y(\dp/n294 ) );
  XNOR2X1 \dp/U192  ( .A(n57), .B(\dp/num3 [2]), .Y(\dp/n300 ) );
  XNOR2X1 \dp/U191  ( .A(n56), .B(\dp/num3 [1]), .Y(\dp/n301 ) );
  NOR2X1 \dp/U190  ( .A(\dp/n300 ), .B(\dp/n301 ), .Y(\dp/n296 ) );
  XNOR2X1 \dp/U189  ( .A(n58), .B(\dp/num3 [3]), .Y(\dp/n298 ) );
  XNOR2X1 \dp/U188  ( .A(n55), .B(\dp/num3 [0]), .Y(\dp/n299 ) );
  NOR2X1 \dp/U187  ( .A(\dp/n298 ), .B(\dp/n299 ), .Y(\dp/n297 ) );
  AOI21X1 \dp/U186  ( .A(\dp/n296 ), .B(\dp/n297 ), .C(n48), .Y(\dp/n295 ) );
  OAI21X1 \dp/U185  ( .A(\dp/n293 ), .B(\dp/n294 ), .C(\dp/n295 ), .Y(
        \dp/match3_others ) );
  XOR2X1 \dp/U184  ( .A(\dp/dp_cluster_0/N139 ), .B(\dp/match3_others ), .Y(
        out_Bnum[0]) );
  NAND2X1 \dp/U183  ( .A(\dp/dp_cluster_0/N139 ), .B(\dp/match3_others ), .Y(
        \dp/n290 ) );
  AOI22X1 \dp/U182  ( .A(\dp/match1_others ), .B(\dp/match2_others ), .C(
        \dp/match0_others ), .D(\dp/n292 ), .Y(\dp/n291 ) );
  XNOR2X1 \dp/U181  ( .A(\dp/n290 ), .B(n49), .Y(out_Bnum[1]) );
  NAND3X1 \dp/U180  ( .A(\dp/match3_others ), .B(n49), .C(
        \dp/dp_cluster_0/N139 ), .Y(\dp/n289 ) );
  NAND2X1 \dp/U136  ( .A(out_save_test), .B(n43), .Y(\dp/n238 ) );
  OAI21X1 \dp/U135  ( .A(\dp/count [0]), .B(\dp/count [1]), .C(\dp/count [2]), 
        .Y(\dp/n246 ) );
  OAI21X1 \dp/U134  ( .A(\dp/count [3]), .B(n87), .C(n37), .Y(\dp/n245 ) );
  OAI21X1 \dp/U133  ( .A(n37), .B(out_reset), .C(\dp/n245 ), .Y(\dp/n243 ) );
  NOR2X1 \dp/U132  ( .A(\dp/n243 ), .B(\dp/n238 ), .Y(\dp/n241 ) );
  AOI22X1 \dp/U131  ( .A(\dp/n243 ), .B(\dp/count [0]), .C(n88), .D(\dp/n241 ), 
        .Y(\dp/n244 ) );
  AOI21X1 \dp/U130  ( .A(n88), .B(n37), .C(\dp/n243 ), .Y(\dp/n239 ) );
  NOR2X1 \dp/U129  ( .A(n88), .B(\dp/count [1]), .Y(\dp/n219 ) );
  AOI22X1 \dp/U128  ( .A(n36), .B(\dp/count [1]), .C(\dp/n219 ), .D(\dp/n241 ), 
        .Y(\dp/n242 ) );
  NAND2X1 \dp/U127  ( .A(\dp/count [1]), .B(n86), .Y(\dp/n229 ) );
  NAND3X1 \dp/U126  ( .A(n85), .B(\dp/count [0]), .C(\dp/n241 ), .Y(\dp/n240 )
         );
  OAI21X1 \dp/U125  ( .A(\dp/n239 ), .B(n86), .C(\dp/n240 ), .Y(\dp/n422 ) );
  NOR2X1 \dp/U124  ( .A(\dp/n238 ), .B(\dp/count [3]), .Y(\dp/n231 ) );
  NOR2X1 \dp/U123  ( .A(\dp/count [1]), .B(\dp/count [0]), .Y(\dp/n237 ) );
  NAND3X1 \dp/U122  ( .A(\dp/n231 ), .B(\dp/count [2]), .C(\dp/n237 ), .Y(
        \dp/n222 ) );
  NAND2X1 \dp/U121  ( .A(n43), .B(\dp/n222 ), .Y(\dp/n236 ) );
  NAND2X1 \dp/U120  ( .A(\dp/random_num [0]), .B(n37), .Y(\dp/n228 ) );
  OAI22X1 \dp/U119  ( .A(\dp/n236 ), .B(n76), .C(n40), .D(\dp/n228 ), .Y(
        \dp/n421 ) );
  NAND2X1 \dp/U118  ( .A(\dp/random_num [3]), .B(n37), .Y(\dp/n227 ) );
  OAI22X1 \dp/U117  ( .A(\dp/n236 ), .B(n75), .C(n40), .D(\dp/n227 ), .Y(
        \dp/n420 ) );
  NAND2X1 \dp/U116  ( .A(\dp/random_num [2]), .B(n37), .Y(\dp/n226 ) );
  OAI22X1 \dp/U115  ( .A(\dp/n236 ), .B(n74), .C(n40), .D(\dp/n226 ), .Y(
        \dp/n419 ) );
  NAND2X1 \dp/U114  ( .A(\dp/random_num [1]), .B(n37), .Y(\dp/n225 ) );
  OAI22X1 \dp/U113  ( .A(\dp/n236 ), .B(n73), .C(n40), .D(\dp/n225 ), .Y(
        \dp/n418 ) );
  NAND2X1 \dp/U112  ( .A(\dp/n219 ), .B(n86), .Y(\dp/n235 ) );
  OAI21X1 \dp/U111  ( .A(n39), .B(\dp/n235 ), .C(n43), .Y(\dp/n234 ) );
  OAI22X1 \dp/U110  ( .A(\dp/n234 ), .B(n80), .C(n38), .D(\dp/n228 ), .Y(
        \dp/n417 ) );
  OAI22X1 \dp/U109  ( .A(\dp/n234 ), .B(n79), .C(n38), .D(\dp/n227 ), .Y(
        \dp/n416 ) );
  OAI22X1 \dp/U108  ( .A(\dp/n234 ), .B(n78), .C(n38), .D(\dp/n226 ), .Y(
        \dp/n415 ) );
  OAI22X1 \dp/U107  ( .A(\dp/n234 ), .B(n77), .C(n38), .D(\dp/n225 ), .Y(
        \dp/n414 ) );
  NAND2X1 \dp/U106  ( .A(\dp/n231 ), .B(n88), .Y(\dp/n233 ) );
  OAI21X1 \dp/U105  ( .A(\dp/n229 ), .B(\dp/n233 ), .C(n43), .Y(\dp/n232 ) );
  OAI22X1 \dp/U104  ( .A(\dp/n232 ), .B(n72), .C(n41), .D(\dp/n228 ), .Y(
        \dp/n413 ) );
  OAI22X1 \dp/U103  ( .A(\dp/n232 ), .B(n71), .C(n41), .D(\dp/n227 ), .Y(
        \dp/n412 ) );
  OAI22X1 \dp/U102  ( .A(\dp/n232 ), .B(n70), .C(n41), .D(\dp/n226 ), .Y(
        \dp/n411 ) );
  OAI22X1 \dp/U101  ( .A(\dp/n232 ), .B(n69), .C(n41), .D(\dp/n225 ), .Y(
        \dp/n410 ) );
  NAND2X1 \dp/U100  ( .A(\dp/n231 ), .B(\dp/count [0]), .Y(\dp/n230 ) );
  OAI21X1 \dp/U99  ( .A(\dp/n229 ), .B(\dp/n230 ), .C(n43), .Y(\dp/n224 ) );
  OAI22X1 \dp/U98  ( .A(\dp/n224 ), .B(n84), .C(n42), .D(\dp/n228 ), .Y(
        \dp/n409 ) );
  OAI22X1 \dp/U97  ( .A(\dp/n224 ), .B(n83), .C(n42), .D(\dp/n227 ), .Y(
        \dp/n408 ) );
  OAI22X1 \dp/U96  ( .A(\dp/n224 ), .B(n82), .C(n42), .D(\dp/n226 ), .Y(
        \dp/n407 ) );
  OAI22X1 \dp/U95  ( .A(\dp/n224 ), .B(n81), .C(n42), .D(\dp/n225 ), .Y(
        \dp/n406 ) );
  OAI21X1 \dp/U94  ( .A(\dp/count [2]), .B(\dp/count [3]), .C(n37), .Y(
        \dp/n223 ) );
  NAND3X1 \dp/U93  ( .A(\dp/n223 ), .B(n43), .C(out_valid), .Y(\dp/n221 ) );
  NAND2X1 \dp/U92  ( .A(\dp/n221 ), .B(\dp/n222 ), .Y(\dp/n405 ) );
  NOR2X1 \dp/U91  ( .A(out_reset), .B(\dp/count [3]), .Y(\dp/n220 ) );
  NAND3X1 \dp/U90  ( .A(\dp/count [2]), .B(\dp/n219 ), .C(\dp/n220 ), .Y(
        \dp/n218 ) );
  OAI22X1 \dp/U88  ( .A(n4), .B(n68), .C(n6), .D(n26), .Y(\dp/n404 ) );
  OAI22X1 \dp/U87  ( .A(n4), .B(n67), .C(n6), .D(n27), .Y(\dp/n403 ) );
  OAI22X1 \dp/U86  ( .A(n4), .B(n66), .C(n6), .D(n28), .Y(\dp/n402 ) );
  OAI22X1 \dp/U85  ( .A(n4), .B(n65), .C(n6), .D(n29), .Y(\dp/n401 ) );
  OAI22X1 \dp/U84  ( .A(n4), .B(n63), .C(n6), .D(n14), .Y(\dp/n400 ) );
  OAI22X1 \dp/U83  ( .A(n4), .B(n62), .C(n6), .D(n15), .Y(\dp/n399 ) );
  OAI22X1 \dp/U82  ( .A(n4), .B(n61), .C(n6), .D(n16), .Y(\dp/n398 ) );
  OAI22X1 \dp/U81  ( .A(n4), .B(n60), .C(n6), .D(n17), .Y(\dp/n397 ) );
  OAI22X1 \dp/U80  ( .A(n4), .B(n58), .C(n6), .D(n18), .Y(\dp/n396 ) );
  OAI22X1 \dp/U79  ( .A(n4), .B(n57), .C(n6), .D(n19), .Y(\dp/n395 ) );
  OAI22X1 \dp/U78  ( .A(n4), .B(n56), .C(n6), .D(n20), .Y(\dp/n394 ) );
  OAI22X1 \dp/U77  ( .A(n4), .B(n55), .C(n6), .D(n21), .Y(\dp/n393 ) );
  OAI22X1 \dp/U76  ( .A(n4), .B(n53), .C(n6), .D(n22), .Y(\dp/n392 ) );
  OAI22X1 \dp/U75  ( .A(n4), .B(n52), .C(n6), .D(n23), .Y(\dp/n391 ) );
  OAI22X1 \dp/U74  ( .A(n4), .B(n51), .C(n6), .D(n24), .Y(\dp/n390 ) );
  OAI22X1 \dp/U73  ( .A(n4), .B(n50), .C(n6), .D(n25), .Y(\dp/n389 ) );
  AND2X2 \dp/U3  ( .A(n36), .B(\dp/count [3]), .Y(\dp/n423 ) );
  DFFNEGX1 \dp/temp2_reg[0]  ( .D(\dp/n389 ), .CLK(n3), .Q(\dp/temp2 [0]) );
  DFFNEGX1 \dp/temp2_reg[1]  ( .D(\dp/n390 ), .CLK(n3), .Q(\dp/temp2 [1]) );
  DFFNEGX1 \dp/temp2_reg[2]  ( .D(\dp/n391 ), .CLK(n3), .Q(\dp/temp2 [2]) );
  DFFNEGX1 \dp/temp2_reg[3]  ( .D(\dp/n392 ), .CLK(n3), .Q(\dp/temp2 [3]) );
  DFFNEGX1 \dp/temp1_reg[0]  ( .D(\dp/n393 ), .CLK(n3), .Q(\dp/temp1 [0]) );
  DFFNEGX1 \dp/temp1_reg[1]  ( .D(\dp/n394 ), .CLK(n3), .Q(\dp/temp1 [1]) );
  DFFNEGX1 \dp/temp1_reg[2]  ( .D(\dp/n395 ), .CLK(n3), .Q(\dp/temp1 [2]) );
  DFFNEGX1 \dp/temp1_reg[3]  ( .D(\dp/n396 ), .CLK(n3), .Q(\dp/temp1 [3]) );
  DFFNEGX1 \dp/temp0_reg[0]  ( .D(\dp/n397 ), .CLK(n3), .Q(\dp/temp0 [0]) );
  DFFNEGX1 \dp/temp0_reg[1]  ( .D(\dp/n398 ), .CLK(n3), .Q(\dp/temp0 [1]) );
  DFFNEGX1 \dp/temp0_reg[2]  ( .D(\dp/n399 ), .CLK(n3), .Q(\dp/temp0 [2]) );
  DFFNEGX1 \dp/temp0_reg[3]  ( .D(\dp/n400 ), .CLK(n3), .Q(\dp/temp0 [3]) );
  DFFNEGX1 \dp/temp3_reg[0]  ( .D(\dp/n401 ), .CLK(n3), .Q(\dp/temp3 [0]) );
  DFFNEGX1 \dp/temp3_reg[1]  ( .D(\dp/n402 ), .CLK(n3), .Q(\dp/temp3 [1]) );
  DFFNEGX1 \dp/temp3_reg[2]  ( .D(\dp/n403 ), .CLK(n3), .Q(\dp/temp3 [2]) );
  DFFNEGX1 \dp/temp3_reg[3]  ( .D(\dp/n404 ), .CLK(n3), .Q(\dp/temp3 [3]) );
  DFFNEGX1 \dp/valid_reg  ( .D(\dp/n405 ), .CLK(n8), .Q(out_valid) );
  DFFNEGX1 \dp/num1_reg[1]  ( .D(\dp/n410 ), .CLK(n8), .Q(\dp/num1 [1]) );
  DFFNEGX1 \dp/num1_reg[2]  ( .D(\dp/n411 ), .CLK(n8), .Q(\dp/num1 [2]) );
  DFFNEGX1 \dp/num1_reg[3]  ( .D(\dp/n412 ), .CLK(n8), .Q(\dp/num1 [3]) );
  DFFNEGX1 \dp/num1_reg[0]  ( .D(\dp/n413 ), .CLK(n8), .Q(\dp/num1 [0]) );
  DFFNEGX1 \dp/num3_reg[1]  ( .D(\dp/n418 ), .CLK(n8), .Q(\dp/num3 [1]) );
  DFFNEGX1 \dp/num3_reg[2]  ( .D(\dp/n419 ), .CLK(n8), .Q(\dp/num3 [2]) );
  DFFNEGX1 \dp/num3_reg[3]  ( .D(\dp/n420 ), .CLK(n8), .Q(\dp/num3 [3]) );
  DFFNEGX1 \dp/num3_reg[0]  ( .D(\dp/n421 ), .CLK(n8), .Q(\dp/num3 [0]) );
  DFFNEGX1 \dp/num0_reg[1]  ( .D(\dp/n414 ), .CLK(n8), .Q(\dp/num0 [1]) );
  DFFNEGX1 \dp/num0_reg[2]  ( .D(\dp/n415 ), .CLK(n8), .Q(\dp/num0 [2]) );
  DFFNEGX1 \dp/num0_reg[3]  ( .D(\dp/n416 ), .CLK(n8), .Q(\dp/num0 [3]) );
  DFFNEGX1 \dp/num0_reg[0]  ( .D(\dp/n417 ), .CLK(n7), .Q(\dp/num0 [0]) );
  DFFNEGX1 \dp/num2_reg[1]  ( .D(\dp/n406 ), .CLK(n7), .Q(\dp/num2 [1]) );
  DFFNEGX1 \dp/num2_reg[2]  ( .D(\dp/n407 ), .CLK(n7), .Q(\dp/num2 [2]) );
  DFFNEGX1 \dp/num2_reg[3]  ( .D(\dp/n408 ), .CLK(n7), .Q(\dp/num2 [3]) );
  DFFNEGX1 \dp/num2_reg[0]  ( .D(\dp/n409 ), .CLK(n7), .Q(\dp/num2 [0]) );
  DFFNEGX1 \dp/count_reg[3]  ( .D(\dp/n423 ), .CLK(n7), .Q(\dp/count [3]) );
  DFFNEGX1 \dp/count_reg[2]  ( .D(\dp/n422 ), .CLK(n7), .Q(\dp/count [2]) );
  DFFNEGX1 \dp/count_reg[1]  ( .D(n35), .CLK(n7), .Q(\dp/count [1]) );
  DFFNEGX1 \dp/count_reg[0]  ( .D(n34), .CLK(n7), .Q(\dp/count [0]) );
  XOR2X1 \dp/prng_inst/U15  ( .A(\dp/prng_inst/random [7]), .B(
        \dp/prng_inst/random [5]), .Y(\dp/prng_inst/n5 ) );
  XOR2X1 \dp/prng_inst/U14  ( .A(\dp/prng_inst/random [4]), .B(
        \dp/prng_inst/random [3]), .Y(\dp/prng_inst/n6 ) );
  XOR2X1 \dp/prng_inst/U13  ( .A(\dp/prng_inst/n5 ), .B(\dp/prng_inst/n6 ), 
        .Y(\dp/prng_inst/feedback ) );
  AOI22X1 \dp/prng_inst/U11  ( .A(n89), .B(n43), .C(\dp/random_num [0]), .D(
        out_reset), .Y(\dp/prng_inst/n4 ) );
  AOI22X1 \dp/prng_inst/U9  ( .A(n90), .B(n43), .C(\dp/random_num [1]), .D(
        out_reset), .Y(\dp/prng_inst/n3 ) );
  AOI22X1 \dp/prng_inst/U7  ( .A(n91), .B(n43), .C(\dp/random_num [2]), .D(
        out_reset), .Y(\dp/prng_inst/n2 ) );
  AOI22X1 \dp/prng_inst/U5  ( .A(n92), .B(n43), .C(\dp/random_num [3]), .D(
        out_reset), .Y(\dp/prng_inst/n1 ) );
  DFFNEGX1 \dp/prng_inst/random_num_reg[3]  ( .D(n33), .CLK(n7), .Q(
        \dp/random_num [3]) );
  DFFNEGX1 \dp/prng_inst/random_num_reg[2]  ( .D(n32), .CLK(n7), .Q(
        \dp/random_num [2]) );
  DFFNEGX1 \dp/prng_inst/random_num_reg[1]  ( .D(n31), .CLK(n7), .Q(
        \dp/random_num [1]) );
  DFFNEGX1 \dp/prng_inst/random_num_reg[0]  ( .D(n30), .CLK(n7), .Q(
        \dp/random_num [0]) );
  DFFSR \dp/prng_inst/random_reg[7]  ( .D(\dp/prng_inst/random [6]), .CLK(n9), 
        .R(1'b1), .S(n43), .Q(\dp/prng_inst/random [7]) );
  DFFSR \dp/prng_inst/random_reg[6]  ( .D(\dp/prng_inst/random [5]), .CLK(n9), 
        .R(1'b1), .S(n43), .Q(\dp/prng_inst/random [6]) );
  DFFSR \dp/prng_inst/random_reg[5]  ( .D(\dp/prng_inst/random [4]), .CLK(n9), 
        .R(1'b1), .S(n43), .Q(\dp/prng_inst/random [5]) );
  DFFSR \dp/prng_inst/random_reg[4]  ( .D(\dp/prng_inst/random [3]), .CLK(n9), 
        .R(1'b1), .S(n43), .Q(\dp/prng_inst/random [4]) );
  DFFSR \dp/prng_inst/random_reg[3]  ( .D(\dp/prng_inst/random [2]), .CLK(n9), 
        .R(1'b1), .S(n43), .Q(\dp/prng_inst/random [3]) );
  DFFSR \dp/prng_inst/random_reg[2]  ( .D(\dp/prng_inst/random [1]), .CLK(n9), 
        .R(1'b1), .S(n43), .Q(\dp/prng_inst/random [2]) );
  DFFSR \dp/prng_inst/random_reg[1]  ( .D(\dp/prng_inst/random [0]), .CLK(n9), 
        .R(1'b1), .S(n43), .Q(\dp/prng_inst/random [1]) );
  DFFSR \dp/prng_inst/random_reg[0]  ( .D(\dp/prng_inst/feedback ), .CLK(n10), 
        .R(1'b1), .S(n43), .Q(\dp/prng_inst/random [0]) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_0_0  ( .B(
        \dp/prng_inst/random [0]), .A(\dp/prng_inst/random [0]), .S(
        \dp/prng_inst/rem_20/quotient [0]), .Y(n107) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_0_1  ( .B(n93), .A(n111), 
        .S(\dp/prng_inst/rem_20/quotient [0]), .Y(n108) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_0_2  ( .B(n94), .A(
        \dp/prng_inst/rem_20/u_div/SumTmp[0][2] ), .S(
        \dp/prng_inst/rem_20/quotient [0]), .Y(n109) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_0_3  ( .B(n95), .A(
        \dp/prng_inst/rem_20/u_div/SumTmp[0][3] ), .S(
        \dp/prng_inst/rem_20/quotient [0]), .Y(n110) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_1_0  ( .B(
        \dp/prng_inst/random [1]), .A(\dp/prng_inst/random [1]), .S(
        \dp/prng_inst/rem_20/quotient [1]), .Y(n111) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_1_1  ( .B(n96), .A(n115), 
        .S(\dp/prng_inst/rem_20/quotient [1]), .Y(n112) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_1_2  ( .B(n97), .A(
        \dp/prng_inst/rem_20/u_div/SumTmp[1][2] ), .S(
        \dp/prng_inst/rem_20/quotient [1]), .Y(n113) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_1_3  ( .B(n98), .A(
        \dp/prng_inst/rem_20/u_div/SumTmp[1][3] ), .S(
        \dp/prng_inst/rem_20/quotient [1]), .Y(n114) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_2_0  ( .B(
        \dp/prng_inst/random [2]), .A(\dp/prng_inst/random [2]), .S(
        \dp/prng_inst/rem_20/quotient [2]), .Y(n115) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_2_1  ( .B(n99), .A(n119), 
        .S(\dp/prng_inst/rem_20/quotient [2]), .Y(n116) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_2_2  ( .B(n100), .A(
        \dp/prng_inst/rem_20/u_div/SumTmp[2][2] ), .S(
        \dp/prng_inst/rem_20/quotient [2]), .Y(n117) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_2_3  ( .B(n101), .A(
        \dp/prng_inst/rem_20/u_div/SumTmp[2][3] ), .S(
        \dp/prng_inst/rem_20/quotient [2]), .Y(n118) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_3_0  ( .B(
        \dp/prng_inst/random [3]), .A(\dp/prng_inst/random [3]), .S(
        \dp/prng_inst/rem_20/quotient [3]), .Y(n119) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_3_1  ( .B(n102), .A(n123), 
        .S(\dp/prng_inst/rem_20/quotient [3]), .Y(n120) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_3_2  ( .B(n103), .A(
        \dp/prng_inst/rem_20/u_div/SumTmp[3][2] ), .S(
        \dp/prng_inst/rem_20/quotient [3]), .Y(n121) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_3_3  ( .B(n104), .A(
        \dp/prng_inst/rem_20/u_div/SumTmp[3][3] ), .S(
        \dp/prng_inst/rem_20/quotient [3]), .Y(n122) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_4_0  ( .B(
        \dp/prng_inst/random [4]), .A(\dp/prng_inst/random [4]), .S(
        \dp/prng_inst/rem_20/quotient [4]), .Y(n123) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_4_1  ( .B(
        \dp/prng_inst/random [5]), .A(n106), .S(
        \dp/prng_inst/rem_20/quotient [4]), .Y(n124) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_4_2  ( .B(
        \dp/prng_inst/random [6]), .A(\dp/prng_inst/rem_20/u_div/SumTmp[4][2] ), .S(\dp/prng_inst/rem_20/quotient [4]), .Y(n125) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_4_3  ( .B(
        \dp/prng_inst/random [7]), .A(\dp/prng_inst/rem_20/u_div/SumTmp[4][3] ), .S(\dp/prng_inst/rem_20/quotient [4]), .Y(n126) );
  AND2X2 U1 ( .A(n43), .B(n6), .Y(n1) );
  INVX1 U2 ( .A(in_clkb), .Y(n2) );
  INVX4 U3 ( .A(n2), .Y(n3) );
  INVX2 U4 ( .A(n10), .Y(n8) );
  INVX2 U5 ( .A(n11), .Y(n7) );
  BUFX2 U6 ( .A(n11), .Y(n9) );
  INVX2 U7 ( .A(n1), .Y(n4) );
  BUFX2 U8 ( .A(n11), .Y(n10) );
  INVX2 U9 ( .A(out_reset), .Y(n43) );
  INVX2 U10 ( .A(n5), .Y(n6) );
  INVX2 U11 ( .A(\dp/n218 ), .Y(n5) );
  INVX2 U12 ( .A(in_clka), .Y(n11) );
  INVX2 U13 ( .A(\main_fsm/n12 ), .Y(n12) );
  INVX2 U14 ( .A(in_restart), .Y(n13) );
  INVX2 U15 ( .A(in_ans0[3]), .Y(n14) );
  INVX2 U16 ( .A(in_ans0[2]), .Y(n15) );
  INVX2 U17 ( .A(in_ans0[1]), .Y(n16) );
  INVX2 U18 ( .A(in_ans0[0]), .Y(n17) );
  INVX2 U19 ( .A(in_ans1[3]), .Y(n18) );
  INVX2 U20 ( .A(in_ans1[2]), .Y(n19) );
  INVX2 U21 ( .A(in_ans1[1]), .Y(n20) );
  INVX2 U22 ( .A(in_ans1[0]), .Y(n21) );
  INVX2 U23 ( .A(in_ans2[3]), .Y(n22) );
  INVX2 U24 ( .A(in_ans2[2]), .Y(n23) );
  INVX2 U25 ( .A(in_ans2[1]), .Y(n24) );
  INVX2 U26 ( .A(in_ans2[0]), .Y(n25) );
  INVX2 U27 ( .A(in_ans3[3]), .Y(n26) );
  INVX2 U28 ( .A(in_ans3[2]), .Y(n27) );
  INVX2 U29 ( .A(in_ans3[1]), .Y(n28) );
  INVX2 U30 ( .A(in_ans3[0]), .Y(n29) );
  INVX2 U31 ( .A(\dp/prng_inst/n4 ), .Y(n30) );
  INVX2 U32 ( .A(\dp/prng_inst/n3 ), .Y(n31) );
  INVX2 U33 ( .A(\dp/prng_inst/n2 ), .Y(n32) );
  INVX2 U34 ( .A(\dp/prng_inst/n1 ), .Y(n33) );
  INVX2 U35 ( .A(\dp/n244 ), .Y(n34) );
  INVX2 U36 ( .A(\dp/n242 ), .Y(n35) );
  INVX2 U37 ( .A(\dp/n239 ), .Y(n36) );
  INVX2 U38 ( .A(\dp/n238 ), .Y(n37) );
  INVX2 U39 ( .A(\dp/n234 ), .Y(n38) );
  INVX2 U40 ( .A(\dp/n231 ), .Y(n39) );
  INVX2 U41 ( .A(\dp/n236 ), .Y(n40) );
  INVX2 U42 ( .A(\dp/n232 ), .Y(n41) );
  INVX2 U43 ( .A(\dp/n224 ), .Y(n42) );
  INVX2 U44 ( .A(\main_fsm/n10 ), .Y(n44) );
  INVX2 U45 ( .A(out_state[0]), .Y(n45) );
  INVX2 U46 ( .A(\dp/n249 ), .Y(out_Anum[2]) );
  INVX2 U47 ( .A(\dp/n289 ), .Y(out_Bnum[2]) );
  INVX2 U48 ( .A(\dp/n366 ), .Y(n48) );
  INVX2 U49 ( .A(\dp/n291 ), .Y(n49) );
  INVX2 U50 ( .A(\dp/temp2 [0]), .Y(n50) );
  INVX2 U51 ( .A(\dp/temp2 [1]), .Y(n51) );
  INVX2 U52 ( .A(\dp/temp2 [2]), .Y(n52) );
  INVX2 U53 ( .A(\dp/temp2 [3]), .Y(n53) );
  INVX2 U54 ( .A(\dp/n367 ), .Y(n54) );
  INVX2 U55 ( .A(\dp/temp1 [0]), .Y(n55) );
  INVX2 U56 ( .A(\dp/temp1 [1]), .Y(n56) );
  INVX2 U57 ( .A(\dp/temp1 [2]), .Y(n57) );
  INVX2 U58 ( .A(\dp/temp1 [3]), .Y(n58) );
  INVX2 U59 ( .A(\dp/n365 ), .Y(n59) );
  INVX2 U60 ( .A(\dp/temp0 [0]), .Y(n60) );
  INVX2 U61 ( .A(\dp/temp0 [1]), .Y(n61) );
  INVX2 U62 ( .A(\dp/temp0 [2]), .Y(n62) );
  INVX2 U63 ( .A(\dp/temp0 [3]), .Y(n63) );
  INVX2 U64 ( .A(\dp/n368 ), .Y(n64) );
  INVX2 U65 ( .A(\dp/temp3 [0]), .Y(n65) );
  INVX2 U66 ( .A(\dp/temp3 [1]), .Y(n66) );
  INVX2 U67 ( .A(\dp/temp3 [2]), .Y(n67) );
  INVX2 U68 ( .A(\dp/temp3 [3]), .Y(n68) );
  INVX2 U69 ( .A(\dp/num1 [1]), .Y(n69) );
  INVX2 U70 ( .A(\dp/num1 [2]), .Y(n70) );
  INVX2 U71 ( .A(\dp/num1 [3]), .Y(n71) );
  INVX2 U72 ( .A(\dp/num1 [0]), .Y(n72) );
  INVX2 U73 ( .A(\dp/num3 [1]), .Y(n73) );
  INVX2 U74 ( .A(\dp/num3 [2]), .Y(n74) );
  INVX2 U75 ( .A(\dp/num3 [3]), .Y(n75) );
  INVX2 U76 ( .A(\dp/num3 [0]), .Y(n76) );
  INVX2 U77 ( .A(\dp/num0 [1]), .Y(n77) );
  INVX2 U78 ( .A(\dp/num0 [2]), .Y(n78) );
  INVX2 U79 ( .A(\dp/num0 [3]), .Y(n79) );
  INVX2 U80 ( .A(\dp/num0 [0]), .Y(n80) );
  INVX2 U81 ( .A(\dp/num2 [1]), .Y(n81) );
  INVX2 U82 ( .A(\dp/num2 [2]), .Y(n82) );
  INVX2 U83 ( .A(\dp/num2 [3]), .Y(n83) );
  INVX2 U84 ( .A(\dp/num2 [0]), .Y(n84) );
  INVX2 U85 ( .A(\dp/n229 ), .Y(n85) );
  INVX2 U86 ( .A(\dp/count [2]), .Y(n86) );
  INVX2 U87 ( .A(\dp/n246 ), .Y(n87) );
  INVX2 U88 ( .A(\dp/count [0]), .Y(n88) );
  INVX2 U89 ( .A(n107), .Y(n89) );
  INVX2 U90 ( .A(n108), .Y(n90) );
  INVX2 U91 ( .A(n109), .Y(n91) );
  INVX2 U92 ( .A(n110), .Y(n92) );
  INVX2 U93 ( .A(n111), .Y(n93) );
  INVX2 U94 ( .A(n112), .Y(n94) );
  INVX2 U95 ( .A(n113), .Y(n95) );
  INVX2 U96 ( .A(n115), .Y(n96) );
  INVX2 U97 ( .A(n116), .Y(n97) );
  INVX2 U98 ( .A(n117), .Y(n98) );
  INVX2 U99 ( .A(n119), .Y(n99) );
  INVX2 U100 ( .A(n120), .Y(n100) );
  INVX2 U101 ( .A(n121), .Y(n101) );
  INVX2 U102 ( .A(n123), .Y(n102) );
  INVX2 U103 ( .A(n124), .Y(n103) );
  INVX2 U104 ( .A(n125), .Y(n104) );
  INVX2 U105 ( .A(\dp/prng_inst/random [7]), .Y(n105) );
  INVX2 U106 ( .A(\dp/prng_inst/random [5]), .Y(n106) );
  XNOR2X1 U107 ( .A(\dp/prng_inst/random [7]), .B(n127), .Y(
        \dp/prng_inst/rem_20/u_div/SumTmp[4][3] ) );
  XNOR2X1 U108 ( .A(\dp/prng_inst/random [5]), .B(\dp/prng_inst/random [6]), 
        .Y(\dp/prng_inst/rem_20/u_div/SumTmp[4][2] ) );
  NOR2X1 U109 ( .A(n127), .B(n105), .Y(\dp/prng_inst/rem_20/quotient [4]) );
  NOR2X1 U110 ( .A(\dp/prng_inst/random [6]), .B(\dp/prng_inst/random [5]), 
        .Y(n127) );
  XNOR2X1 U111 ( .A(n104), .B(n128), .Y(
        \dp/prng_inst/rem_20/u_div/SumTmp[3][3] ) );
  XNOR2X1 U112 ( .A(n102), .B(n103), .Y(
        \dp/prng_inst/rem_20/u_div/SumTmp[3][2] ) );
  OAI21X1 U113 ( .A(n128), .B(n125), .C(n126), .Y(
        \dp/prng_inst/rem_20/quotient [3]) );
  NOR2X1 U114 ( .A(n103), .B(n102), .Y(n128) );
  XNOR2X1 U115 ( .A(n101), .B(n129), .Y(
        \dp/prng_inst/rem_20/u_div/SumTmp[2][3] ) );
  XNOR2X1 U116 ( .A(n99), .B(n100), .Y(
        \dp/prng_inst/rem_20/u_div/SumTmp[2][2] ) );
  OAI21X1 U117 ( .A(n129), .B(n121), .C(n122), .Y(
        \dp/prng_inst/rem_20/quotient [2]) );
  NOR2X1 U118 ( .A(n100), .B(n99), .Y(n129) );
  XNOR2X1 U119 ( .A(n98), .B(n130), .Y(
        \dp/prng_inst/rem_20/u_div/SumTmp[1][3] ) );
  XNOR2X1 U120 ( .A(n96), .B(n97), .Y(\dp/prng_inst/rem_20/u_div/SumTmp[1][2] ) );
  OAI21X1 U121 ( .A(n130), .B(n117), .C(n118), .Y(
        \dp/prng_inst/rem_20/quotient [1]) );
  NOR2X1 U122 ( .A(n97), .B(n96), .Y(n130) );
  XNOR2X1 U123 ( .A(n95), .B(n131), .Y(
        \dp/prng_inst/rem_20/u_div/SumTmp[0][3] ) );
  XNOR2X1 U124 ( .A(n93), .B(n94), .Y(\dp/prng_inst/rem_20/u_div/SumTmp[0][2] ) );
  OAI21X1 U125 ( .A(n131), .B(n113), .C(n114), .Y(
        \dp/prng_inst/rem_20/quotient [0]) );
  NOR2X1 U126 ( .A(n94), .B(n93), .Y(n131) );
endmodule

