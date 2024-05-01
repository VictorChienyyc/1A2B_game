/*
###############################################################
#  Generated by:      Cadence Innovus 22.14-s061_1
#  OS:                Linux x86_64(Host ID borax.clear.rice.edu)
#  Generated on:      Tue Apr 30 18:15:56 2024
#  Design:            top
#  Command:           saveNetlist final.v
###############################################################
*/
/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Apr 30 18:15:04 2024
/////////////////////////////////////////////////////////////
module top (
	in_clka, 
	in_clkb, 
	in_loadtest, 
	in_enter, 
	in_restart, 
	in_ans0, 
	in_ans1, 
	in_ans2, 
	in_ans3, 
	out_Anum, 
	out_Bnum, 
	out_state, 
	out_valid);
   input in_clka;
   input in_clkb;
   input in_loadtest;
   input in_enter;
   input in_restart;
   input [3:0] in_ans0;
   input [3:0] in_ans1;
   input [3:0] in_ans2;
   input [3:0] in_ans3;
   output [2:0] out_Anum;
   output [2:0] out_Bnum;
   output [1:0] out_state;
   output out_valid;

   // Internal wires
   wire out_save_test;
   wire out_reset;
   wire \main_fsm/n12 ;
   wire \main_fsm/n10 ;
   wire \main_fsm/n9 ;
   wire \main_fsm/N20 ;
   wire \dp/n477 ;
   wire \dp/n476 ;
   wire \dp/n475 ;
   wire \dp/n474 ;
   wire \dp/n473 ;
   wire \dp/n472 ;
   wire \dp/n471 ;
   wire \dp/n470 ;
   wire \dp/n469 ;
   wire \dp/n468 ;
   wire \dp/n467 ;
   wire \dp/n466 ;
   wire \dp/n465 ;
   wire \dp/n464 ;
   wire \dp/n463 ;
   wire \dp/n462 ;
   wire \dp/n461 ;
   wire \dp/n460 ;
   wire \dp/n459 ;
   wire \dp/n458 ;
   wire \dp/n457 ;
   wire \dp/n456 ;
   wire \dp/n455 ;
   wire \dp/n454 ;
   wire \dp/n453 ;
   wire \dp/n452 ;
   wire \dp/n451 ;
   wire \dp/n450 ;
   wire \dp/n449 ;
   wire \dp/n448 ;
   wire \dp/n447 ;
   wire \dp/n446 ;
   wire \dp/n445 ;
   wire \dp/n444 ;
   wire \dp/n443 ;
   wire \dp/n442 ;
   wire \dp/n441 ;
   wire \dp/n440 ;
   wire \dp/n439 ;
   wire \dp/n438 ;
   wire \dp/n437 ;
   wire \dp/n436 ;
   wire \dp/n435 ;
   wire \dp/n434 ;
   wire \dp/n433 ;
   wire \dp/n432 ;
   wire \dp/n431 ;
   wire \dp/n430 ;
   wire \dp/n429 ;
   wire \dp/n428 ;
   wire \dp/n427 ;
   wire \dp/n426 ;
   wire \dp/n425 ;
   wire \dp/n424 ;
   wire \dp/n423 ;
   wire \dp/n422 ;
   wire \dp/n421 ;
   wire \dp/n420 ;
   wire \dp/n419 ;
   wire \dp/n418 ;
   wire \dp/n417 ;
   wire \dp/n416 ;
   wire \dp/n415 ;
   wire \dp/n414 ;
   wire \dp/n413 ;
   wire \dp/n412 ;
   wire \dp/n411 ;
   wire \dp/n410 ;
   wire \dp/n409 ;
   wire \dp/n408 ;
   wire \dp/n407 ;
   wire \dp/n406 ;
   wire \dp/n405 ;
   wire \dp/n404 ;
   wire \dp/n403 ;
   wire \dp/n402 ;
   wire \dp/n401 ;
   wire \dp/n400 ;
   wire \dp/n399 ;
   wire \dp/n398 ;
   wire \dp/n397 ;
   wire \dp/n396 ;
   wire \dp/n395 ;
   wire \dp/n394 ;
   wire \dp/n393 ;
   wire \dp/n392 ;
   wire \dp/n391 ;
   wire \dp/n390 ;
   wire \dp/n389 ;
   wire \dp/n388 ;
   wire \dp/n387 ;
   wire \dp/n386 ;
   wire \dp/n385 ;
   wire \dp/n384 ;
   wire \dp/n383 ;
   wire \dp/n382 ;
   wire \dp/n381 ;
   wire \dp/n380 ;
   wire \dp/n379 ;
   wire \dp/n378 ;
   wire \dp/n377 ;
   wire \dp/n376 ;
   wire \dp/n375 ;
   wire \dp/n374 ;
   wire \dp/n373 ;
   wire \dp/n372 ;
   wire \dp/n371 ;
   wire \dp/n370 ;
   wire \dp/n369 ;
   wire \dp/n368 ;
   wire \dp/n367 ;
   wire \dp/n366 ;
   wire \dp/n365 ;
   wire \dp/n364 ;
   wire \dp/n363 ;
   wire \dp/n362 ;
   wire \dp/n361 ;
   wire \dp/n360 ;
   wire \dp/n359 ;
   wire \dp/n358 ;
   wire \dp/n357 ;
   wire \dp/n356 ;
   wire \dp/n355 ;
   wire \dp/n354 ;
   wire \dp/n353 ;
   wire \dp/n352 ;
   wire \dp/n351 ;
   wire \dp/n350 ;
   wire \dp/n349 ;
   wire \dp/n348 ;
   wire \dp/n347 ;
   wire \dp/n346 ;
   wire \dp/n345 ;
   wire \dp/n344 ;
   wire \dp/n343 ;
   wire \dp/n342 ;
   wire \dp/n341 ;
   wire \dp/n340 ;
   wire \dp/n339 ;
   wire \dp/n338 ;
   wire \dp/n337 ;
   wire \dp/n336 ;
   wire \dp/n335 ;
   wire \dp/n295 ;
   wire \dp/n292 ;
   wire \dp/n291 ;
   wire \dp/n290 ;
   wire \dp/n289 ;
   wire \dp/n288 ;
   wire \dp/n287 ;
   wire \dp/n286 ;
   wire \dp/n285 ;
   wire \dp/n284 ;
   wire \dp/n283 ;
   wire \dp/n282 ;
   wire \dp/n281 ;
   wire \dp/n280 ;
   wire \dp/n279 ;
   wire \dp/n278 ;
   wire \dp/n277 ;
   wire \dp/n276 ;
   wire \dp/n275 ;
   wire \dp/n274 ;
   wire \dp/n273 ;
   wire \dp/n271 ;
   wire \dp/n270 ;
   wire \dp/n269 ;
   wire \dp/n268 ;
   wire \dp/n267 ;
   wire \dp/n266 ;
   wire \dp/n265 ;
   wire \dp/n264 ;
   wire \dp/n263 ;
   wire \dp/n262 ;
   wire \dp/n261 ;
   wire \dp/n260 ;
   wire \dp/n259 ;
   wire \dp/n258 ;
   wire \dp/n257 ;
   wire \dp/n256 ;
   wire \dp/n255 ;
   wire \dp/n254 ;
   wire \dp/n253 ;
   wire \dp/n252 ;
   wire \dp/n251 ;
   wire \dp/n250 ;
   wire \dp/n249 ;
   wire \dp/n248 ;
   wire \dp/n247 ;
   wire \dp/n246 ;
   wire \dp/n245 ;
   wire \dp/n244 ;
   wire \dp/n243 ;
   wire \dp/n242 ;
   wire \dp/n241 ;
   wire \dp/n240 ;
   wire \dp/n239 ;
   wire \dp/n238 ;
   wire \dp/n237 ;
   wire \dp/n236 ;
   wire \dp/dp_cluster_1/N137 ;
   wire \dp/dp_cluster_1/N138 ;
   wire \dp/dp_cluster_0/N160 ;
   wire \dp/N159 ;
   wire \dp/N155 ;
   wire \dp/N151 ;
   wire \dp/N147 ;
   wire \dp/prng_inst/n8 ;
   wire \dp/prng_inst/n7 ;
   wire \dp/prng_inst/n6 ;
   wire \dp/prng_inst/n5 ;
   wire \dp/prng_inst/n4 ;
   wire \dp/prng_inst/n3 ;
   wire \dp/prng_inst/n1 ;
   wire \dp/prng_inst/N15 ;
   wire \dp/prng_inst/N14 ;
   wire \dp/prng_inst/N13 ;
   wire \dp/prng_inst/N12 ;
   wire \dp/prng_inst/N11 ;
   wire \dp/prng_inst/N10 ;
   wire \dp/prng_inst/N9 ;
   wire \dp/prng_inst/N8 ;
   wire \dp/prng_inst/rem_20/u_div/SumTmp[4][3] ;
   wire \dp/prng_inst/rem_20/u_div/SumTmp[4][2] ;
   wire \dp/prng_inst/rem_20/u_div/SumTmp[3][3] ;
   wire \dp/prng_inst/rem_20/u_div/SumTmp[3][2] ;
   wire \dp/prng_inst/rem_20/u_div/SumTmp[2][3] ;
   wire \dp/prng_inst/rem_20/u_div/SumTmp[2][2] ;
   wire \dp/prng_inst/rem_20/u_div/SumTmp[1][3] ;
   wire \dp/prng_inst/rem_20/u_div/SumTmp[1][2] ;
   wire \dp/prng_inst/rem_20/u_div/SumTmp[0][3] ;
   wire \dp/prng_inst/rem_20/u_div/SumTmp[0][2] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n46;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire [3:0] \dp/temp3 ;
   wire [3:0] \dp/temp2 ;
   wire [3:0] \dp/temp1 ;
   wire [3:0] \dp/temp0 ;
   wire [3:0] \dp/num3 ;
   wire [3:0] \dp/num2 ;
   wire [3:0] \dp/num1 ;
   wire [3:0] \dp/num0 ;
   wire [3:0] \dp/count ;
   wire [3:0] \dp/random_num ;
   wire [7:0] \dp/prng_inst/random ;
   wire [7:0] \dp/prng_inst/rem_20/quotient ;

   AOI21X1 \main_fsm/U15  (.Y(\main_fsm/N20 ),
	.C(in_restart),
	.B(n44),
	.A(out_state[1]));
   NOR2X1 \main_fsm/U14  (.Y(\main_fsm/n9 ),
	.B(out_state[1]),
	.A(n44));
   NAND3X1 \main_fsm/U13  (.Y(\main_fsm/n12 ),
	.C(in_enter),
	.B(n11),
	.A(\main_fsm/n9 ));
   AOI21X1 \main_fsm/U10  (.Y(\main_fsm/n10 ),
	.C(\main_fsm/n9 ),
	.B(out_save_test),
	.A(out_state[0]));
   DFFNEGX1 \main_fsm/reset_reg  (.Q(out_reset),
	.D(n44),
	.CLK(n2));
   DFFNEGX1 \main_fsm/save_test_reg  (.Q(out_save_test),
	.D(n43),
	.CLK(n2));
   DFFNEGX1 \main_fsm/state_reg[1]  (.Q(out_state[1]),
	.D(n10),
	.CLK(n8));
   DFFNEGX1 \main_fsm/state_reg[0]  (.Q(out_state[0]),
	.D(\main_fsm/N20 ),
	.CLK(n7));
   XNOR2X1 \dp/U329  (.Y(\dp/n436 ),
	.B(\dp/temp3 [1]),
	.A(\dp/num3 [1]));
   XNOR2X1 \dp/U328  (.Y(\dp/n437 ),
	.B(\dp/temp3 [2]),
	.A(\dp/num3 [2]));
   XNOR2X1 \dp/U327  (.Y(\dp/n439 ),
	.B(\dp/num3 [3]),
	.A(n67));
   XNOR2X1 \dp/U326  (.Y(\dp/n440 ),
	.B(\dp/num3 [0]),
	.A(n64));
   NOR2X1 \dp/U325  (.Y(\dp/n438 ),
	.B(\dp/n440 ),
	.A(\dp/n439 ));
   NAND3X1 \dp/U324  (.Y(\dp/n420 ),
	.C(\dp/n438 ),
	.B(\dp/n437 ),
	.A(\dp/n436 ));
   XNOR2X1 \dp/U323  (.Y(\dp/n431 ),
	.B(\dp/num0 [1]),
	.A(\dp/temp0 [1]));
   XNOR2X1 \dp/U322  (.Y(\dp/n432 ),
	.B(\dp/num0 [2]),
	.A(\dp/temp0 [2]));
   XNOR2X1 \dp/U321  (.Y(\dp/n434 ),
	.B(\dp/num0 [3]),
	.A(n62));
   XNOR2X1 \dp/U320  (.Y(\dp/n435 ),
	.B(\dp/num0 [0]),
	.A(n59));
   NOR2X1 \dp/U319  (.Y(\dp/n433 ),
	.B(\dp/n435 ),
	.A(\dp/n434 ));
   NAND3X1 \dp/U318  (.Y(\dp/n417 ),
	.C(\dp/n433 ),
	.B(\dp/n432 ),
	.A(\dp/n431 ));
   XNOR2X1 \dp/U317  (.Y(\dp/n426 ),
	.B(\dp/num2 [1]),
	.A(\dp/temp2 [1]));
   XNOR2X1 \dp/U316  (.Y(\dp/n427 ),
	.B(\dp/num2 [2]),
	.A(\dp/temp2 [2]));
   XNOR2X1 \dp/U315  (.Y(\dp/n429 ),
	.B(\dp/num2 [3]),
	.A(n52));
   XNOR2X1 \dp/U314  (.Y(\dp/n430 ),
	.B(\dp/num2 [0]),
	.A(n49));
   NOR2X1 \dp/U313  (.Y(\dp/n428 ),
	.B(\dp/n430 ),
	.A(\dp/n429 ));
   NAND3X1 \dp/U312  (.Y(\dp/n418 ),
	.C(\dp/n428 ),
	.B(\dp/n427 ),
	.A(\dp/n426 ));
   XNOR2X1 \dp/U311  (.Y(\dp/n421 ),
	.B(\dp/num1 [1]),
	.A(\dp/temp1 [1]));
   XNOR2X1 \dp/U310  (.Y(\dp/n422 ),
	.B(\dp/num1 [2]),
	.A(\dp/temp1 [2]));
   XNOR2X1 \dp/U309  (.Y(\dp/n424 ),
	.B(\dp/num1 [3]),
	.A(n57));
   XNOR2X1 \dp/U308  (.Y(\dp/n425 ),
	.B(\dp/num1 [0]),
	.A(n54));
   NOR2X1 \dp/U307  (.Y(\dp/n423 ),
	.B(\dp/n425 ),
	.A(\dp/n424 ));
   NAND3X1 \dp/U306  (.Y(\dp/n419 ),
	.C(\dp/n423 ),
	.B(\dp/n422 ),
	.A(\dp/n421 ));
   XNOR2X1 \dp/U305  (.Y(\dp/n416 ),
	.B(n53),
	.A(n46));
   XNOR2X1 \dp/U304  (.Y(\dp/dp_cluster_1/N137 ),
	.B(\dp/n416 ),
	.A(n58));
   XNOR2X1 \dp/U303  (.Y(out_Anum[0]),
	.B(\dp/dp_cluster_1/N137 ),
	.A(\dp/n420 ));
   NAND2X1 \dp/U302  (.Y(\dp/n415 ),
	.B(\dp/dp_cluster_1/N137 ),
	.A(n63));
   OAI22X1 \dp/U301  (.Y(\dp/dp_cluster_1/N138 ),
	.D(\dp/n419 ),
	.C(\dp/n418 ),
	.B(\dp/n417 ),
	.A(\dp/n416 ));
   XNOR2X1 \dp/U300  (.Y(out_Anum[1]),
	.B(\dp/dp_cluster_1/N138 ),
	.A(\dp/n415 ));
   NAND3X1 \dp/U299  (.Y(\dp/n295 ),
	.C(n63),
	.B(\dp/dp_cluster_1/N138 ),
	.A(\dp/dp_cluster_1/N137 ));
   XNOR2X1 \dp/U298  (.Y(\dp/n413 ),
	.B(\dp/num0 [0]),
	.A(\dp/temp1 [0]));
   XNOR2X1 \dp/U297  (.Y(\dp/n414 ),
	.B(\dp/num0 [3]),
	.A(\dp/temp1 [3]));
   NAND2X1 \dp/U296  (.Y(\dp/n396 ),
	.B(\dp/n414 ),
	.A(\dp/n413 ));
   XNOR2X1 \dp/U295  (.Y(\dp/n411 ),
	.B(\dp/num0 [1]),
	.A(\dp/temp1 [1]));
   XNOR2X1 \dp/U294  (.Y(\dp/n412 ),
	.B(\dp/num0 [2]),
	.A(\dp/temp1 [2]));
   NAND2X1 \dp/U293  (.Y(\dp/n397 ),
	.B(\dp/n412 ),
	.A(\dp/n411 ));
   XNOR2X1 \dp/U292  (.Y(\dp/n409 ),
	.B(\dp/num0 [2]),
	.A(n66));
   XNOR2X1 \dp/U291  (.Y(\dp/n410 ),
	.B(\dp/num0 [1]),
	.A(n65));
   NOR2X1 \dp/U290  (.Y(\dp/n399 ),
	.B(\dp/n410 ),
	.A(\dp/n409 ));
   XNOR2X1 \dp/U289  (.Y(\dp/n407 ),
	.B(\dp/num0 [3]),
	.A(n67));
   XNOR2X1 \dp/U288  (.Y(\dp/n408 ),
	.B(\dp/num0 [0]),
	.A(n64));
   NOR2X1 \dp/U287  (.Y(\dp/n400 ),
	.B(\dp/n408 ),
	.A(\dp/n407 ));
   XNOR2X1 \dp/U286  (.Y(\dp/n405 ),
	.B(\dp/num0 [2]),
	.A(n51));
   XNOR2X1 \dp/U285  (.Y(\dp/n406 ),
	.B(\dp/num0 [1]),
	.A(n50));
   NOR2X1 \dp/U284  (.Y(\dp/n401 ),
	.B(\dp/n406 ),
	.A(\dp/n405 ));
   XNOR2X1 \dp/U283  (.Y(\dp/n403 ),
	.B(\dp/num0 [3]),
	.A(n52));
   XNOR2X1 \dp/U282  (.Y(\dp/n404 ),
	.B(\dp/num0 [0]),
	.A(n49));
   NOR2X1 \dp/U281  (.Y(\dp/n402 ),
	.B(\dp/n404 ),
	.A(\dp/n403 ));
   AOI22X1 \dp/U280  (.Y(\dp/n398 ),
	.D(\dp/n402 ),
	.C(\dp/n401 ),
	.B(\dp/n400 ),
	.A(\dp/n399 ));
   OAI21X1 \dp/U279  (.Y(\dp/N147 ),
	.C(\dp/n398 ),
	.B(\dp/n397 ),
	.A(\dp/n396 ));
   XNOR2X1 \dp/U278  (.Y(\dp/n394 ),
	.B(\dp/num1 [0]),
	.A(\dp/temp0 [0]));
   XNOR2X1 \dp/U277  (.Y(\dp/n395 ),
	.B(\dp/num1 [3]),
	.A(\dp/temp0 [3]));
   NAND2X1 \dp/U276  (.Y(\dp/n377 ),
	.B(\dp/n395 ),
	.A(\dp/n394 ));
   XNOR2X1 \dp/U275  (.Y(\dp/n392 ),
	.B(\dp/num1 [1]),
	.A(\dp/temp0 [1]));
   XNOR2X1 \dp/U274  (.Y(\dp/n393 ),
	.B(\dp/num1 [2]),
	.A(\dp/temp0 [2]));
   NAND2X1 \dp/U273  (.Y(\dp/n378 ),
	.B(\dp/n393 ),
	.A(\dp/n392 ));
   XNOR2X1 \dp/U272  (.Y(\dp/n390 ),
	.B(\dp/num1 [2]),
	.A(n66));
   XNOR2X1 \dp/U271  (.Y(\dp/n391 ),
	.B(\dp/num1 [1]),
	.A(n65));
   NOR2X1 \dp/U270  (.Y(\dp/n380 ),
	.B(\dp/n391 ),
	.A(\dp/n390 ));
   XNOR2X1 \dp/U269  (.Y(\dp/n388 ),
	.B(\dp/num1 [3]),
	.A(n67));
   XNOR2X1 \dp/U268  (.Y(\dp/n389 ),
	.B(\dp/num1 [0]),
	.A(n64));
   NOR2X1 \dp/U267  (.Y(\dp/n381 ),
	.B(\dp/n389 ),
	.A(\dp/n388 ));
   XNOR2X1 \dp/U266  (.Y(\dp/n386 ),
	.B(\dp/num1 [2]),
	.A(n51));
   XNOR2X1 \dp/U265  (.Y(\dp/n387 ),
	.B(\dp/num1 [1]),
	.A(n50));
   NOR2X1 \dp/U264  (.Y(\dp/n382 ),
	.B(\dp/n387 ),
	.A(\dp/n386 ));
   XNOR2X1 \dp/U263  (.Y(\dp/n384 ),
	.B(\dp/num1 [3]),
	.A(n52));
   XNOR2X1 \dp/U262  (.Y(\dp/n385 ),
	.B(\dp/num1 [0]),
	.A(n49));
   NOR2X1 \dp/U261  (.Y(\dp/n383 ),
	.B(\dp/n385 ),
	.A(\dp/n384 ));
   AOI22X1 \dp/U260  (.Y(\dp/n379 ),
	.D(\dp/n383 ),
	.C(\dp/n382 ),
	.B(\dp/n381 ),
	.A(\dp/n380 ));
   OAI21X1 \dp/U259  (.Y(\dp/N151 ),
	.C(\dp/n379 ),
	.B(\dp/n378 ),
	.A(\dp/n377 ));
   XNOR2X1 \dp/U258  (.Y(\dp/n375 ),
	.B(\dp/num2 [0]),
	.A(\dp/temp0 [0]));
   XNOR2X1 \dp/U257  (.Y(\dp/n376 ),
	.B(\dp/num2 [3]),
	.A(\dp/temp0 [3]));
   NAND2X1 \dp/U256  (.Y(\dp/n358 ),
	.B(\dp/n376 ),
	.A(\dp/n375 ));
   XNOR2X1 \dp/U255  (.Y(\dp/n373 ),
	.B(\dp/num2 [1]),
	.A(\dp/temp0 [1]));
   XNOR2X1 \dp/U254  (.Y(\dp/n374 ),
	.B(\dp/num2 [2]),
	.A(\dp/temp0 [2]));
   NAND2X1 \dp/U253  (.Y(\dp/n359 ),
	.B(\dp/n374 ),
	.A(\dp/n373 ));
   XNOR2X1 \dp/U252  (.Y(\dp/n371 ),
	.B(\dp/num2 [2]),
	.A(n66));
   XNOR2X1 \dp/U251  (.Y(\dp/n372 ),
	.B(\dp/num2 [1]),
	.A(n65));
   NOR2X1 \dp/U250  (.Y(\dp/n361 ),
	.B(\dp/n372 ),
	.A(\dp/n371 ));
   XNOR2X1 \dp/U249  (.Y(\dp/n369 ),
	.B(\dp/num2 [3]),
	.A(n67));
   XNOR2X1 \dp/U248  (.Y(\dp/n370 ),
	.B(\dp/num2 [0]),
	.A(n64));
   NOR2X1 \dp/U247  (.Y(\dp/n362 ),
	.B(\dp/n370 ),
	.A(\dp/n369 ));
   XNOR2X1 \dp/U246  (.Y(\dp/n367 ),
	.B(\dp/num2 [2]),
	.A(n56));
   XNOR2X1 \dp/U245  (.Y(\dp/n368 ),
	.B(\dp/num2 [1]),
	.A(n55));
   NOR2X1 \dp/U244  (.Y(\dp/n363 ),
	.B(\dp/n368 ),
	.A(\dp/n367 ));
   XNOR2X1 \dp/U243  (.Y(\dp/n365 ),
	.B(\dp/num2 [3]),
	.A(n57));
   XNOR2X1 \dp/U242  (.Y(\dp/n366 ),
	.B(\dp/num2 [0]),
	.A(n54));
   NOR2X1 \dp/U241  (.Y(\dp/n364 ),
	.B(\dp/n366 ),
	.A(\dp/n365 ));
   AOI22X1 \dp/U240  (.Y(\dp/n360 ),
	.D(\dp/n364 ),
	.C(\dp/n363 ),
	.B(\dp/n362 ),
	.A(\dp/n361 ));
   OAI21X1 \dp/U239  (.Y(\dp/N155 ),
	.C(\dp/n360 ),
	.B(\dp/n359 ),
	.A(\dp/n358 ));
   XOR2X1 \dp/U238  (.Y(\dp/n338 ),
	.B(\dp/N155 ),
	.A(\dp/N151 ));
   XOR2X1 \dp/U237  (.Y(\dp/dp_cluster_0/N160 ),
	.B(\dp/n338 ),
	.A(\dp/N147 ));
   XNOR2X1 \dp/U236  (.Y(\dp/n356 ),
	.B(\dp/temp0 [0]),
	.A(\dp/num3 [0]));
   XNOR2X1 \dp/U235  (.Y(\dp/n357 ),
	.B(\dp/temp0 [3]),
	.A(\dp/num3 [3]));
   NAND2X1 \dp/U234  (.Y(\dp/n339 ),
	.B(\dp/n357 ),
	.A(\dp/n356 ));
   XNOR2X1 \dp/U233  (.Y(\dp/n354 ),
	.B(\dp/temp0 [1]),
	.A(\dp/num3 [1]));
   XNOR2X1 \dp/U232  (.Y(\dp/n355 ),
	.B(\dp/temp0 [2]),
	.A(\dp/num3 [2]));
   NAND2X1 \dp/U231  (.Y(\dp/n340 ),
	.B(\dp/n355 ),
	.A(\dp/n354 ));
   XNOR2X1 \dp/U230  (.Y(\dp/n352 ),
	.B(\dp/num3 [2]),
	.A(n51));
   XNOR2X1 \dp/U229  (.Y(\dp/n353 ),
	.B(\dp/num3 [1]),
	.A(n50));
   NOR2X1 \dp/U228  (.Y(\dp/n342 ),
	.B(\dp/n353 ),
	.A(\dp/n352 ));
   XNOR2X1 \dp/U227  (.Y(\dp/n350 ),
	.B(\dp/num3 [3]),
	.A(n52));
   XNOR2X1 \dp/U226  (.Y(\dp/n351 ),
	.B(\dp/num3 [0]),
	.A(n49));
   NOR2X1 \dp/U225  (.Y(\dp/n343 ),
	.B(\dp/n351 ),
	.A(\dp/n350 ));
   XNOR2X1 \dp/U224  (.Y(\dp/n348 ),
	.B(\dp/num3 [2]),
	.A(n56));
   XNOR2X1 \dp/U223  (.Y(\dp/n349 ),
	.B(\dp/num3 [1]),
	.A(n55));
   NOR2X1 \dp/U222  (.Y(\dp/n344 ),
	.B(\dp/n349 ),
	.A(\dp/n348 ));
   XNOR2X1 \dp/U221  (.Y(\dp/n346 ),
	.B(\dp/num3 [3]),
	.A(n57));
   XNOR2X1 \dp/U220  (.Y(\dp/n347 ),
	.B(\dp/num3 [0]),
	.A(n54));
   NOR2X1 \dp/U219  (.Y(\dp/n345 ),
	.B(\dp/n347 ),
	.A(\dp/n346 ));
   AOI22X1 \dp/U218  (.Y(\dp/n341 ),
	.D(\dp/n345 ),
	.C(\dp/n344 ),
	.B(\dp/n343 ),
	.A(\dp/n342 ));
   OAI21X1 \dp/U217  (.Y(\dp/N159 ),
	.C(\dp/n341 ),
	.B(\dp/n340 ),
	.A(\dp/n339 ));
   XOR2X1 \dp/U216  (.Y(out_Bnum[0]),
	.B(\dp/N159 ),
	.A(\dp/dp_cluster_0/N160 ));
   NAND2X1 \dp/U215  (.Y(\dp/n336 ),
	.B(\dp/N159 ),
	.A(\dp/dp_cluster_0/N160 ));
   AOI22X1 \dp/U214  (.Y(\dp/n337 ),
	.D(\dp/n338 ),
	.C(\dp/N147 ),
	.B(\dp/N155 ),
	.A(\dp/N151 ));
   XNOR2X1 \dp/U213  (.Y(out_Bnum[1]),
	.B(n48),
	.A(\dp/n336 ));
   NAND3X1 \dp/U212  (.Y(\dp/n335 ),
	.C(\dp/dp_cluster_0/N160 ),
	.B(n48),
	.A(\dp/N159 ));
   XNOR2X1 \dp/U168  (.Y(\dp/n291 ),
	.B(\dp/num2 [0]),
	.A(\dp/random_num [0]));
   XNOR2X1 \dp/U167  (.Y(\dp/n292 ),
	.B(\dp/num2 [3]),
	.A(\dp/random_num [3]));
   NAND2X1 \dp/U166  (.Y(\dp/n276 ),
	.B(\dp/n292 ),
	.A(\dp/n291 ));
   XNOR2X1 \dp/U165  (.Y(\dp/n289 ),
	.B(\dp/num2 [1]),
	.A(\dp/random_num [1]));
   XNOR2X1 \dp/U164  (.Y(\dp/n290 ),
	.B(\dp/num2 [2]),
	.A(\dp/random_num [2]));
   NAND2X1 \dp/U163  (.Y(\dp/n277 ),
	.B(\dp/n290 ),
	.A(\dp/n289 ));
   XNOR2X1 \dp/U162  (.Y(\dp/n284 ),
	.B(\dp/num0 [1]),
	.A(\dp/random_num [1]));
   XNOR2X1 \dp/U161  (.Y(\dp/n285 ),
	.B(\dp/num0 [2]),
	.A(\dp/random_num [2]));
   XNOR2X1 \dp/U160  (.Y(\dp/n287 ),
	.B(n82),
	.A(\dp/random_num [3]));
   XNOR2X1 \dp/U159  (.Y(\dp/n288 ),
	.B(n83),
	.A(\dp/random_num [0]));
   NOR2X1 \dp/U158  (.Y(\dp/n286 ),
	.B(\dp/n288 ),
	.A(\dp/n287 ));
   NAND3X1 \dp/U157  (.Y(\dp/n270 ),
	.C(\dp/n286 ),
	.B(\dp/n285 ),
	.A(\dp/n284 ));
   XNOR2X1 \dp/U156  (.Y(\dp/n279 ),
	.B(\dp/num1 [1]),
	.A(\dp/random_num [1]));
   XNOR2X1 \dp/U155  (.Y(\dp/n280 ),
	.B(\dp/num1 [2]),
	.A(\dp/random_num [2]));
   XNOR2X1 \dp/U154  (.Y(\dp/n282 ),
	.B(n77),
	.A(\dp/random_num [3]));
   XNOR2X1 \dp/U153  (.Y(\dp/n283 ),
	.B(n89),
	.A(\dp/random_num [0]));
   NOR2X1 \dp/U152  (.Y(\dp/n281 ),
	.B(\dp/n283 ),
	.A(\dp/n282 ));
   NAND3X1 \dp/U151  (.Y(\dp/n243 ),
	.C(\dp/n281 ),
	.B(\dp/n280 ),
	.A(\dp/n279 ));
   OAI21X1 \dp/U150  (.Y(\dp/n268 ),
	.C(\dp/n278 ),
	.B(\dp/n277 ),
	.A(\dp/n276 ));
   NAND2X1 \dp/U149  (.Y(\dp/n265 ),
	.B(n42),
	.A(out_save_test));
   NOR2X1 \dp/U148  (.Y(\dp/n248 ),
	.B(\dp/count [3]),
	.A(\dp/n265 ));
   NAND2X1 \dp/U147  (.Y(\dp/n267 ),
	.B(n88),
	.A(n85));
   NOR2X1 \dp/U146  (.Y(\dp/n253 ),
	.B(\dp/n267 ),
	.A(n84));
   NAND2X1 \dp/U145  (.Y(\dp/n275 ),
	.B(\dp/n253 ),
	.A(\dp/n248 ));
   OAI21X1 \dp/U144  (.Y(\dp/n236 ),
	.C(n42),
	.B(\dp/n275 ),
	.A(\dp/n268 ));
   NAND2X1 \dp/U143  (.Y(\dp/n241 ),
	.B(n33),
	.A(\dp/random_num [0]));
   OAI22X1 \dp/U142  (.Y(\dp/n457 ),
	.D(\dp/n241 ),
	.C(n35),
	.B(n68),
	.A(\dp/n236 ));
   NOR2X1 \dp/U141  (.Y(\dp/n249 ),
	.B(\dp/count [1]),
	.A(n88));
   NOR2X1 \dp/U140  (.Y(\dp/n274 ),
	.B(\dp/count [3]),
	.A(out_reset));
   NAND3X1 \dp/U139  (.Y(\dp/n273 ),
	.C(\dp/n274 ),
	.B(\dp/count [2]),
	.A(\dp/n249 ));
   OAI22X1 \dp/U137  (.Y(\dp/n456 ),
	.D(n24),
	.C(n6),
	.B(n67),
	.A(n4));
   OAI22X1 \dp/U136  (.Y(\dp/n455 ),
	.D(n25),
	.C(n6),
	.B(n66),
	.A(n4));
   OAI22X1 \dp/U135  (.Y(\dp/n454 ),
	.D(n26),
	.C(n6),
	.B(n65),
	.A(n4));
   OAI22X1 \dp/U134  (.Y(\dp/n453 ),
	.D(n27),
	.C(n6),
	.B(n64),
	.A(n4));
   OAI22X1 \dp/U133  (.Y(\dp/n452 ),
	.D(n12),
	.C(n6),
	.B(n62),
	.A(n4));
   OAI22X1 \dp/U132  (.Y(\dp/n451 ),
	.D(n13),
	.C(n6),
	.B(n61),
	.A(n4));
   OAI22X1 \dp/U131  (.Y(\dp/n450 ),
	.D(n14),
	.C(n6),
	.B(n60),
	.A(n4));
   OAI22X1 \dp/U130  (.Y(\dp/n449 ),
	.D(n15),
	.C(n6),
	.B(n59),
	.A(n4));
   OAI22X1 \dp/U129  (.Y(\dp/n448 ),
	.D(n16),
	.C(n6),
	.B(n57),
	.A(n4));
   OAI22X1 \dp/U128  (.Y(\dp/n447 ),
	.D(n17),
	.C(n6),
	.B(n56),
	.A(n4));
   OAI22X1 \dp/U127  (.Y(\dp/n446 ),
	.D(n18),
	.C(n6),
	.B(n55),
	.A(n4));
   OAI22X1 \dp/U126  (.Y(\dp/n445 ),
	.D(n19),
	.C(n6),
	.B(n54),
	.A(n4));
   OAI22X1 \dp/U125  (.Y(\dp/n444 ),
	.D(n20),
	.C(n6),
	.B(n52),
	.A(n4));
   OAI22X1 \dp/U124  (.Y(\dp/n443 ),
	.D(n21),
	.C(n6),
	.B(n51),
	.A(n4));
   OAI22X1 \dp/U123  (.Y(\dp/n442 ),
	.D(n22),
	.C(n6),
	.B(n50),
	.A(n4));
   OAI22X1 \dp/U122  (.Y(\dp/n441 ),
	.D(n23),
	.C(n6),
	.B(n49),
	.A(n4));
   NAND3X1 \dp/U121  (.Y(\dp/n244 ),
	.C(\dp/n271 ),
	.B(\dp/n248 ),
	.A(\dp/count [1]));
   OAI21X1 \dp/U120  (.Y(\dp/n245 ),
	.C(n42),
	.B(\dp/n244 ),
	.A(\dp/count [0]));
   OAI22X1 \dp/U119  (.Y(\dp/n477 ),
	.D(\dp/n241 ),
	.C(n38),
	.B(\dp/n245 ),
	.A(n89));
   OAI21X1 \dp/U118  (.Y(\dp/n269 ),
	.C(\dp/n270 ),
	.B(\dp/n243 ),
	.A(n88));
   NOR2X1 \dp/U117  (.Y(\dp/n256 ),
	.B(\dp/count [2]),
	.A(\dp/n265 ));
   AOI21X1 \dp/U116  (.Y(\dp/n261 ),
	.C(n40),
	.B(\dp/n269 ),
	.A(\dp/count [1]));
   OR2X1 \dp/U115  (.Y(\dp/n266 ),
	.B(\dp/count [3]),
	.A(\dp/n263 ));
   AOI21X1 \dp/U114  (.Y(\dp/n264 ),
	.C(\dp/n266 ),
	.B(\dp/n253 ),
	.A(n73));
   OAI21X1 \dp/U113  (.Y(\dp/n252 ),
	.C(n42),
	.B(\dp/n265 ),
	.A(\dp/n264 ));
   OAI21X1 \dp/U112  (.Y(\dp/n262 ),
	.C(n33),
	.B(\dp/n263 ),
	.A(\dp/count [3]));
   OAI21X1 \dp/U111  (.Y(\dp/n260 ),
	.C(\dp/n262 ),
	.B(\dp/n252 ),
	.A(\dp/n261 ));
   AOI21X1 \dp/U110  (.Y(\dp/n254 ),
	.C(\dp/n260 ),
	.B(n33),
	.A(n88));
   NAND3X1 \dp/U109  (.Y(\dp/n259 ),
	.C(n32),
	.B(n33),
	.A(\dp/n249 ));
   OAI21X1 \dp/U108  (.Y(\dp/n476 ),
	.C(\dp/n259 ),
	.B(n85),
	.A(\dp/n254 ));
   NAND3X1 \dp/U107  (.Y(\dp/n258 ),
	.C(n32),
	.B(n88),
	.A(n33));
   OAI21X1 \dp/U106  (.Y(\dp/n475 ),
	.C(\dp/n258 ),
	.B(n88),
	.A(n32));
   NOR2X1 \dp/U105  (.Y(\dp/n257 ),
	.B(n88),
	.A(n85));
   NAND3X1 \dp/U104  (.Y(\dp/n255 ),
	.C(\dp/n257 ),
	.B(\dp/n256 ),
	.A(n32));
   OAI21X1 \dp/U103  (.Y(\dp/n474 ),
	.C(\dp/n255 ),
	.B(n84),
	.A(\dp/n254 ));
   NOR2X1 \dp/U102  (.Y(\dp/n473 ),
	.B(n87),
	.A(\dp/n254 ));
   NAND2X1 \dp/U101  (.Y(\dp/n250 ),
	.B(\dp/n252 ),
	.A(\dp/n253 ));
   NAND2X1 \dp/U100  (.Y(\dp/n251 ),
	.B(n41),
	.A(out_valid));
   OAI21X1 \dp/U99  (.Y(\dp/n472 ),
	.C(\dp/n251 ),
	.B(\dp/n250 ),
	.A(n34));
   NAND2X1 \dp/U98  (.Y(\dp/n247 ),
	.B(n84),
	.A(\dp/n248 ));
   OAI21X1 \dp/U97  (.Y(\dp/n246 ),
	.C(n42),
	.B(\dp/n247 ),
	.A(n86));
   OAI22X1 \dp/U96  (.Y(\dp/n471 ),
	.D(\dp/n241 ),
	.C(n39),
	.B(\dp/n246 ),
	.A(n83));
   NAND2X1 \dp/U95  (.Y(\dp/n239 ),
	.B(n33),
	.A(\dp/random_num [3]));
   OAI22X1 \dp/U94  (.Y(\dp/n470 ),
	.D(\dp/n239 ),
	.C(n39),
	.B(\dp/n246 ),
	.A(n82));
   NAND2X1 \dp/U93  (.Y(\dp/n238 ),
	.B(n33),
	.A(\dp/random_num [2]));
   OAI22X1 \dp/U92  (.Y(\dp/n469 ),
	.D(\dp/n238 ),
	.C(n39),
	.B(\dp/n246 ),
	.A(n81));
   NAND2X1 \dp/U91  (.Y(\dp/n237 ),
	.B(n33),
	.A(\dp/random_num [1]));
   OAI22X1 \dp/U90  (.Y(\dp/n468 ),
	.D(\dp/n237 ),
	.C(n39),
	.B(\dp/n246 ),
	.A(n80));
   OAI22X1 \dp/U89  (.Y(\dp/n467 ),
	.D(\dp/n237 ),
	.C(n38),
	.B(\dp/n245 ),
	.A(n79));
   OAI22X1 \dp/U88  (.Y(\dp/n466 ),
	.D(\dp/n238 ),
	.C(n38),
	.B(\dp/n245 ),
	.A(n78));
   OAI22X1 \dp/U87  (.Y(\dp/n465 ),
	.D(\dp/n239 ),
	.C(n38),
	.B(\dp/n245 ),
	.A(n77));
   NAND2X1 \dp/U86  (.Y(\dp/n242 ),
	.B(\dp/n243 ),
	.A(n37));
   OAI21X1 \dp/U85  (.Y(\dp/n240 ),
	.C(n42),
	.B(\dp/n242 ),
	.A(n88));
   OAI22X1 \dp/U84  (.Y(\dp/n464 ),
	.D(\dp/n241 ),
	.C(n36),
	.B(\dp/n240 ),
	.A(n76));
   OAI22X1 \dp/U83  (.Y(\dp/n463 ),
	.D(\dp/n237 ),
	.C(n36),
	.B(\dp/n240 ),
	.A(n75));
   OAI22X1 \dp/U82  (.Y(\dp/n462 ),
	.D(\dp/n238 ),
	.C(n36),
	.B(\dp/n240 ),
	.A(n74));
   OAI22X1 \dp/U81  (.Y(\dp/n461 ),
	.D(\dp/n239 ),
	.C(n36),
	.B(\dp/n240 ),
	.A(n72));
   OAI22X1 \dp/U80  (.Y(\dp/n460 ),
	.D(\dp/n239 ),
	.C(n35),
	.B(n71),
	.A(\dp/n236 ));
   OAI22X1 \dp/U79  (.Y(\dp/n459 ),
	.D(\dp/n238 ),
	.C(n35),
	.B(n70),
	.A(\dp/n236 ));
   OAI22X1 \dp/U78  (.Y(\dp/n458 ),
	.D(\dp/n237 ),
	.C(n35),
	.B(n69),
	.A(\dp/n236 ));
   AND2X2 \dp/U5  (.Y(\dp/n278 ),
	.B(\dp/n243 ),
	.A(\dp/n270 ));
   AND2X2 \dp/U4  (.Y(\dp/n271 ),
	.B(\dp/n270 ),
	.A(n84));
   AND2X2 \dp/U3  (.Y(\dp/n263 ),
	.B(\dp/n267 ),
	.A(\dp/count [2]));
   DFFNEGX1 \dp/temp2_reg[0]  (.Q(\dp/temp2 [0]),
	.D(\dp/n441 ),
	.CLK(n2));
   DFFNEGX1 \dp/temp2_reg[1]  (.Q(\dp/temp2 [1]),
	.D(\dp/n442 ),
	.CLK(n2));
   DFFNEGX1 \dp/temp2_reg[2]  (.Q(\dp/temp2 [2]),
	.D(\dp/n443 ),
	.CLK(n2));
   DFFNEGX1 \dp/temp2_reg[3]  (.Q(\dp/temp2 [3]),
	.D(\dp/n444 ),
	.CLK(n2));
   DFFNEGX1 \dp/temp1_reg[0]  (.Q(\dp/temp1 [0]),
	.D(\dp/n445 ),
	.CLK(n2));
   DFFNEGX1 \dp/temp1_reg[1]  (.Q(\dp/temp1 [1]),
	.D(\dp/n446 ),
	.CLK(n2));
   DFFNEGX1 \dp/temp1_reg[2]  (.Q(\dp/temp1 [2]),
	.D(\dp/n447 ),
	.CLK(n2));
   DFFNEGX1 \dp/temp1_reg[3]  (.Q(\dp/temp1 [3]),
	.D(\dp/n448 ),
	.CLK(n2));
   DFFNEGX1 \dp/temp0_reg[0]  (.Q(\dp/temp0 [0]),
	.D(\dp/n449 ),
	.CLK(n2));
   DFFNEGX1 \dp/temp0_reg[1]  (.Q(\dp/temp0 [1]),
	.D(\dp/n450 ),
	.CLK(n2));
   DFFNEGX1 \dp/temp0_reg[2]  (.Q(\dp/temp0 [2]),
	.D(\dp/n451 ),
	.CLK(n2));
   DFFNEGX1 \dp/temp0_reg[3]  (.Q(\dp/temp0 [3]),
	.D(\dp/n452 ),
	.CLK(n2));
   DFFNEGX1 \dp/temp3_reg[0]  (.Q(\dp/temp3 [0]),
	.D(\dp/n453 ),
	.CLK(n2));
   DFFNEGX1 \dp/temp3_reg[1]  (.Q(\dp/temp3 [1]),
	.D(\dp/n454 ),
	.CLK(n2));
   DFFNEGX1 \dp/temp3_reg[2]  (.Q(\dp/temp3 [2]),
	.D(\dp/n455 ),
	.CLK(n2));
   DFFNEGX1 \dp/temp3_reg[3]  (.Q(\dp/temp3 [3]),
	.D(\dp/n456 ),
	.CLK(n2));
   DFFNEGX1 \dp/num3_reg[0]  (.Q(\dp/num3 [0]),
	.D(\dp/n457 ),
	.CLK(in_clka));
   DFFNEGX1 \dp/num3_reg[1]  (.Q(\dp/num3 [1]),
	.D(\dp/n458 ),
	.CLK(in_clka));
   DFFNEGX1 \dp/num3_reg[2]  (.Q(\dp/num3 [2]),
	.D(\dp/n459 ),
	.CLK(in_clka));
   DFFNEGX1 \dp/num3_reg[3]  (.Q(\dp/num3 [3]),
	.D(\dp/n460 ),
	.CLK(in_clka));
   DFFNEGX1 \dp/valid_reg  (.Q(out_valid),
	.D(\dp/n472 ),
	.CLK(in_clka));
   DFFNEGX1 \dp/num2_reg[3]  (.Q(\dp/num2 [3]),
	.D(\dp/n461 ),
	.CLK(in_clka));
   DFFNEGX1 \dp/num2_reg[2]  (.Q(\dp/num2 [2]),
	.D(\dp/n462 ),
	.CLK(in_clka));
   DFFNEGX1 \dp/num2_reg[1]  (.Q(\dp/num2 [1]),
	.D(\dp/n463 ),
	.CLK(n8));
   DFFNEGX1 \dp/num2_reg[0]  (.Q(\dp/num2 [0]),
	.D(\dp/n464 ),
	.CLK(n8));
   DFFNEGX1 \dp/num1_reg[3]  (.Q(\dp/num1 [3]),
	.D(\dp/n465 ),
	.CLK(n8));
   DFFNEGX1 \dp/num1_reg[2]  (.Q(\dp/num1 [2]),
	.D(\dp/n466 ),
	.CLK(n8));
   DFFNEGX1 \dp/num1_reg[1]  (.Q(\dp/num1 [1]),
	.D(\dp/n467 ),
	.CLK(n8));
   DFFNEGX1 \dp/num0_reg[1]  (.Q(\dp/num0 [1]),
	.D(\dp/n468 ),
	.CLK(n8));
   DFFNEGX1 \dp/num0_reg[2]  (.Q(\dp/num0 [2]),
	.D(\dp/n469 ),
	.CLK(n8));
   DFFNEGX1 \dp/num0_reg[3]  (.Q(\dp/num0 [3]),
	.D(\dp/n470 ),
	.CLK(n8));
   DFFNEGX1 \dp/num0_reg[0]  (.Q(\dp/num0 [0]),
	.D(\dp/n471 ),
	.CLK(n8));
   DFFNEGX1 \dp/count_reg[2]  (.Q(\dp/count [2]),
	.D(\dp/n474 ),
	.CLK(n8));
   DFFNEGX1 \dp/count_reg[1]  (.Q(\dp/count [1]),
	.D(\dp/n476 ),
	.CLK(n8));
   DFFNEGX1 \dp/count_reg[3]  (.Q(\dp/count [3]),
	.D(\dp/n473 ),
	.CLK(n8));
   DFFNEGX1 \dp/count_reg[0]  (.Q(\dp/count [0]),
	.D(\dp/n475 ),
	.CLK(n8));
   DFFNEGX1 \dp/num1_reg[0]  (.Q(\dp/num1 [0]),
	.D(\dp/n477 ),
	.CLK(n7));
   OR2X1 \dp/prng_inst/U22  (.Y(\dp/prng_inst/N10 ),
	.B(out_reset),
	.A(\dp/prng_inst/random [1]));
   OR2X1 \dp/prng_inst/U21  (.Y(\dp/prng_inst/N11 ),
	.B(out_reset),
	.A(\dp/prng_inst/random [2]));
   OR2X1 \dp/prng_inst/U20  (.Y(\dp/prng_inst/N12 ),
	.B(\dp/prng_inst/random [3]),
	.A(out_reset));
   OR2X1 \dp/prng_inst/U19  (.Y(\dp/prng_inst/N13 ),
	.B(\dp/prng_inst/random [4]),
	.A(out_reset));
   OR2X1 \dp/prng_inst/U18  (.Y(\dp/prng_inst/N14 ),
	.B(\dp/prng_inst/random [5]),
	.A(out_reset));
   OR2X1 \dp/prng_inst/U17  (.Y(\dp/prng_inst/N15 ),
	.B(out_reset),
	.A(\dp/prng_inst/random [6]));
   XNOR2X1 \dp/prng_inst/U16  (.Y(\dp/prng_inst/n7 ),
	.B(\dp/prng_inst/random [4]),
	.A(\dp/prng_inst/random [3]));
   XOR2X1 \dp/prng_inst/U15  (.Y(\dp/prng_inst/n8 ),
	.B(\dp/prng_inst/random [5]),
	.A(\dp/prng_inst/random [7]));
   XOR2X1 \dp/prng_inst/U14  (.Y(\dp/prng_inst/n6 ),
	.B(\dp/prng_inst/n8 ),
	.A(\dp/prng_inst/n7 ));
   NAND2X1 \dp/prng_inst/U12  (.Y(\dp/prng_inst/N8 ),
	.B(n42),
	.A(\dp/prng_inst/n6 ));
   OR2X1 \dp/prng_inst/U11  (.Y(\dp/prng_inst/N9 ),
	.B(out_reset),
	.A(\dp/prng_inst/random [0]));
   AOI22X1 \dp/prng_inst/U10  (.Y(\dp/prng_inst/n5 ),
	.D(out_reset),
	.C(\dp/random_num [0]),
	.B(n42),
	.A(n90));
   AOI22X1 \dp/prng_inst/U8  (.Y(\dp/prng_inst/n4 ),
	.D(out_reset),
	.C(\dp/random_num [1]),
	.B(n42),
	.A(n91));
   AOI22X1 \dp/prng_inst/U6  (.Y(\dp/prng_inst/n3 ),
	.D(out_reset),
	.C(\dp/random_num [2]),
	.B(n42),
	.A(n92));
   AOI22X1 \dp/prng_inst/U4  (.Y(\dp/prng_inst/n1 ),
	.D(\dp/random_num [3]),
	.C(out_reset),
	.B(n42),
	.A(n93));
   DFFNEGX1 \dp/prng_inst/random_num_reg[3]  (.Q(\dp/random_num [3]),
	.D(n28),
	.CLK(n7));
   DFFNEGX1 \dp/prng_inst/random_num_reg[2]  (.Q(\dp/random_num [2]),
	.D(n29),
	.CLK(n7));
   DFFNEGX1 \dp/prng_inst/random_num_reg[1]  (.Q(\dp/random_num [1]),
	.D(n30),
	.CLK(n7));
   DFFNEGX1 \dp/prng_inst/random_num_reg[0]  (.Q(\dp/random_num [0]),
	.D(n31),
	.CLK(n7));
   DFFNEGX1 \dp/prng_inst/random_reg[7]  (.Q(\dp/prng_inst/random [7]),
	.D(\dp/prng_inst/N15 ),
	.CLK(n7));
   DFFNEGX1 \dp/prng_inst/random_reg[6]  (.Q(\dp/prng_inst/random [6]),
	.D(\dp/prng_inst/N14 ),
	.CLK(n7));
   DFFNEGX1 \dp/prng_inst/random_reg[5]  (.Q(\dp/prng_inst/random [5]),
	.D(\dp/prng_inst/N13 ),
	.CLK(n7));
   DFFNEGX1 \dp/prng_inst/random_reg[4]  (.Q(\dp/prng_inst/random [4]),
	.D(\dp/prng_inst/N12 ),
	.CLK(n7));
   DFFNEGX1 \dp/prng_inst/random_reg[3]  (.Q(\dp/prng_inst/random [3]),
	.D(\dp/prng_inst/N11 ),
	.CLK(n7));
   DFFNEGX1 \dp/prng_inst/random_reg[2]  (.Q(\dp/prng_inst/random [2]),
	.D(\dp/prng_inst/N10 ),
	.CLK(n7));
   DFFNEGX1 \dp/prng_inst/random_reg[1]  (.Q(\dp/prng_inst/random [1]),
	.D(\dp/prng_inst/N9 ),
	.CLK(n7));
   DFFNEGX1 \dp/prng_inst/random_reg[0]  (.Q(\dp/prng_inst/random [0]),
	.D(\dp/prng_inst/N8 ),
	.CLK(n7));
   MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_0_0  (.Y(n108),
	.S(\dp/prng_inst/rem_20/quotient [0]),
	.B(\dp/prng_inst/random [0]),
	.A(\dp/prng_inst/random [0]));
   MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_0_1  (.Y(n109),
	.S(\dp/prng_inst/rem_20/quotient [0]),
	.B(n94),
	.A(n112));
   MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_0_2  (.Y(n110),
	.S(\dp/prng_inst/rem_20/quotient [0]),
	.B(n95),
	.A(\dp/prng_inst/rem_20/u_div/SumTmp[0][2] ));
   MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_0_3  (.Y(n111),
	.S(\dp/prng_inst/rem_20/quotient [0]),
	.B(n96),
	.A(\dp/prng_inst/rem_20/u_div/SumTmp[0][3] ));
   MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_1_0  (.Y(n112),
	.S(\dp/prng_inst/rem_20/quotient [1]),
	.B(\dp/prng_inst/random [1]),
	.A(\dp/prng_inst/random [1]));
   MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_1_1  (.Y(n113),
	.S(\dp/prng_inst/rem_20/quotient [1]),
	.B(n97),
	.A(n116));
   MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_1_2  (.Y(n114),
	.S(\dp/prng_inst/rem_20/quotient [1]),
	.B(n98),
	.A(\dp/prng_inst/rem_20/u_div/SumTmp[1][2] ));
   MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_1_3  (.Y(n115),
	.S(\dp/prng_inst/rem_20/quotient [1]),
	.B(n99),
	.A(\dp/prng_inst/rem_20/u_div/SumTmp[1][3] ));
   MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_2_0  (.Y(n116),
	.S(\dp/prng_inst/rem_20/quotient [2]),
	.B(\dp/prng_inst/random [2]),
	.A(\dp/prng_inst/random [2]));
   MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_2_1  (.Y(n117),
	.S(\dp/prng_inst/rem_20/quotient [2]),
	.B(n100),
	.A(n120));
   MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_2_2  (.Y(n118),
	.S(\dp/prng_inst/rem_20/quotient [2]),
	.B(n101),
	.A(\dp/prng_inst/rem_20/u_div/SumTmp[2][2] ));
   MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_2_3  (.Y(n119),
	.S(\dp/prng_inst/rem_20/quotient [2]),
	.B(n102),
	.A(\dp/prng_inst/rem_20/u_div/SumTmp[2][3] ));
   MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_3_0  (.Y(n120),
	.S(\dp/prng_inst/rem_20/quotient [3]),
	.B(\dp/prng_inst/random [3]),
	.A(\dp/prng_inst/random [3]));
   MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_3_1  (.Y(n121),
	.S(\dp/prng_inst/rem_20/quotient [3]),
	.B(n103),
	.A(n124));
   MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_3_2  (.Y(n122),
	.S(\dp/prng_inst/rem_20/quotient [3]),
	.B(n104),
	.A(\dp/prng_inst/rem_20/u_div/SumTmp[3][2] ));
   MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_3_3  (.Y(n123),
	.S(\dp/prng_inst/rem_20/quotient [3]),
	.B(n105),
	.A(\dp/prng_inst/rem_20/u_div/SumTmp[3][3] ));
   MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_4_0  (.Y(n124),
	.S(\dp/prng_inst/rem_20/quotient [4]),
	.B(\dp/prng_inst/random [4]),
	.A(\dp/prng_inst/random [4]));
   MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_4_1  (.Y(n125),
	.S(\dp/prng_inst/rem_20/quotient [4]),
	.B(\dp/prng_inst/random [5]),
	.A(n107));
   MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_4_2  (.Y(n126),
	.S(\dp/prng_inst/rem_20/quotient [4]),
	.B(\dp/prng_inst/random [6]),
	.A(\dp/prng_inst/rem_20/u_div/SumTmp[4][2] ));
   MUX2X1 \dp/prng_inst/rem_20/u_div/u_mx_PartRem_0_4_3  (.Y(n127),
	.S(\dp/prng_inst/rem_20/quotient [4]),
	.B(\dp/prng_inst/random [7]),
	.A(\dp/prng_inst/rem_20/u_div/SumTmp[4][3] ));
   INVX1 U1 (.Y(n1),
	.A(in_clkb));
   INVX4 U2 (.Y(n2),
	.A(n1));
   INVX2 U3 (.Y(n42),
	.A(out_reset));
   INVX2 U4 (.Y(n4),
	.A(n3));
   INVX2 U5 (.Y(n7),
	.A(n9));
   INVX2 U6 (.Y(n8),
	.A(n9));
   AND2X2 U7 (.Y(n3),
	.B(n6),
	.A(n42));
   INVX2 U8 (.Y(n9),
	.A(in_clka));
   INVX2 U9 (.Y(n6),
	.A(n5));
   INVX2 U10 (.Y(n5),
	.A(\dp/n273 ));
   INVX2 U11 (.Y(n10),
	.A(\main_fsm/n12 ));
   INVX2 U12 (.Y(n11),
	.A(in_restart));
   INVX2 U13 (.Y(n12),
	.A(in_ans0[3]));
   INVX2 U14 (.Y(n13),
	.A(in_ans0[2]));
   INVX2 U15 (.Y(n14),
	.A(in_ans0[1]));
   INVX2 U16 (.Y(n15),
	.A(in_ans0[0]));
   INVX2 U17 (.Y(n16),
	.A(in_ans1[3]));
   INVX2 U18 (.Y(n17),
	.A(in_ans1[2]));
   INVX2 U19 (.Y(n18),
	.A(in_ans1[1]));
   INVX2 U20 (.Y(n19),
	.A(in_ans1[0]));
   INVX2 U21 (.Y(n20),
	.A(in_ans2[3]));
   INVX2 U22 (.Y(n21),
	.A(in_ans2[2]));
   INVX2 U23 (.Y(n22),
	.A(in_ans2[1]));
   INVX2 U24 (.Y(n23),
	.A(in_ans2[0]));
   INVX2 U25 (.Y(n24),
	.A(in_ans3[3]));
   INVX2 U26 (.Y(n25),
	.A(in_ans3[2]));
   INVX2 U27 (.Y(n26),
	.A(in_ans3[1]));
   INVX2 U28 (.Y(n27),
	.A(in_ans3[0]));
   INVX2 U29 (.Y(n28),
	.A(\dp/prng_inst/n1 ));
   INVX2 U30 (.Y(n29),
	.A(\dp/prng_inst/n3 ));
   INVX2 U31 (.Y(n30),
	.A(\dp/prng_inst/n4 ));
   INVX2 U32 (.Y(n31),
	.A(\dp/prng_inst/n5 ));
   INVX2 U33 (.Y(n32),
	.A(\dp/n260 ));
   INVX2 U34 (.Y(n33),
	.A(\dp/n265 ));
   INVX2 U35 (.Y(n34),
	.A(\dp/n248 ));
   INVX2 U36 (.Y(n35),
	.A(\dp/n236 ));
   INVX2 U37 (.Y(n36),
	.A(\dp/n240 ));
   INVX2 U38 (.Y(n37),
	.A(\dp/n244 ));
   INVX2 U39 (.Y(n38),
	.A(\dp/n245 ));
   INVX2 U40 (.Y(n39),
	.A(\dp/n246 ));
   INVX2 U41 (.Y(n40),
	.A(\dp/n256 ));
   INVX2 U42 (.Y(n41),
	.A(\dp/n252 ));
   INVX2 U43 (.Y(n43),
	.A(\main_fsm/n10 ));
   INVX2 U44 (.Y(n44),
	.A(out_state[0]));
   INVX2 U45 (.Y(out_Anum[2]),
	.A(\dp/n295 ));
   INVX2 U46 (.Y(n46),
	.A(\dp/n418 ));
   INVX2 U47 (.Y(out_Bnum[2]),
	.A(\dp/n335 ));
   INVX2 U48 (.Y(n48),
	.A(\dp/n337 ));
   INVX2 U49 (.Y(n49),
	.A(\dp/temp2 [0]));
   INVX2 U50 (.Y(n50),
	.A(\dp/temp2 [1]));
   INVX2 U51 (.Y(n51),
	.A(\dp/temp2 [2]));
   INVX2 U52 (.Y(n52),
	.A(\dp/temp2 [3]));
   INVX2 U53 (.Y(n53),
	.A(\dp/n419 ));
   INVX2 U54 (.Y(n54),
	.A(\dp/temp1 [0]));
   INVX2 U55 (.Y(n55),
	.A(\dp/temp1 [1]));
   INVX2 U56 (.Y(n56),
	.A(\dp/temp1 [2]));
   INVX2 U57 (.Y(n57),
	.A(\dp/temp1 [3]));
   INVX2 U58 (.Y(n58),
	.A(\dp/n417 ));
   INVX2 U59 (.Y(n59),
	.A(\dp/temp0 [0]));
   INVX2 U60 (.Y(n60),
	.A(\dp/temp0 [1]));
   INVX2 U61 (.Y(n61),
	.A(\dp/temp0 [2]));
   INVX2 U62 (.Y(n62),
	.A(\dp/temp0 [3]));
   INVX2 U63 (.Y(n63),
	.A(\dp/n420 ));
   INVX2 U64 (.Y(n64),
	.A(\dp/temp3 [0]));
   INVX2 U65 (.Y(n65),
	.A(\dp/temp3 [1]));
   INVX2 U66 (.Y(n66),
	.A(\dp/temp3 [2]));
   INVX2 U67 (.Y(n67),
	.A(\dp/temp3 [3]));
   INVX2 U68 (.Y(n68),
	.A(\dp/num3 [0]));
   INVX2 U69 (.Y(n69),
	.A(\dp/num3 [1]));
   INVX2 U70 (.Y(n70),
	.A(\dp/num3 [2]));
   INVX2 U71 (.Y(n71),
	.A(\dp/num3 [3]));
   INVX2 U72 (.Y(n72),
	.A(\dp/num2 [3]));
   INVX2 U73 (.Y(n73),
	.A(\dp/n268 ));
   INVX2 U74 (.Y(n74),
	.A(\dp/num2 [2]));
   INVX2 U75 (.Y(n75),
	.A(\dp/num2 [1]));
   INVX2 U76 (.Y(n76),
	.A(\dp/num2 [0]));
   INVX2 U77 (.Y(n77),
	.A(\dp/num1 [3]));
   INVX2 U78 (.Y(n78),
	.A(\dp/num1 [2]));
   INVX2 U79 (.Y(n79),
	.A(\dp/num1 [1]));
   INVX2 U80 (.Y(n80),
	.A(\dp/num0 [1]));
   INVX2 U81 (.Y(n81),
	.A(\dp/num0 [2]));
   INVX2 U82 (.Y(n82),
	.A(\dp/num0 [3]));
   INVX2 U83 (.Y(n83),
	.A(\dp/num0 [0]));
   INVX2 U84 (.Y(n84),
	.A(\dp/count [2]));
   INVX2 U85 (.Y(n85),
	.A(\dp/count [1]));
   INVX2 U86 (.Y(n86),
	.A(\dp/n249 ));
   INVX2 U87 (.Y(n87),
	.A(\dp/count [3]));
   INVX2 U88 (.Y(n88),
	.A(\dp/count [0]));
   INVX2 U89 (.Y(n89),
	.A(\dp/num1 [0]));
   INVX2 U90 (.Y(n90),
	.A(n108));
   INVX2 U91 (.Y(n91),
	.A(n109));
   INVX2 U92 (.Y(n92),
	.A(n110));
   INVX2 U93 (.Y(n93),
	.A(n111));
   INVX2 U94 (.Y(n94),
	.A(n112));
   INVX2 U95 (.Y(n95),
	.A(n113));
   INVX2 U96 (.Y(n96),
	.A(n114));
   INVX2 U97 (.Y(n97),
	.A(n116));
   INVX2 U98 (.Y(n98),
	.A(n117));
   INVX2 U99 (.Y(n99),
	.A(n118));
   INVX2 U100 (.Y(n100),
	.A(n120));
   INVX2 U101 (.Y(n101),
	.A(n121));
   INVX2 U102 (.Y(n102),
	.A(n122));
   INVX2 U103 (.Y(n103),
	.A(n124));
   INVX2 U104 (.Y(n104),
	.A(n125));
   INVX2 U105 (.Y(n105),
	.A(n126));
   INVX2 U106 (.Y(n106),
	.A(\dp/prng_inst/random [7]));
   INVX2 U107 (.Y(n107),
	.A(\dp/prng_inst/random [5]));
   XNOR2X1 U108 (.Y(\dp/prng_inst/rem_20/u_div/SumTmp[4][3] ),
	.B(n128),
	.A(\dp/prng_inst/random [7]));
   XNOR2X1 U109 (.Y(\dp/prng_inst/rem_20/u_div/SumTmp[4][2] ),
	.B(\dp/prng_inst/random [6]),
	.A(\dp/prng_inst/random [5]));
   NOR2X1 U110 (.Y(\dp/prng_inst/rem_20/quotient [4]),
	.B(n106),
	.A(n128));
   NOR2X1 U111 (.Y(n128),
	.B(\dp/prng_inst/random [5]),
	.A(\dp/prng_inst/random [6]));
   XNOR2X1 U112 (.Y(\dp/prng_inst/rem_20/u_div/SumTmp[3][3] ),
	.B(n129),
	.A(n105));
   XNOR2X1 U113 (.Y(\dp/prng_inst/rem_20/u_div/SumTmp[3][2] ),
	.B(n104),
	.A(n103));
   OAI21X1 U114 (.Y(\dp/prng_inst/rem_20/quotient [3]),
	.C(n127),
	.B(n126),
	.A(n129));
   NOR2X1 U115 (.Y(n129),
	.B(n103),
	.A(n104));
   XNOR2X1 U116 (.Y(\dp/prng_inst/rem_20/u_div/SumTmp[2][3] ),
	.B(n130),
	.A(n102));
   XNOR2X1 U117 (.Y(\dp/prng_inst/rem_20/u_div/SumTmp[2][2] ),
	.B(n101),
	.A(n100));
   OAI21X1 U118 (.Y(\dp/prng_inst/rem_20/quotient [2]),
	.C(n123),
	.B(n122),
	.A(n130));
   NOR2X1 U119 (.Y(n130),
	.B(n100),
	.A(n101));
   XNOR2X1 U120 (.Y(\dp/prng_inst/rem_20/u_div/SumTmp[1][3] ),
	.B(n131),
	.A(n99));
   XNOR2X1 U121 (.Y(\dp/prng_inst/rem_20/u_div/SumTmp[1][2] ),
	.B(n98),
	.A(n97));
   OAI21X1 U122 (.Y(\dp/prng_inst/rem_20/quotient [1]),
	.C(n119),
	.B(n118),
	.A(n131));
   NOR2X1 U123 (.Y(n131),
	.B(n97),
	.A(n98));
   XNOR2X1 U124 (.Y(\dp/prng_inst/rem_20/u_div/SumTmp[0][3] ),
	.B(n132),
	.A(n96));
   XNOR2X1 U125 (.Y(\dp/prng_inst/rem_20/u_div/SumTmp[0][2] ),
	.B(n95),
	.A(n94));
   OAI21X1 U126 (.Y(\dp/prng_inst/rem_20/quotient [0]),
	.C(n115),
	.B(n114),
	.A(n132));
   NOR2X1 U127 (.Y(n132),
	.B(n94),
	.A(n95));
endmodule
