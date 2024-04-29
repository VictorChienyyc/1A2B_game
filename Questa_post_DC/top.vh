/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sun Apr 28 23:11:40 2024
/////////////////////////////////////////////////////////////


module top ( in_clka, in_clkb, in_loadtest, in_enter, in_restart, in_ans0, 
        in_ans1, in_ans2, in_ans3, out_Anum, out_Bnum, out_state, out_valid );
  input [3:0] in_ans0;
  input [3:0] in_ans1;
  input [3:0] in_ans2;
  input [3:0] in_ans3;
  output [2:0] out_Anum;
  output [2:0] out_Bnum;
  output [2:0] out_state;
  input in_clka, in_clkb, in_loadtest, in_enter, in_restart;
  output out_valid;
  wire   out_save_test, out_reset, \main_fsm/n17 , \main_fsm/n15 ,
         \main_fsm/n14 , \main_fsm/n13 , \main_fsm/n12 , \main_fsm/n10 ,
         \main_fsm/n9 , \main_fsm/N33 , \main_fsm/N32 , \dp/n475 , \dp/n474 ,
         \dp/n473 , \dp/n472 , \dp/n471 , \dp/n470 , \dp/n469 , \dp/n468 ,
         \dp/n467 , \dp/n466 , \dp/n465 , \dp/n464 , \dp/n463 , \dp/n462 ,
         \dp/n461 , \dp/n460 , \dp/n459 , \dp/n458 , \dp/n457 , \dp/n456 ,
         \dp/n455 , \dp/n454 , \dp/n453 , \dp/n452 , \dp/n451 , \dp/n450 ,
         \dp/n449 , \dp/n448 , \dp/n447 , \dp/n446 , \dp/n445 , \dp/n444 ,
         \dp/n443 , \dp/n442 , \dp/n441 , \dp/n440 , \dp/n439 , \dp/n438 ,
         \dp/n437 , \dp/n436 , \dp/n435 , \dp/n434 , \dp/n433 , \dp/n432 ,
         \dp/n431 , \dp/n430 , \dp/n429 , \dp/n428 , \dp/n427 , \dp/n426 ,
         \dp/n425 , \dp/n424 , \dp/n423 , \dp/n422 , \dp/n421 , \dp/n420 ,
         \dp/n419 , \dp/n418 , \dp/n417 , \dp/n416 , \dp/n415 , \dp/n414 ,
         \dp/n413 , \dp/n412 , \dp/n411 , \dp/n410 , \dp/n409 , \dp/n408 ,
         \dp/n407 , \dp/n406 , \dp/n405 , \dp/n404 , \dp/n403 , \dp/n402 ,
         \dp/n401 , \dp/n400 , \dp/n399 , \dp/n398 , \dp/n397 , \dp/n396 ,
         \dp/n395 , \dp/n394 , \dp/n393 , \dp/n392 , \dp/n391 , \dp/n390 ,
         \dp/n389 , \dp/n388 , \dp/n387 , \dp/n386 , \dp/n385 , \dp/n384 ,
         \dp/n383 , \dp/n382 , \dp/n381 , \dp/n380 , \dp/n379 , \dp/n378 ,
         \dp/n377 , \dp/n376 , \dp/n375 , \dp/n374 , \dp/n373 , \dp/n372 ,
         \dp/n371 , \dp/n370 , \dp/n369 , \dp/n368 , \dp/n367 , \dp/n366 ,
         \dp/n365 , \dp/n364 , \dp/n363 , \dp/n362 , \dp/n361 , \dp/n360 ,
         \dp/n359 , \dp/n358 , \dp/n357 , \dp/n356 , \dp/n355 , \dp/n354 ,
         \dp/n353 , \dp/n352 , \dp/n351 , \dp/n350 , \dp/n349 , \dp/n348 ,
         \dp/n347 , \dp/n346 , \dp/n345 , \dp/n344 , \dp/n343 , \dp/n342 ,
         \dp/n341 , \dp/n340 , \dp/n339 , \dp/n338 , \dp/n337 , \dp/n336 ,
         \dp/n335 , \dp/n334 , \dp/n333 , \dp/n293 , \dp/n290 , \dp/n289 ,
         \dp/n288 , \dp/n287 , \dp/n286 , \dp/n285 , \dp/n284 , \dp/n283 ,
         \dp/n282 , \dp/n281 , \dp/n280 , \dp/n279 , \dp/n278 , \dp/n277 ,
         \dp/n276 , \dp/n275 , \dp/n274 , \dp/n273 , \dp/n272 , \dp/n271 ,
         \dp/n270 , \dp/n269 , \dp/n268 , \dp/n267 , \dp/n266 , \dp/n265 ,
         \dp/n264 , \dp/n263 , \dp/n262 , \dp/n261 , \dp/n260 , \dp/n259 ,
         \dp/n258 , \dp/n257 , \dp/n256 , \dp/n255 , \dp/n254 , \dp/n253 ,
         \dp/n252 , \dp/n251 , \dp/n250 , \dp/n249 , \dp/n248 , \dp/n247 ,
         \dp/n246 , \dp/n245 , \dp/n244 , \dp/n243 , \dp/n242 , \dp/n241 ,
         \dp/n240 , \dp/n239 , \dp/n238 , \dp/n237 , \dp/n236 , \dp/n235 ,
         \dp/dp_cluster_1/N137 , \dp/dp_cluster_1/N138 ,
         \dp/dp_cluster_0/N160 , \dp/N159 , \dp/N155 , \dp/N151 , \dp/N147 ,
         \dp/prng_inst/n6 , \dp/prng_inst/n5 , \dp/prng_inst/n4 ,
         \dp/prng_inst/n3 , \dp/prng_inst/n2 , \dp/prng_inst/n1 ,
         \dp/prng_inst/feedback , \dp/prng_inst/rem_20/u_div/SumTmp[4][3] ,
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
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n48, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133;
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
  assign out_state[2] = 1'b0;

  OAI21X1 \main_fsm/U22  ( .A(out_state[1]), .B(n12), .C(n46), .Y(
        \main_fsm/n17 ) );
  NAND2X1 \main_fsm/U21  ( .A(in_enter), .B(n45), .Y(\main_fsm/n15 ) );
  OAI21X1 \main_fsm/U20  ( .A(in_loadtest), .B(n45), .C(\main_fsm/n15 ), .Y(
        \main_fsm/n14 ) );
  NAND2X1 \main_fsm/U19  ( .A(out_state[0]), .B(\main_fsm/n14 ), .Y(
        \main_fsm/n13 ) );
  NOR2X1 \main_fsm/U18  ( .A(in_restart), .B(\main_fsm/n13 ), .Y(
        \main_fsm/N33 ) );
  NOR2X1 \main_fsm/U16  ( .A(n45), .B(n46), .Y(\main_fsm/n9 ) );
  NOR2X1 \main_fsm/U15  ( .A(n46), .B(out_state[1]), .Y(\main_fsm/n10 ) );
  AOI21X1 \main_fsm/U14  ( .A(\main_fsm/n9 ), .B(out_save_test), .C(
        \main_fsm/n10 ), .Y(\main_fsm/n12 ) );
  AND2X2 \main_fsm/U4  ( .A(n13), .B(\main_fsm/n17 ), .Y(\main_fsm/N32 ) );
  DFFNEGX1 \main_fsm/reset_reg  ( .D(n46), .CLK(n3), .Q(out_reset) );
  DFFNEGX1 \main_fsm/save_test_reg  ( .D(n44), .CLK(n3), .Q(out_save_test) );
  DFFNEGX1 \main_fsm/state_reg[1]  ( .D(\main_fsm/N33 ), .CLK(in_clka), .Q(
        out_state[1]) );
  DFFNEGX1 \main_fsm/state_reg[0]  ( .D(\main_fsm/N32 ), .CLK(n8), .Q(
        out_state[0]) );
  XNOR2X1 \dp/U327  ( .A(\dp/num3 [1]), .B(\dp/temp3 [1]), .Y(\dp/n434 ) );
  XNOR2X1 \dp/U326  ( .A(\dp/num3 [2]), .B(\dp/temp3 [2]), .Y(\dp/n435 ) );
  XNOR2X1 \dp/U325  ( .A(n69), .B(\dp/num3 [3]), .Y(\dp/n437 ) );
  XNOR2X1 \dp/U324  ( .A(n66), .B(\dp/num3 [0]), .Y(\dp/n438 ) );
  NOR2X1 \dp/U323  ( .A(\dp/n437 ), .B(\dp/n438 ), .Y(\dp/n436 ) );
  NAND3X1 \dp/U322  ( .A(\dp/n434 ), .B(\dp/n435 ), .C(\dp/n436 ), .Y(
        \dp/n418 ) );
  XNOR2X1 \dp/U321  ( .A(\dp/temp0 [1]), .B(\dp/num0 [1]), .Y(\dp/n429 ) );
  XNOR2X1 \dp/U320  ( .A(\dp/temp0 [2]), .B(\dp/num0 [2]), .Y(\dp/n430 ) );
  XNOR2X1 \dp/U319  ( .A(n64), .B(\dp/num0 [3]), .Y(\dp/n432 ) );
  XNOR2X1 \dp/U318  ( .A(n61), .B(\dp/num0 [0]), .Y(\dp/n433 ) );
  NOR2X1 \dp/U317  ( .A(\dp/n432 ), .B(\dp/n433 ), .Y(\dp/n431 ) );
  NAND3X1 \dp/U316  ( .A(\dp/n429 ), .B(\dp/n430 ), .C(\dp/n431 ), .Y(
        \dp/n415 ) );
  XNOR2X1 \dp/U315  ( .A(\dp/temp2 [1]), .B(\dp/num2 [1]), .Y(\dp/n424 ) );
  XNOR2X1 \dp/U314  ( .A(\dp/temp2 [2]), .B(\dp/num2 [2]), .Y(\dp/n425 ) );
  XNOR2X1 \dp/U313  ( .A(n54), .B(\dp/num2 [3]), .Y(\dp/n427 ) );
  XNOR2X1 \dp/U312  ( .A(n51), .B(\dp/num2 [0]), .Y(\dp/n428 ) );
  NOR2X1 \dp/U311  ( .A(\dp/n427 ), .B(\dp/n428 ), .Y(\dp/n426 ) );
  NAND3X1 \dp/U310  ( .A(\dp/n424 ), .B(\dp/n425 ), .C(\dp/n426 ), .Y(
        \dp/n416 ) );
  XNOR2X1 \dp/U309  ( .A(\dp/temp1 [1]), .B(\dp/num1 [1]), .Y(\dp/n419 ) );
  XNOR2X1 \dp/U308  ( .A(\dp/temp1 [2]), .B(\dp/num1 [2]), .Y(\dp/n420 ) );
  XNOR2X1 \dp/U307  ( .A(n59), .B(\dp/num1 [3]), .Y(\dp/n422 ) );
  XNOR2X1 \dp/U306  ( .A(n56), .B(\dp/num1 [0]), .Y(\dp/n423 ) );
  NOR2X1 \dp/U305  ( .A(\dp/n422 ), .B(\dp/n423 ), .Y(\dp/n421 ) );
  NAND3X1 \dp/U304  ( .A(\dp/n419 ), .B(\dp/n420 ), .C(\dp/n421 ), .Y(
        \dp/n417 ) );
  XNOR2X1 \dp/U303  ( .A(n48), .B(n55), .Y(\dp/n414 ) );
  XNOR2X1 \dp/U302  ( .A(n60), .B(\dp/n414 ), .Y(\dp/dp_cluster_1/N137 ) );
  XNOR2X1 \dp/U301  ( .A(\dp/n418 ), .B(\dp/dp_cluster_1/N137 ), .Y(
        out_Anum[0]) );
  NAND2X1 \dp/U300  ( .A(n65), .B(\dp/dp_cluster_1/N137 ), .Y(\dp/n413 ) );
  OAI22X1 \dp/U299  ( .A(\dp/n414 ), .B(\dp/n415 ), .C(\dp/n416 ), .D(
        \dp/n417 ), .Y(\dp/dp_cluster_1/N138 ) );
  XNOR2X1 \dp/U298  ( .A(\dp/n413 ), .B(\dp/dp_cluster_1/N138 ), .Y(
        out_Anum[1]) );
  NAND3X1 \dp/U297  ( .A(\dp/dp_cluster_1/N137 ), .B(\dp/dp_cluster_1/N138 ), 
        .C(n65), .Y(\dp/n293 ) );
  XNOR2X1 \dp/U296  ( .A(\dp/temp1 [0]), .B(\dp/num0 [0]), .Y(\dp/n411 ) );
  XNOR2X1 \dp/U295  ( .A(\dp/temp1 [3]), .B(\dp/num0 [3]), .Y(\dp/n412 ) );
  NAND2X1 \dp/U294  ( .A(\dp/n411 ), .B(\dp/n412 ), .Y(\dp/n394 ) );
  XNOR2X1 \dp/U293  ( .A(\dp/temp1 [1]), .B(\dp/num0 [1]), .Y(\dp/n409 ) );
  XNOR2X1 \dp/U292  ( .A(\dp/temp1 [2]), .B(\dp/num0 [2]), .Y(\dp/n410 ) );
  NAND2X1 \dp/U291  ( .A(\dp/n409 ), .B(\dp/n410 ), .Y(\dp/n395 ) );
  XNOR2X1 \dp/U290  ( .A(n68), .B(\dp/num0 [2]), .Y(\dp/n407 ) );
  XNOR2X1 \dp/U289  ( .A(n67), .B(\dp/num0 [1]), .Y(\dp/n408 ) );
  NOR2X1 \dp/U288  ( .A(\dp/n407 ), .B(\dp/n408 ), .Y(\dp/n397 ) );
  XNOR2X1 \dp/U287  ( .A(n69), .B(\dp/num0 [3]), .Y(\dp/n405 ) );
  XNOR2X1 \dp/U286  ( .A(n66), .B(\dp/num0 [0]), .Y(\dp/n406 ) );
  NOR2X1 \dp/U285  ( .A(\dp/n405 ), .B(\dp/n406 ), .Y(\dp/n398 ) );
  XNOR2X1 \dp/U284  ( .A(n53), .B(\dp/num0 [2]), .Y(\dp/n403 ) );
  XNOR2X1 \dp/U283  ( .A(n52), .B(\dp/num0 [1]), .Y(\dp/n404 ) );
  NOR2X1 \dp/U282  ( .A(\dp/n403 ), .B(\dp/n404 ), .Y(\dp/n399 ) );
  XNOR2X1 \dp/U281  ( .A(n54), .B(\dp/num0 [3]), .Y(\dp/n401 ) );
  XNOR2X1 \dp/U280  ( .A(n51), .B(\dp/num0 [0]), .Y(\dp/n402 ) );
  NOR2X1 \dp/U279  ( .A(\dp/n401 ), .B(\dp/n402 ), .Y(\dp/n400 ) );
  AOI22X1 \dp/U278  ( .A(\dp/n397 ), .B(\dp/n398 ), .C(\dp/n399 ), .D(
        \dp/n400 ), .Y(\dp/n396 ) );
  OAI21X1 \dp/U277  ( .A(\dp/n394 ), .B(\dp/n395 ), .C(\dp/n396 ), .Y(
        \dp/N147 ) );
  XNOR2X1 \dp/U276  ( .A(\dp/temp0 [0]), .B(\dp/num1 [0]), .Y(\dp/n392 ) );
  XNOR2X1 \dp/U275  ( .A(\dp/temp0 [3]), .B(\dp/num1 [3]), .Y(\dp/n393 ) );
  NAND2X1 \dp/U274  ( .A(\dp/n392 ), .B(\dp/n393 ), .Y(\dp/n375 ) );
  XNOR2X1 \dp/U273  ( .A(\dp/temp0 [1]), .B(\dp/num1 [1]), .Y(\dp/n390 ) );
  XNOR2X1 \dp/U272  ( .A(\dp/temp0 [2]), .B(\dp/num1 [2]), .Y(\dp/n391 ) );
  NAND2X1 \dp/U271  ( .A(\dp/n390 ), .B(\dp/n391 ), .Y(\dp/n376 ) );
  XNOR2X1 \dp/U270  ( .A(n68), .B(\dp/num1 [2]), .Y(\dp/n388 ) );
  XNOR2X1 \dp/U269  ( .A(n67), .B(\dp/num1 [1]), .Y(\dp/n389 ) );
  NOR2X1 \dp/U268  ( .A(\dp/n388 ), .B(\dp/n389 ), .Y(\dp/n378 ) );
  XNOR2X1 \dp/U267  ( .A(n69), .B(\dp/num1 [3]), .Y(\dp/n386 ) );
  XNOR2X1 \dp/U266  ( .A(n66), .B(\dp/num1 [0]), .Y(\dp/n387 ) );
  NOR2X1 \dp/U265  ( .A(\dp/n386 ), .B(\dp/n387 ), .Y(\dp/n379 ) );
  XNOR2X1 \dp/U264  ( .A(n53), .B(\dp/num1 [2]), .Y(\dp/n384 ) );
  XNOR2X1 \dp/U263  ( .A(n52), .B(\dp/num1 [1]), .Y(\dp/n385 ) );
  NOR2X1 \dp/U262  ( .A(\dp/n384 ), .B(\dp/n385 ), .Y(\dp/n380 ) );
  XNOR2X1 \dp/U261  ( .A(n54), .B(\dp/num1 [3]), .Y(\dp/n382 ) );
  XNOR2X1 \dp/U260  ( .A(n51), .B(\dp/num1 [0]), .Y(\dp/n383 ) );
  NOR2X1 \dp/U259  ( .A(\dp/n382 ), .B(\dp/n383 ), .Y(\dp/n381 ) );
  AOI22X1 \dp/U258  ( .A(\dp/n378 ), .B(\dp/n379 ), .C(\dp/n380 ), .D(
        \dp/n381 ), .Y(\dp/n377 ) );
  OAI21X1 \dp/U257  ( .A(\dp/n375 ), .B(\dp/n376 ), .C(\dp/n377 ), .Y(
        \dp/N151 ) );
  XNOR2X1 \dp/U256  ( .A(\dp/temp0 [0]), .B(\dp/num2 [0]), .Y(\dp/n373 ) );
  XNOR2X1 \dp/U255  ( .A(\dp/temp0 [3]), .B(\dp/num2 [3]), .Y(\dp/n374 ) );
  NAND2X1 \dp/U254  ( .A(\dp/n373 ), .B(\dp/n374 ), .Y(\dp/n356 ) );
  XNOR2X1 \dp/U253  ( .A(\dp/temp0 [1]), .B(\dp/num2 [1]), .Y(\dp/n371 ) );
  XNOR2X1 \dp/U252  ( .A(\dp/temp0 [2]), .B(\dp/num2 [2]), .Y(\dp/n372 ) );
  NAND2X1 \dp/U251  ( .A(\dp/n371 ), .B(\dp/n372 ), .Y(\dp/n357 ) );
  XNOR2X1 \dp/U250  ( .A(n68), .B(\dp/num2 [2]), .Y(\dp/n369 ) );
  XNOR2X1 \dp/U249  ( .A(n67), .B(\dp/num2 [1]), .Y(\dp/n370 ) );
  NOR2X1 \dp/U248  ( .A(\dp/n369 ), .B(\dp/n370 ), .Y(\dp/n359 ) );
  XNOR2X1 \dp/U247  ( .A(n69), .B(\dp/num2 [3]), .Y(\dp/n367 ) );
  XNOR2X1 \dp/U246  ( .A(n66), .B(\dp/num2 [0]), .Y(\dp/n368 ) );
  NOR2X1 \dp/U245  ( .A(\dp/n367 ), .B(\dp/n368 ), .Y(\dp/n360 ) );
  XNOR2X1 \dp/U244  ( .A(n58), .B(\dp/num2 [2]), .Y(\dp/n365 ) );
  XNOR2X1 \dp/U243  ( .A(n57), .B(\dp/num2 [1]), .Y(\dp/n366 ) );
  NOR2X1 \dp/U242  ( .A(\dp/n365 ), .B(\dp/n366 ), .Y(\dp/n361 ) );
  XNOR2X1 \dp/U241  ( .A(n59), .B(\dp/num2 [3]), .Y(\dp/n363 ) );
  XNOR2X1 \dp/U240  ( .A(n56), .B(\dp/num2 [0]), .Y(\dp/n364 ) );
  NOR2X1 \dp/U239  ( .A(\dp/n363 ), .B(\dp/n364 ), .Y(\dp/n362 ) );
  AOI22X1 \dp/U238  ( .A(\dp/n359 ), .B(\dp/n360 ), .C(\dp/n361 ), .D(
        \dp/n362 ), .Y(\dp/n358 ) );
  OAI21X1 \dp/U237  ( .A(\dp/n356 ), .B(\dp/n357 ), .C(\dp/n358 ), .Y(
        \dp/N155 ) );
  XOR2X1 \dp/U236  ( .A(\dp/N151 ), .B(\dp/N155 ), .Y(\dp/n336 ) );
  XOR2X1 \dp/U235  ( .A(\dp/N147 ), .B(\dp/n336 ), .Y(\dp/dp_cluster_0/N160 )
         );
  XNOR2X1 \dp/U234  ( .A(\dp/num3 [0]), .B(\dp/temp0 [0]), .Y(\dp/n354 ) );
  XNOR2X1 \dp/U233  ( .A(\dp/num3 [3]), .B(\dp/temp0 [3]), .Y(\dp/n355 ) );
  NAND2X1 \dp/U232  ( .A(\dp/n354 ), .B(\dp/n355 ), .Y(\dp/n337 ) );
  XNOR2X1 \dp/U231  ( .A(\dp/num3 [1]), .B(\dp/temp0 [1]), .Y(\dp/n352 ) );
  XNOR2X1 \dp/U230  ( .A(\dp/num3 [2]), .B(\dp/temp0 [2]), .Y(\dp/n353 ) );
  NAND2X1 \dp/U229  ( .A(\dp/n352 ), .B(\dp/n353 ), .Y(\dp/n338 ) );
  XNOR2X1 \dp/U228  ( .A(n53), .B(\dp/num3 [2]), .Y(\dp/n350 ) );
  XNOR2X1 \dp/U227  ( .A(n52), .B(\dp/num3 [1]), .Y(\dp/n351 ) );
  NOR2X1 \dp/U226  ( .A(\dp/n350 ), .B(\dp/n351 ), .Y(\dp/n340 ) );
  XNOR2X1 \dp/U225  ( .A(n54), .B(\dp/num3 [3]), .Y(\dp/n348 ) );
  XNOR2X1 \dp/U224  ( .A(n51), .B(\dp/num3 [0]), .Y(\dp/n349 ) );
  NOR2X1 \dp/U223  ( .A(\dp/n348 ), .B(\dp/n349 ), .Y(\dp/n341 ) );
  XNOR2X1 \dp/U222  ( .A(n58), .B(\dp/num3 [2]), .Y(\dp/n346 ) );
  XNOR2X1 \dp/U221  ( .A(n57), .B(\dp/num3 [1]), .Y(\dp/n347 ) );
  NOR2X1 \dp/U220  ( .A(\dp/n346 ), .B(\dp/n347 ), .Y(\dp/n342 ) );
  XNOR2X1 \dp/U219  ( .A(n59), .B(\dp/num3 [3]), .Y(\dp/n344 ) );
  XNOR2X1 \dp/U218  ( .A(n56), .B(\dp/num3 [0]), .Y(\dp/n345 ) );
  NOR2X1 \dp/U217  ( .A(\dp/n344 ), .B(\dp/n345 ), .Y(\dp/n343 ) );
  AOI22X1 \dp/U216  ( .A(\dp/n340 ), .B(\dp/n341 ), .C(\dp/n342 ), .D(
        \dp/n343 ), .Y(\dp/n339 ) );
  OAI21X1 \dp/U215  ( .A(\dp/n337 ), .B(\dp/n338 ), .C(\dp/n339 ), .Y(
        \dp/N159 ) );
  XOR2X1 \dp/U214  ( .A(\dp/dp_cluster_0/N160 ), .B(\dp/N159 ), .Y(out_Bnum[0]) );
  NAND2X1 \dp/U213  ( .A(\dp/dp_cluster_0/N160 ), .B(\dp/N159 ), .Y(\dp/n334 )
         );
  AOI22X1 \dp/U212  ( .A(\dp/N151 ), .B(\dp/N155 ), .C(\dp/N147 ), .D(
        \dp/n336 ), .Y(\dp/n335 ) );
  XNOR2X1 \dp/U211  ( .A(\dp/n334 ), .B(n50), .Y(out_Bnum[1]) );
  NAND3X1 \dp/U210  ( .A(\dp/N159 ), .B(n50), .C(\dp/dp_cluster_0/N160 ), .Y(
        \dp/n333 ) );
  NOR2X1 \dp/U166  ( .A(n89), .B(\dp/count [1]), .Y(\dp/n252 ) );
  NOR2X1 \dp/U165  ( .A(out_reset), .B(\dp/count [3]), .Y(\dp/n290 ) );
  NAND3X1 \dp/U164  ( .A(\dp/count [2]), .B(\dp/n252 ), .C(\dp/n290 ), .Y(
        \dp/n235 ) );
  OAI22X1 \dp/U162  ( .A(n4), .B(n61), .C(n6), .D(n17), .Y(\dp/n447 ) );
  OAI22X1 \dp/U161  ( .A(n4), .B(n59), .C(n6), .D(n18), .Y(\dp/n446 ) );
  OAI22X1 \dp/U160  ( .A(n4), .B(n58), .C(n6), .D(n19), .Y(\dp/n445 ) );
  OAI22X1 \dp/U159  ( .A(n4), .B(n57), .C(n6), .D(n20), .Y(\dp/n444 ) );
  OAI22X1 \dp/U158  ( .A(n4), .B(n56), .C(n6), .D(n21), .Y(\dp/n443 ) );
  OAI22X1 \dp/U157  ( .A(n4), .B(n54), .C(n6), .D(n22), .Y(\dp/n442 ) );
  OAI22X1 \dp/U156  ( .A(n4), .B(n53), .C(n6), .D(n23), .Y(\dp/n441 ) );
  OAI22X1 \dp/U155  ( .A(n4), .B(n52), .C(n6), .D(n24), .Y(\dp/n440 ) );
  OAI22X1 \dp/U154  ( .A(n4), .B(n51), .C(n6), .D(n25), .Y(\dp/n439 ) );
  NAND2X1 \dp/U153  ( .A(out_save_test), .B(n43), .Y(\dp/n267 ) );
  NOR2X1 \dp/U152  ( .A(\dp/n267 ), .B(\dp/count [3]), .Y(\dp/n243 ) );
  XNOR2X1 \dp/U151  ( .A(\dp/random_num [1]), .B(\dp/num0 [1]), .Y(\dp/n285 )
         );
  XNOR2X1 \dp/U150  ( .A(\dp/random_num [2]), .B(\dp/num0 [2]), .Y(\dp/n286 )
         );
  XNOR2X1 \dp/U149  ( .A(\dp/random_num [3]), .B(n84), .Y(\dp/n288 ) );
  XNOR2X1 \dp/U148  ( .A(\dp/random_num [0]), .B(n85), .Y(\dp/n289 ) );
  NOR2X1 \dp/U147  ( .A(\dp/n288 ), .B(\dp/n289 ), .Y(\dp/n287 ) );
  NAND3X1 \dp/U146  ( .A(\dp/n285 ), .B(\dp/n286 ), .C(\dp/n287 ), .Y(
        \dp/n273 ) );
  NAND3X1 \dp/U145  ( .A(\dp/count [1]), .B(\dp/n243 ), .C(\dp/n284 ), .Y(
        \dp/n246 ) );
  OAI21X1 \dp/U144  ( .A(\dp/count [0]), .B(\dp/n246 ), .C(n43), .Y(\dp/n249 )
         );
  NAND2X1 \dp/U143  ( .A(\dp/random_num [0]), .B(n35), .Y(\dp/n237 ) );
  OAI22X1 \dp/U142  ( .A(n90), .B(\dp/n249 ), .C(n38), .D(\dp/n237 ), .Y(
        \dp/n475 ) );
  XNOR2X1 \dp/U141  ( .A(\dp/random_num [1]), .B(\dp/num1 [1]), .Y(\dp/n279 )
         );
  XNOR2X1 \dp/U140  ( .A(\dp/random_num [2]), .B(\dp/num1 [2]), .Y(\dp/n280 )
         );
  XNOR2X1 \dp/U139  ( .A(\dp/random_num [3]), .B(n75), .Y(\dp/n282 ) );
  XNOR2X1 \dp/U138  ( .A(\dp/random_num [0]), .B(n90), .Y(\dp/n283 ) );
  NOR2X1 \dp/U137  ( .A(\dp/n282 ), .B(\dp/n283 ), .Y(\dp/n281 ) );
  NAND3X1 \dp/U136  ( .A(\dp/n279 ), .B(\dp/n280 ), .C(\dp/n281 ), .Y(
        \dp/n248 ) );
  OAI21X1 \dp/U135  ( .A(n89), .B(\dp/n248 ), .C(\dp/n273 ), .Y(\dp/n278 ) );
  NOR2X1 \dp/U134  ( .A(\dp/n267 ), .B(\dp/count [2]), .Y(\dp/n258 ) );
  AOI21X1 \dp/U133  ( .A(\dp/count [1]), .B(\dp/n278 ), .C(n41), .Y(\dp/n263 )
         );
  XNOR2X1 \dp/U132  ( .A(\dp/random_num [0]), .B(\dp/num2 [0]), .Y(\dp/n276 )
         );
  XNOR2X1 \dp/U131  ( .A(\dp/random_num [3]), .B(\dp/num2 [3]), .Y(\dp/n277 )
         );
  NAND2X1 \dp/U130  ( .A(\dp/n276 ), .B(\dp/n277 ), .Y(\dp/n270 ) );
  XNOR2X1 \dp/U129  ( .A(\dp/random_num [1]), .B(\dp/num2 [1]), .Y(\dp/n274 )
         );
  XNOR2X1 \dp/U128  ( .A(\dp/random_num [2]), .B(\dp/num2 [2]), .Y(\dp/n275 )
         );
  NAND2X1 \dp/U127  ( .A(\dp/n274 ), .B(\dp/n275 ), .Y(\dp/n271 ) );
  OAI21X1 \dp/U126  ( .A(\dp/n270 ), .B(\dp/n271 ), .C(\dp/n272 ), .Y(
        \dp/n241 ) );
  NAND2X1 \dp/U125  ( .A(n87), .B(n89), .Y(\dp/n269 ) );
  NOR2X1 \dp/U124  ( .A(\dp/n269 ), .B(n86), .Y(\dp/n244 ) );
  OR2X1 \dp/U123  ( .A(\dp/n265 ), .B(\dp/count [3]), .Y(\dp/n268 ) );
  AOI21X1 \dp/U122  ( .A(n74), .B(\dp/n244 ), .C(\dp/n268 ), .Y(\dp/n266 ) );
  OAI21X1 \dp/U121  ( .A(\dp/n266 ), .B(\dp/n267 ), .C(n43), .Y(\dp/n255 ) );
  OAI21X1 \dp/U120  ( .A(\dp/count [3]), .B(\dp/n265 ), .C(n35), .Y(\dp/n264 )
         );
  OAI21X1 \dp/U119  ( .A(\dp/n263 ), .B(\dp/n255 ), .C(\dp/n264 ), .Y(
        \dp/n262 ) );
  AOI21X1 \dp/U118  ( .A(n89), .B(n35), .C(\dp/n262 ), .Y(\dp/n256 ) );
  NAND3X1 \dp/U117  ( .A(n35), .B(\dp/n252 ), .C(n34), .Y(\dp/n261 ) );
  OAI21X1 \dp/U116  ( .A(\dp/n256 ), .B(n87), .C(\dp/n261 ), .Y(\dp/n474 ) );
  NAND3X1 \dp/U115  ( .A(n35), .B(n89), .C(n34), .Y(\dp/n260 ) );
  OAI21X1 \dp/U114  ( .A(n34), .B(n89), .C(\dp/n260 ), .Y(\dp/n473 ) );
  NOR2X1 \dp/U113  ( .A(n89), .B(n87), .Y(\dp/n259 ) );
  NAND3X1 \dp/U112  ( .A(n34), .B(\dp/n258 ), .C(\dp/n259 ), .Y(\dp/n257 ) );
  OAI21X1 \dp/U111  ( .A(\dp/n256 ), .B(n86), .C(\dp/n257 ), .Y(\dp/n472 ) );
  NOR2X1 \dp/U110  ( .A(\dp/n256 ), .B(n88), .Y(\dp/n471 ) );
  NAND2X1 \dp/U109  ( .A(\dp/n244 ), .B(\dp/n255 ), .Y(\dp/n253 ) );
  NAND2X1 \dp/U108  ( .A(out_valid), .B(n42), .Y(\dp/n254 ) );
  OAI21X1 \dp/U107  ( .A(n37), .B(\dp/n253 ), .C(\dp/n254 ), .Y(\dp/n470 ) );
  NAND2X1 \dp/U106  ( .A(\dp/n252 ), .B(n86), .Y(\dp/n251 ) );
  OAI21X1 \dp/U105  ( .A(n37), .B(\dp/n251 ), .C(n43), .Y(\dp/n250 ) );
  OAI22X1 \dp/U104  ( .A(n85), .B(\dp/n250 ), .C(n36), .D(\dp/n237 ), .Y(
        \dp/n469 ) );
  NAND2X1 \dp/U103  ( .A(\dp/random_num [3]), .B(n35), .Y(\dp/n240 ) );
  OAI22X1 \dp/U102  ( .A(n84), .B(\dp/n250 ), .C(n36), .D(\dp/n240 ), .Y(
        \dp/n468 ) );
  NAND2X1 \dp/U101  ( .A(\dp/random_num [2]), .B(n35), .Y(\dp/n239 ) );
  OAI22X1 \dp/U100  ( .A(n83), .B(\dp/n250 ), .C(n36), .D(\dp/n239 ), .Y(
        \dp/n467 ) );
  NAND2X1 \dp/U99  ( .A(\dp/random_num [1]), .B(n35), .Y(\dp/n238 ) );
  OAI22X1 \dp/U98  ( .A(n82), .B(\dp/n250 ), .C(n36), .D(\dp/n238 ), .Y(
        \dp/n466 ) );
  OAI22X1 \dp/U97  ( .A(n77), .B(\dp/n249 ), .C(n38), .D(\dp/n238 ), .Y(
        \dp/n465 ) );
  OAI22X1 \dp/U96  ( .A(n76), .B(\dp/n249 ), .C(n38), .D(\dp/n239 ), .Y(
        \dp/n464 ) );
  OAI22X1 \dp/U95  ( .A(n75), .B(\dp/n249 ), .C(n38), .D(\dp/n240 ), .Y(
        \dp/n463 ) );
  NAND2X1 \dp/U94  ( .A(\dp/count [0]), .B(\dp/n248 ), .Y(\dp/n247 ) );
  OAI21X1 \dp/U93  ( .A(\dp/n246 ), .B(\dp/n247 ), .C(n43), .Y(\dp/n245 ) );
  OAI22X1 \dp/U92  ( .A(n81), .B(\dp/n245 ), .C(n39), .D(\dp/n237 ), .Y(
        \dp/n462 ) );
  OAI22X1 \dp/U91  ( .A(n80), .B(\dp/n245 ), .C(n39), .D(\dp/n238 ), .Y(
        \dp/n461 ) );
  OAI22X1 \dp/U90  ( .A(n79), .B(\dp/n245 ), .C(n39), .D(\dp/n239 ), .Y(
        \dp/n460 ) );
  OAI22X1 \dp/U89  ( .A(n78), .B(\dp/n245 ), .C(n39), .D(\dp/n240 ), .Y(
        \dp/n459 ) );
  NAND2X1 \dp/U88  ( .A(\dp/n243 ), .B(\dp/n244 ), .Y(\dp/n242 ) );
  OAI21X1 \dp/U87  ( .A(\dp/n241 ), .B(\dp/n242 ), .C(n43), .Y(\dp/n236 ) );
  OAI22X1 \dp/U86  ( .A(\dp/n236 ), .B(n73), .C(n40), .D(\dp/n240 ), .Y(
        \dp/n458 ) );
  OAI22X1 \dp/U85  ( .A(\dp/n236 ), .B(n72), .C(n40), .D(\dp/n239 ), .Y(
        \dp/n457 ) );
  OAI22X1 \dp/U84  ( .A(\dp/n236 ), .B(n71), .C(n40), .D(\dp/n238 ), .Y(
        \dp/n456 ) );
  OAI22X1 \dp/U83  ( .A(\dp/n236 ), .B(n70), .C(n40), .D(\dp/n237 ), .Y(
        \dp/n455 ) );
  OAI22X1 \dp/U82  ( .A(n4), .B(n69), .C(n6), .D(n26), .Y(\dp/n454 ) );
  OAI22X1 \dp/U81  ( .A(n4), .B(n68), .C(n6), .D(n27), .Y(\dp/n453 ) );
  OAI22X1 \dp/U80  ( .A(n4), .B(n67), .C(n6), .D(n28), .Y(\dp/n452 ) );
  OAI22X1 \dp/U79  ( .A(n4), .B(n66), .C(n6), .D(n29), .Y(\dp/n451 ) );
  OAI22X1 \dp/U78  ( .A(n4), .B(n64), .C(n6), .D(n14), .Y(\dp/n450 ) );
  OAI22X1 \dp/U77  ( .A(n4), .B(n63), .C(n6), .D(n15), .Y(\dp/n449 ) );
  OAI22X1 \dp/U76  ( .A(n4), .B(n62), .C(n6), .D(n16), .Y(\dp/n448 ) );
  AND2X2 \dp/U5  ( .A(n86), .B(\dp/n273 ), .Y(\dp/n284 ) );
  AND2X2 \dp/U4  ( .A(\dp/n273 ), .B(\dp/n248 ), .Y(\dp/n272 ) );
  AND2X2 \dp/U3  ( .A(\dp/count [2]), .B(\dp/n269 ), .Y(\dp/n265 ) );
  DFFNEGX1 \dp/temp2_reg[0]  ( .D(\dp/n439 ), .CLK(n3), .Q(\dp/temp2 [0]) );
  DFFNEGX1 \dp/temp2_reg[1]  ( .D(\dp/n440 ), .CLK(n3), .Q(\dp/temp2 [1]) );
  DFFNEGX1 \dp/temp2_reg[2]  ( .D(\dp/n441 ), .CLK(n3), .Q(\dp/temp2 [2]) );
  DFFNEGX1 \dp/temp2_reg[3]  ( .D(\dp/n442 ), .CLK(n3), .Q(\dp/temp2 [3]) );
  DFFNEGX1 \dp/temp1_reg[0]  ( .D(\dp/n443 ), .CLK(n3), .Q(\dp/temp1 [0]) );
  DFFNEGX1 \dp/temp1_reg[1]  ( .D(\dp/n444 ), .CLK(n3), .Q(\dp/temp1 [1]) );
  DFFNEGX1 \dp/temp1_reg[2]  ( .D(\dp/n445 ), .CLK(n3), .Q(\dp/temp1 [2]) );
  DFFNEGX1 \dp/temp1_reg[3]  ( .D(\dp/n446 ), .CLK(n3), .Q(\dp/temp1 [3]) );
  DFFNEGX1 \dp/temp0_reg[0]  ( .D(\dp/n447 ), .CLK(n3), .Q(\dp/temp0 [0]) );
  DFFNEGX1 \dp/temp0_reg[1]  ( .D(\dp/n448 ), .CLK(n3), .Q(\dp/temp0 [1]) );
  DFFNEGX1 \dp/temp0_reg[2]  ( .D(\dp/n449 ), .CLK(n3), .Q(\dp/temp0 [2]) );
  DFFNEGX1 \dp/temp0_reg[3]  ( .D(\dp/n450 ), .CLK(n3), .Q(\dp/temp0 [3]) );
  DFFNEGX1 \dp/temp3_reg[0]  ( .D(\dp/n451 ), .CLK(n3), .Q(\dp/temp3 [0]) );
  DFFNEGX1 \dp/temp3_reg[1]  ( .D(\dp/n452 ), .CLK(n3), .Q(\dp/temp3 [1]) );
  DFFNEGX1 \dp/temp3_reg[2]  ( .D(\dp/n453 ), .CLK(n3), .Q(\dp/temp3 [2]) );
  DFFNEGX1 \dp/temp3_reg[3]  ( .D(\dp/n454 ), .CLK(n3), .Q(\dp/temp3 [3]) );
  DFFNEGX1 \dp/num3_reg[0]  ( .D(\dp/n455 ), .CLK(n8), .Q(\dp/num3 [0]) );
  DFFNEGX1 \dp/num3_reg[1]  ( .D(\dp/n456 ), .CLK(n8), .Q(\dp/num3 [1]) );
  DFFNEGX1 \dp/num3_reg[2]  ( .D(\dp/n457 ), .CLK(n8), .Q(\dp/num3 [2]) );
  DFFNEGX1 \dp/num3_reg[3]  ( .D(\dp/n458 ), .CLK(n8), .Q(\dp/num3 [3]) );
  DFFNEGX1 \dp/valid_reg  ( .D(\dp/n470 ), .CLK(n8), .Q(out_valid) );
  DFFNEGX1 \dp/num1_reg[3]  ( .D(\dp/n463 ), .CLK(n8), .Q(\dp/num1 [3]) );
  DFFNEGX1 \dp/num1_reg[2]  ( .D(\dp/n464 ), .CLK(n8), .Q(\dp/num1 [2]) );
  DFFNEGX1 \dp/num1_reg[1]  ( .D(\dp/n465 ), .CLK(n8), .Q(\dp/num1 [1]) );
  DFFNEGX1 \dp/num2_reg[3]  ( .D(\dp/n459 ), .CLK(n8), .Q(\dp/num2 [3]) );
  DFFNEGX1 \dp/num2_reg[2]  ( .D(\dp/n460 ), .CLK(n8), .Q(\dp/num2 [2]) );
  DFFNEGX1 \dp/num2_reg[1]  ( .D(\dp/n461 ), .CLK(n8), .Q(\dp/num2 [1]) );
  DFFNEGX1 \dp/num2_reg[0]  ( .D(\dp/n462 ), .CLK(n8), .Q(\dp/num2 [0]) );
  DFFNEGX1 \dp/num0_reg[1]  ( .D(\dp/n466 ), .CLK(n7), .Q(\dp/num0 [1]) );
  DFFNEGX1 \dp/num0_reg[2]  ( .D(\dp/n467 ), .CLK(n7), .Q(\dp/num0 [2]) );
  DFFNEGX1 \dp/num0_reg[3]  ( .D(\dp/n468 ), .CLK(n7), .Q(\dp/num0 [3]) );
  DFFNEGX1 \dp/num0_reg[0]  ( .D(\dp/n469 ), .CLK(n7), .Q(\dp/num0 [0]) );
  DFFNEGX1 \dp/count_reg[2]  ( .D(\dp/n472 ), .CLK(n7), .Q(\dp/count [2]) );
  DFFNEGX1 \dp/count_reg[1]  ( .D(\dp/n474 ), .CLK(n7), .Q(\dp/count [1]) );
  DFFNEGX1 \dp/count_reg[3]  ( .D(\dp/n471 ), .CLK(n7), .Q(\dp/count [3]) );
  DFFNEGX1 \dp/count_reg[0]  ( .D(\dp/n473 ), .CLK(n7), .Q(\dp/count [0]) );
  DFFNEGX1 \dp/num1_reg[0]  ( .D(\dp/n475 ), .CLK(n7), .Q(\dp/num1 [0]) );
  XOR2X1 \dp/prng_inst/U15  ( .A(\dp/prng_inst/random [7]), .B(
        \dp/prng_inst/random [5]), .Y(\dp/prng_inst/n5 ) );
  XOR2X1 \dp/prng_inst/U14  ( .A(\dp/prng_inst/random [4]), .B(
        \dp/prng_inst/random [3]), .Y(\dp/prng_inst/n6 ) );
  XOR2X1 \dp/prng_inst/U13  ( .A(\dp/prng_inst/n5 ), .B(\dp/prng_inst/n6 ), 
        .Y(\dp/prng_inst/feedback ) );
  AOI22X1 \dp/prng_inst/U11  ( .A(n91), .B(n43), .C(\dp/random_num [0]), .D(
        out_reset), .Y(\dp/prng_inst/n4 ) );
  AOI22X1 \dp/prng_inst/U9  ( .A(n92), .B(n43), .C(\dp/random_num [1]), .D(
        out_reset), .Y(\dp/prng_inst/n3 ) );
  AOI22X1 \dp/prng_inst/U7  ( .A(n93), .B(n43), .C(\dp/random_num [2]), .D(
        out_reset), .Y(\dp/prng_inst/n2 ) );
  AOI22X1 \dp/prng_inst/U5  ( .A(n94), .B(n43), .C(\dp/random_num [3]), .D(
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
        \dp/prng_inst/rem_20/quotient [0]), .Y(n109) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_0_1  ( .B(n95), .A(n113), 
        .S(\dp/prng_inst/rem_20/quotient [0]), .Y(n110) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_0_2  ( .B(n96), .A(
        \dp/prng_inst/rem_20/u_div/SumTmp[0][2] ), .S(
        \dp/prng_inst/rem_20/quotient [0]), .Y(n111) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_0_3  ( .B(n97), .A(
        \dp/prng_inst/rem_20/u_div/SumTmp[0][3] ), .S(
        \dp/prng_inst/rem_20/quotient [0]), .Y(n112) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_1_0  ( .B(
        \dp/prng_inst/random [1]), .A(\dp/prng_inst/random [1]), .S(
        \dp/prng_inst/rem_20/quotient [1]), .Y(n113) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_1_1  ( .B(n98), .A(n117), 
        .S(\dp/prng_inst/rem_20/quotient [1]), .Y(n114) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_1_2  ( .B(n99), .A(
        \dp/prng_inst/rem_20/u_div/SumTmp[1][2] ), .S(
        \dp/prng_inst/rem_20/quotient [1]), .Y(n115) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_1_3  ( .B(n100), .A(
        \dp/prng_inst/rem_20/u_div/SumTmp[1][3] ), .S(
        \dp/prng_inst/rem_20/quotient [1]), .Y(n116) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_2_0  ( .B(
        \dp/prng_inst/random [2]), .A(\dp/prng_inst/random [2]), .S(
        \dp/prng_inst/rem_20/quotient [2]), .Y(n117) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_2_1  ( .B(n101), .A(n121), 
        .S(\dp/prng_inst/rem_20/quotient [2]), .Y(n118) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_2_2  ( .B(n102), .A(
        \dp/prng_inst/rem_20/u_div/SumTmp[2][2] ), .S(
        \dp/prng_inst/rem_20/quotient [2]), .Y(n119) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_2_3  ( .B(n103), .A(
        \dp/prng_inst/rem_20/u_div/SumTmp[2][3] ), .S(
        \dp/prng_inst/rem_20/quotient [2]), .Y(n120) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_3_0  ( .B(
        \dp/prng_inst/random [3]), .A(\dp/prng_inst/random [3]), .S(
        \dp/prng_inst/rem_20/quotient [3]), .Y(n121) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_3_1  ( .B(n104), .A(n125), 
        .S(\dp/prng_inst/rem_20/quotient [3]), .Y(n122) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_3_2  ( .B(n105), .A(
        \dp/prng_inst/rem_20/u_div/SumTmp[3][2] ), .S(
        \dp/prng_inst/rem_20/quotient [3]), .Y(n123) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_3_3  ( .B(n106), .A(
        \dp/prng_inst/rem_20/u_div/SumTmp[3][3] ), .S(
        \dp/prng_inst/rem_20/quotient [3]), .Y(n124) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_4_0  ( .B(
        \dp/prng_inst/random [4]), .A(\dp/prng_inst/random [4]), .S(
        \dp/prng_inst/rem_20/quotient [4]), .Y(n125) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_4_1  ( .B(
        \dp/prng_inst/random [5]), .A(n108), .S(
        \dp/prng_inst/rem_20/quotient [4]), .Y(n126) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_4_2  ( .B(
        \dp/prng_inst/random [6]), .A(\dp/prng_inst/rem_20/u_div/SumTmp[4][2] ), .S(\dp/prng_inst/rem_20/quotient [4]), .Y(n127) );
  MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_4_3  ( .B(
        \dp/prng_inst/random [7]), .A(\dp/prng_inst/rem_20/u_div/SumTmp[4][3] ), .S(\dp/prng_inst/rem_20/quotient [4]), .Y(n128) );
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
  INVX2 U11 ( .A(\dp/n235 ), .Y(n5) );
  INVX2 U12 ( .A(in_clka), .Y(n11) );
  INVX2 U13 ( .A(in_loadtest), .Y(n12) );
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
  INVX2 U35 ( .A(\dp/n262 ), .Y(n34) );
  INVX2 U36 ( .A(\dp/n267 ), .Y(n35) );
  INVX2 U37 ( .A(\dp/n250 ), .Y(n36) );
  INVX2 U38 ( .A(\dp/n243 ), .Y(n37) );
  INVX2 U39 ( .A(\dp/n249 ), .Y(n38) );
  INVX2 U40 ( .A(\dp/n245 ), .Y(n39) );
  INVX2 U41 ( .A(\dp/n236 ), .Y(n40) );
  INVX2 U42 ( .A(\dp/n258 ), .Y(n41) );
  INVX2 U43 ( .A(\dp/n255 ), .Y(n42) );
  INVX2 U44 ( .A(\main_fsm/n12 ), .Y(n44) );
  INVX2 U45 ( .A(out_state[1]), .Y(n45) );
  INVX2 U46 ( .A(out_state[0]), .Y(n46) );
  INVX2 U47 ( .A(\dp/n293 ), .Y(out_Anum[2]) );
  INVX2 U48 ( .A(\dp/n416 ), .Y(n48) );
  INVX2 U49 ( .A(\dp/n333 ), .Y(out_Bnum[2]) );
  INVX2 U50 ( .A(\dp/n335 ), .Y(n50) );
  INVX2 U51 ( .A(\dp/temp2 [0]), .Y(n51) );
  INVX2 U52 ( .A(\dp/temp2 [1]), .Y(n52) );
  INVX2 U53 ( .A(\dp/temp2 [2]), .Y(n53) );
  INVX2 U54 ( .A(\dp/temp2 [3]), .Y(n54) );
  INVX2 U55 ( .A(\dp/n417 ), .Y(n55) );
  INVX2 U56 ( .A(\dp/temp1 [0]), .Y(n56) );
  INVX2 U57 ( .A(\dp/temp1 [1]), .Y(n57) );
  INVX2 U58 ( .A(\dp/temp1 [2]), .Y(n58) );
  INVX2 U59 ( .A(\dp/temp1 [3]), .Y(n59) );
  INVX2 U60 ( .A(\dp/n415 ), .Y(n60) );
  INVX2 U61 ( .A(\dp/temp0 [0]), .Y(n61) );
  INVX2 U62 ( .A(\dp/temp0 [1]), .Y(n62) );
  INVX2 U63 ( .A(\dp/temp0 [2]), .Y(n63) );
  INVX2 U64 ( .A(\dp/temp0 [3]), .Y(n64) );
  INVX2 U65 ( .A(\dp/n418 ), .Y(n65) );
  INVX2 U66 ( .A(\dp/temp3 [0]), .Y(n66) );
  INVX2 U67 ( .A(\dp/temp3 [1]), .Y(n67) );
  INVX2 U68 ( .A(\dp/temp3 [2]), .Y(n68) );
  INVX2 U69 ( .A(\dp/temp3 [3]), .Y(n69) );
  INVX2 U70 ( .A(\dp/num3 [0]), .Y(n70) );
  INVX2 U71 ( .A(\dp/num3 [1]), .Y(n71) );
  INVX2 U72 ( .A(\dp/num3 [2]), .Y(n72) );
  INVX2 U73 ( .A(\dp/num3 [3]), .Y(n73) );
  INVX2 U74 ( .A(\dp/n241 ), .Y(n74) );
  INVX2 U75 ( .A(\dp/num1 [3]), .Y(n75) );
  INVX2 U76 ( .A(\dp/num1 [2]), .Y(n76) );
  INVX2 U77 ( .A(\dp/num1 [1]), .Y(n77) );
  INVX2 U78 ( .A(\dp/num2 [3]), .Y(n78) );
  INVX2 U79 ( .A(\dp/num2 [2]), .Y(n79) );
  INVX2 U80 ( .A(\dp/num2 [1]), .Y(n80) );
  INVX2 U81 ( .A(\dp/num2 [0]), .Y(n81) );
  INVX2 U82 ( .A(\dp/num0 [1]), .Y(n82) );
  INVX2 U83 ( .A(\dp/num0 [2]), .Y(n83) );
  INVX2 U84 ( .A(\dp/num0 [3]), .Y(n84) );
  INVX2 U85 ( .A(\dp/num0 [0]), .Y(n85) );
  INVX2 U86 ( .A(\dp/count [2]), .Y(n86) );
  INVX2 U87 ( .A(\dp/count [1]), .Y(n87) );
  INVX2 U88 ( .A(\dp/count [3]), .Y(n88) );
  INVX2 U89 ( .A(\dp/count [0]), .Y(n89) );
  INVX2 U90 ( .A(\dp/num1 [0]), .Y(n90) );
  INVX2 U91 ( .A(n109), .Y(n91) );
  INVX2 U92 ( .A(n110), .Y(n92) );
  INVX2 U93 ( .A(n111), .Y(n93) );
  INVX2 U94 ( .A(n112), .Y(n94) );
  INVX2 U95 ( .A(n113), .Y(n95) );
  INVX2 U96 ( .A(n114), .Y(n96) );
  INVX2 U97 ( .A(n115), .Y(n97) );
  INVX2 U98 ( .A(n117), .Y(n98) );
  INVX2 U99 ( .A(n118), .Y(n99) );
  INVX2 U100 ( .A(n119), .Y(n100) );
  INVX2 U101 ( .A(n121), .Y(n101) );
  INVX2 U102 ( .A(n122), .Y(n102) );
  INVX2 U103 ( .A(n123), .Y(n103) );
  INVX2 U104 ( .A(n125), .Y(n104) );
  INVX2 U105 ( .A(n126), .Y(n105) );
  INVX2 U106 ( .A(n127), .Y(n106) );
  INVX2 U107 ( .A(\dp/prng_inst/random [7]), .Y(n107) );
  INVX2 U108 ( .A(\dp/prng_inst/random [5]), .Y(n108) );
  XNOR2X1 U109 ( .A(\dp/prng_inst/random [7]), .B(n129), .Y(
        \dp/prng_inst/rem_20/u_div/SumTmp[4][3] ) );
  XNOR2X1 U110 ( .A(\dp/prng_inst/random [5]), .B(\dp/prng_inst/random [6]), 
        .Y(\dp/prng_inst/rem_20/u_div/SumTmp[4][2] ) );
  NOR2X1 U111 ( .A(n129), .B(n107), .Y(\dp/prng_inst/rem_20/quotient [4]) );
  NOR2X1 U112 ( .A(\dp/prng_inst/random [6]), .B(\dp/prng_inst/random [5]), 
        .Y(n129) );
  XNOR2X1 U113 ( .A(n106), .B(n130), .Y(
        \dp/prng_inst/rem_20/u_div/SumTmp[3][3] ) );
  XNOR2X1 U114 ( .A(n104), .B(n105), .Y(
        \dp/prng_inst/rem_20/u_div/SumTmp[3][2] ) );
  OAI21X1 U115 ( .A(n130), .B(n127), .C(n128), .Y(
        \dp/prng_inst/rem_20/quotient [3]) );
  NOR2X1 U116 ( .A(n105), .B(n104), .Y(n130) );
  XNOR2X1 U117 ( .A(n103), .B(n131), .Y(
        \dp/prng_inst/rem_20/u_div/SumTmp[2][3] ) );
  XNOR2X1 U118 ( .A(n101), .B(n102), .Y(
        \dp/prng_inst/rem_20/u_div/SumTmp[2][2] ) );
  OAI21X1 U119 ( .A(n131), .B(n123), .C(n124), .Y(
        \dp/prng_inst/rem_20/quotient [2]) );
  NOR2X1 U120 ( .A(n102), .B(n101), .Y(n131) );
  XNOR2X1 U121 ( .A(n100), .B(n132), .Y(
        \dp/prng_inst/rem_20/u_div/SumTmp[1][3] ) );
  XNOR2X1 U122 ( .A(n98), .B(n99), .Y(\dp/prng_inst/rem_20/u_div/SumTmp[1][2] ) );
  OAI21X1 U123 ( .A(n132), .B(n119), .C(n120), .Y(
        \dp/prng_inst/rem_20/quotient [1]) );
  NOR2X1 U124 ( .A(n99), .B(n98), .Y(n132) );
  XNOR2X1 U125 ( .A(n97), .B(n133), .Y(
        \dp/prng_inst/rem_20/u_div/SumTmp[0][3] ) );
  XNOR2X1 U126 ( .A(n95), .B(n96), .Y(\dp/prng_inst/rem_20/u_div/SumTmp[0][2] ) );
  OAI21X1 U127 ( .A(n133), .B(n115), .C(n116), .Y(
        \dp/prng_inst/rem_20/quotient [0]) );
  NOR2X1 U128 ( .A(n96), .B(n95), .Y(n133) );
endmodule

