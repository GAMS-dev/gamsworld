*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   Minimize the permanent of a doubly stochastic n dimensional square matrix
*   whose trace is zero.
*   The conjecture is that the minimum is achieved when all non-diagonal
*   entries of the matrix are equal to 1/(n-1).
*   Source: conjecture 44 in
*   H. Minc,
*   "Theory of Permanents 1982-1985",
*   Linear Algebra and Applications, vol. 21, pp. 109-148, 1987.
*   SIF input: Ph. Toint, April 1992.
*              minor correction by Ph. Shott, Jan 1995.
*   classification LQR2-AN-V-V
*   Size of matrix
*IE N                   2              $ n = 5
*IE N                   3              $ n = 13
*IE N                   4              $ n = 27
*IE N                   5              $ n = 51
*IE N                   6              $ n = 93
*IE N                   7              $ n = 169
*IE N                   9              $ n = 583
*IE N                   10             $ n = 1113
*   Define constants
*   Compute the number of sub-permanents
*   Sub permanents
*   Entries in the doubly stochastic matrix
*   Define objective function group
*   Linear terms in the sub-permanent constraints
*   Doubly stochastic matrix constraints
*   Doubly stochastic matrix constraints
*   Entries in the doubly stochastic matrix
*  Set the trace to zero
*   Set up the elements associated with sub-permanent constraint K
*   Construct the I-th component of the binary representation of K.
*   Associate elements with nonzero entries in the binary string
*   This corresponds to finding the sub-permanents which occur
*   in the usual expansion of the sub-permanent in terms of its
*   sub-sub-permanents.
*   Solution
*LO SOLTN(2)           1.0
*LO SOLTN(3)           0.25
*LO SOLTN(4)           0.11111111
*LO SOLTN(5)           0.04296835
*LO SOLTN(6)           0.01695926
*LO SOLTN(7)           6.62293832D-03
*LO SOLTN(8)           2.57309338D-03
*LO SOLTN(9)           9.94617795D-04

  Parameter      n := 8;
  Parameter    np1 := 1 + (8);
  Parameter    im1 := -1 + (8);
  Parameter  r2ttn := 128.0;
  Parameter     s8 := 0.1 + (1.0);
  Parameter     t0 := 0.1 + (1.0);
  Parameter     s7 := 0.1 + (2.0);
  Parameter     t1 := 0.1 + (2.0);
  Parameter     s6 := 0.1 + (4.0);
  Parameter     t2 := 0.1 + (4.0);
  Parameter     s5 := 0.1 + (8.0);
  Parameter     t3 := 0.1 + (8.0);
  Parameter     s4 := 0.1 + (16.0);
  Parameter     t4 := 0.1 + (16.0);
  Parameter     s3 := 0.1 + (32.0);
  Parameter     t5 := 0.1 + (32.0);
  Parameter     s2 := 0.1 + (64.0);
  Parameter     t6 := 0.1 + (64.0);
  Parameter     s1 := 0.1 + (128.0);
  Parameter     t7 := 0.1 + (128.0);
  Parameter    rk1 := 0.1 + (128.0);
  Parameter     k1 := 1 + (round(0.1 + (128.0)));
  Parameter     k2 := -1 + (2 * (round(0.1 + (128.0))));
  Parameter     id := round(0.1 + (8.0));
  Parameter     rj := 0.1 + (8);
  Parameter    rjj := 0.1 + (2);
  Parameter     jj := round(0.1 + (2));
  Parameter     rd := 0.1 + (8.0);
  Parameter   rnz1 := 0.1 + (1);
  Parameter   rnz2 := 0.1 + (2);
  Parameter     d3 := 0.1 + (2.0);
  Parameter     d5 := 0.1 + (2.0);
  Parameter   rnz3 := 0.1 + (3);
  Parameter     d6 := 0.1 + (2.0);
  Parameter     d7 := 0.1 + (3.0);
  Parameter     d9 := 0.1 + (2.0);
  Parameter    d10 := 0.1 + (2.0);
  Parameter    d11 := 0.1 + (3.0);
  Parameter    d12 := 0.1 + (2.0);
  Parameter    d13 := 0.1 + (3.0);
  Parameter   rnz4 := 0.1 + (4);
  Parameter    d14 := 0.1 + (3.0);
  Parameter    d15 := 0.1 + (4.0);
  Parameter    d17 := 0.1 + (2.0);
  Parameter    d18 := 0.1 + (2.0);
  Parameter    d19 := 0.1 + (3.0);
  Parameter    d20 := 0.1 + (2.0);
  Parameter    d21 := 0.1 + (3.0);
  Parameter    d22 := 0.1 + (3.0);
  Parameter    d23 := 0.1 + (4.0);
  Parameter    d24 := 0.1 + (2.0);
  Parameter    d25 := 0.1 + (3.0);
  Parameter    d26 := 0.1 + (3.0);
  Parameter    d27 := 0.1 + (4.0);
  Parameter    d28 := 0.1 + (3.0);
  Parameter    d29 := 0.1 + (4.0);
  Parameter   rnz5 := 0.1 + (5);
  Parameter    d30 := 0.1 + (4.0);
  Parameter    d31 := 0.1 + (5.0);
  Parameter    d33 := 0.1 + (2.0);
  Parameter    d34 := 0.1 + (2.0);
  Parameter    d35 := 0.1 + (3.0);
  Parameter    d36 := 0.1 + (2.0);
  Parameter    d37 := 0.1 + (3.0);
  Parameter    d38 := 0.1 + (3.0);
  Parameter    d39 := 0.1 + (4.0);
  Parameter    d40 := 0.1 + (2.0);
  Parameter    d41 := 0.1 + (3.0);
  Parameter    d42 := 0.1 + (3.0);
  Parameter    d43 := 0.1 + (4.0);
  Parameter    d44 := 0.1 + (3.0);
  Parameter    d45 := 0.1 + (4.0);
  Parameter    d46 := 0.1 + (4.0);
  Parameter    d47 := 0.1 + (5.0);
  Parameter    d48 := 0.1 + (2.0);
  Parameter    d49 := 0.1 + (3.0);
  Parameter    d50 := 0.1 + (3.0);
  Parameter    d51 := 0.1 + (4.0);
  Parameter    d52 := 0.1 + (3.0);
  Parameter    d53 := 0.1 + (4.0);
  Parameter    d54 := 0.1 + (4.0);
  Parameter    d55 := 0.1 + (5.0);
  Parameter    d56 := 0.1 + (3.0);
  Parameter    d57 := 0.1 + (4.0);
  Parameter    d58 := 0.1 + (4.0);
  Parameter    d59 := 0.1 + (5.0);
  Parameter    d60 := 0.1 + (4.0);
  Parameter    d61 := 0.1 + (5.0);
  Parameter   rnz6 := 0.1 + (6);
  Parameter    d62 := 0.1 + (5.0);
  Parameter    d63 := 0.1 + (6.0);
  Parameter    d65 := 0.1 + (2.0);
  Parameter    d66 := 0.1 + (2.0);
  Parameter    d67 := 0.1 + (3.0);
  Parameter    d68 := 0.1 + (2.0);
  Parameter    d69 := 0.1 + (3.0);
  Parameter    d70 := 0.1 + (3.0);
  Parameter    d71 := 0.1 + (4.0);
  Parameter    d72 := 0.1 + (2.0);
  Parameter    d73 := 0.1 + (3.0);
  Parameter    d74 := 0.1 + (3.0);
  Parameter    d75 := 0.1 + (4.0);
  Parameter    d76 := 0.1 + (3.0);
  Parameter    d77 := 0.1 + (4.0);
  Parameter    d78 := 0.1 + (4.0);
  Parameter    d79 := 0.1 + (5.0);
  Parameter    d80 := 0.1 + (2.0);
  Parameter    d81 := 0.1 + (3.0);
  Parameter    d82 := 0.1 + (3.0);
  Parameter    d83 := 0.1 + (4.0);
  Parameter    d84 := 0.1 + (3.0);
  Parameter    d85 := 0.1 + (4.0);
  Parameter    d86 := 0.1 + (4.0);
  Parameter    d87 := 0.1 + (5.0);
  Parameter    d88 := 0.1 + (3.0);
  Parameter    d89 := 0.1 + (4.0);
  Parameter    d90 := 0.1 + (4.0);
  Parameter    d91 := 0.1 + (5.0);
  Parameter    d92 := 0.1 + (4.0);
  Parameter    d93 := 0.1 + (5.0);
  Parameter    d94 := 0.1 + (5.0);
  Parameter    d95 := 0.1 + (6.0);
  Parameter    d96 := 0.1 + (2.0);
  Parameter    d97 := 0.1 + (3.0);
  Parameter    d98 := 0.1 + (3.0);
  Parameter    d99 := 0.1 + (4.0);
  Parameter   d100 := 0.1 + (3.0);
  Parameter   d101 := 0.1 + (4.0);
  Parameter   d102 := 0.1 + (4.0);
  Parameter   d103 := 0.1 + (5.0);
  Parameter   d104 := 0.1 + (3.0);
  Parameter   d105 := 0.1 + (4.0);
  Parameter   d106 := 0.1 + (4.0);
  Parameter   d107 := 0.1 + (5.0);
  Parameter   d108 := 0.1 + (4.0);
  Parameter   d109 := 0.1 + (5.0);
  Parameter   d110 := 0.1 + (5.0);
  Parameter   d111 := 0.1 + (6.0);
  Parameter   d112 := 0.1 + (3.0);
  Parameter   d113 := 0.1 + (4.0);
  Parameter   d114 := 0.1 + (4.0);
  Parameter   d115 := 0.1 + (5.0);
  Parameter   d116 := 0.1 + (4.0);
  Parameter   d117 := 0.1 + (5.0);
  Parameter   d118 := 0.1 + (5.0);
  Parameter   d119 := 0.1 + (6.0);
  Parameter   d120 := 0.1 + (4.0);
  Parameter   d121 := 0.1 + (5.0);
  Parameter   d122 := 0.1 + (5.0);
  Parameter   d123 := 0.1 + (6.0);
  Parameter   d124 := 0.1 + (5.0);
  Parameter   d125 := 0.1 + (6.0);
  Parameter   rnz7 := 0.1 + (7);
  Parameter   d126 := 0.1 + (6.0);
  Parameter   d127 := 0.1 + (7.0);
  Parameter   d129 := 0.1 + (2.0);
  Parameter   d130 := 0.1 + (2.0);
  Parameter   d131 := 0.1 + (3.0);
  Parameter   d132 := 0.1 + (2.0);
  Parameter   d133 := 0.1 + (3.0);
  Parameter   d134 := 0.1 + (3.0);
  Parameter   d135 := 0.1 + (4.0);
  Parameter   d136 := 0.1 + (2.0);
  Parameter   d137 := 0.1 + (3.0);
  Parameter   d138 := 0.1 + (3.0);
  Parameter   d139 := 0.1 + (4.0);
  Parameter   d140 := 0.1 + (3.0);
  Parameter   d141 := 0.1 + (4.0);
  Parameter   d142 := 0.1 + (4.0);
  Parameter   d143 := 0.1 + (5.0);
  Parameter   d144 := 0.1 + (2.0);
  Parameter   d145 := 0.1 + (3.0);
  Parameter   d146 := 0.1 + (3.0);
  Parameter   d147 := 0.1 + (4.0);
  Parameter   d148 := 0.1 + (3.0);
  Parameter   d149 := 0.1 + (4.0);
  Parameter   d150 := 0.1 + (4.0);
  Parameter   d151 := 0.1 + (5.0);
  Parameter   d152 := 0.1 + (3.0);
  Parameter   d153 := 0.1 + (4.0);
  Parameter   d154 := 0.1 + (4.0);
  Parameter   d155 := 0.1 + (5.0);
  Parameter   d156 := 0.1 + (4.0);
  Parameter   d157 := 0.1 + (5.0);
  Parameter   d158 := 0.1 + (5.0);
  Parameter   d159 := 0.1 + (6.0);
  Parameter   d160 := 0.1 + (2.0);
  Parameter   d161 := 0.1 + (3.0);
  Parameter   d162 := 0.1 + (3.0);
  Parameter   d163 := 0.1 + (4.0);
  Parameter   d164 := 0.1 + (3.0);
  Parameter   d165 := 0.1 + (4.0);
  Parameter   d166 := 0.1 + (4.0);
  Parameter   d167 := 0.1 + (5.0);
  Parameter   d168 := 0.1 + (3.0);
  Parameter   d169 := 0.1 + (4.0);
  Parameter   d170 := 0.1 + (4.0);
  Parameter   d171 := 0.1 + (5.0);
  Parameter   d172 := 0.1 + (4.0);
  Parameter   d173 := 0.1 + (5.0);
  Parameter   d174 := 0.1 + (5.0);
  Parameter   d175 := 0.1 + (6.0);
  Parameter   d176 := 0.1 + (3.0);
  Parameter   d177 := 0.1 + (4.0);
  Parameter   d178 := 0.1 + (4.0);
  Parameter   d179 := 0.1 + (5.0);
  Parameter   d180 := 0.1 + (4.0);
  Parameter   d181 := 0.1 + (5.0);
  Parameter   d182 := 0.1 + (5.0);
  Parameter   d183 := 0.1 + (6.0);
  Parameter   d184 := 0.1 + (4.0);
  Parameter   d185 := 0.1 + (5.0);
  Parameter   d186 := 0.1 + (5.0);
  Parameter   d187 := 0.1 + (6.0);
  Parameter   d188 := 0.1 + (5.0);
  Parameter   d189 := 0.1 + (6.0);
  Parameter   d190 := 0.1 + (6.0);
  Parameter   d191 := 0.1 + (7.0);
  Parameter   d192 := 0.1 + (2.0);
  Parameter   d193 := 0.1 + (3.0);
  Parameter   d194 := 0.1 + (3.0);
  Parameter   d195 := 0.1 + (4.0);
  Parameter   d196 := 0.1 + (3.0);
  Parameter   d197 := 0.1 + (4.0);
  Parameter   d198 := 0.1 + (4.0);
  Parameter   d199 := 0.1 + (5.0);
  Parameter   d200 := 0.1 + (3.0);
  Parameter   d201 := 0.1 + (4.0);
  Parameter   d202 := 0.1 + (4.0);
  Parameter   d203 := 0.1 + (5.0);
  Parameter   d204 := 0.1 + (4.0);
  Parameter   d205 := 0.1 + (5.0);
  Parameter   d206 := 0.1 + (5.0);
  Parameter   d207 := 0.1 + (6.0);
  Parameter   d208 := 0.1 + (3.0);
  Parameter   d209 := 0.1 + (4.0);
  Parameter   d210 := 0.1 + (4.0);
  Parameter   d211 := 0.1 + (5.0);
  Parameter   d212 := 0.1 + (4.0);
  Parameter   d213 := 0.1 + (5.0);
  Parameter   d214 := 0.1 + (5.0);
  Parameter   d215 := 0.1 + (6.0);
  Parameter   d216 := 0.1 + (4.0);
  Parameter   d217 := 0.1 + (5.0);
  Parameter   d218 := 0.1 + (5.0);
  Parameter   d219 := 0.1 + (6.0);
  Parameter   d220 := 0.1 + (5.0);
  Parameter   d221 := 0.1 + (6.0);
  Parameter   d222 := 0.1 + (6.0);
  Parameter   d223 := 0.1 + (7.0);
  Parameter   d224 := 0.1 + (3.0);
  Parameter   d225 := 0.1 + (4.0);
  Parameter   d226 := 0.1 + (4.0);
  Parameter   d227 := 0.1 + (5.0);
  Parameter   d228 := 0.1 + (4.0);
  Parameter   d229 := 0.1 + (5.0);
  Parameter   d230 := 0.1 + (5.0);
  Parameter   d231 := 0.1 + (6.0);
  Parameter   d232 := 0.1 + (4.0);
  Parameter   d233 := 0.1 + (5.0);
  Parameter   d234 := 0.1 + (5.0);
  Parameter   d235 := 0.1 + (6.0);
  Parameter   d236 := 0.1 + (5.0);
  Parameter   d237 := 0.1 + (6.0);
  Parameter   d238 := 0.1 + (6.0);
  Parameter   d239 := 0.1 + (7.0);
  Parameter   d240 := 0.1 + (4.0);
  Parameter   d241 := 0.1 + (5.0);
  Parameter   d242 := 0.1 + (5.0);
  Parameter   d243 := 0.1 + (6.0);
  Parameter   d244 := 0.1 + (5.0);
  Parameter   d245 := 0.1 + (6.0);
  Parameter   d246 := 0.1 + (6.0);
  Parameter   d247 := 0.1 + (7.0);
  Parameter   d248 := 0.1 + (5.0);
  Parameter   d249 := 0.1 + (6.0);
  Parameter   d250 := 0.1 + (6.0);
  Parameter   d251 := 0.1 + (7.0);
  Parameter   d252 := 0.1 + (6.0);
  Parameter   d253 := 0.1 + (7.0);
  Parameter   rnz8 := 0.1 + (8);
  Parameter   d254 := 0.1 + (7.0);
  Parameter   d255 := 0.1 + (8.0);

Positive Variable p3 , p5 , p6 , p7 , p9 , p10 , p11 , p12 ,
                   p13 , p14 , p15 , p17 , p18 , p19 , p20 ,
                   p21 , p22 , p23 , p24 , p25 , p26 , p27 ,
                   p28 , p29 , p30 , p31 , p33 , p34 , p35 ,
                   p36 , p37 , p38 , p39 , p40 , p41 , p42 ,
                   p43 , p44 , p45 , p46 , p47 , p48 , p49 ,
                   p50 , p51 , p52 , p53 , p54 , p55 , p56 ,
                   p57 , p58 , p59 , p60 , p61 , p62 , p63 ,
                   p65 , p66 , p67 , p68 , p69 , p70 , p71 ,
                   p72 , p73 , p74 , p75 , p76 , p77 , p78 ,
                   p79 , p80 , p81 , p82 , p83 , p84 , p85 ,
                   p86 , p87 , p88 , p89 , p90 , p91 , p92 ,
                   p93 , p94 , p95 , p96 , p97 , p98 , p99 ,
                   p100 , p101 , p102 , p103 , p104 , p105 ,
                   p106 , p107 , p108 , p109 , p110 , p111 ,
                   p112 , p113 , p114 , p115 , p116 , p117 ,
                   p118 , p119 , p120 , p121 , p122 , p123 ,
                   p124 , p125 , p126 , p127 , p129 , p130 ,
                   p131 , p132 , p133 , p134 , p135 , p136 ,
                   p137 , p138 , p139 , p140 , p141 , p142 ,
                   p143 , p144 , p145 , p146 , p147 , p148 ,
                   p149 , p150 , p151 , p152 , p153 , p154 ,
                   p155 , p156 , p157 , p158 , p159 , p160 ,
                   p161 , p162 , p163 , p164 , p165 , p166 ,
                   p167 , p168 , p169 , p170 , p171 , p172 ,
                   p173 , p174 , p175 , p176 , p177 , p178 ,
                   p179 , p180 , p181 , p182 , p183 , p184 ,
                   p185 , p186 , p187 , p188 , p189 , p190 ,
                   p191 , p192 , p193 , p194 , p195 , p196 ,
                   p197 , p198 , p199 , p200 , p201 , p202 ,
                   p203 , p204 , p205 , p206 , p207 , p208 ,
                   p209 , p210 , p211 , p212 , p213 , p214 ,
                   p215 , p216 , p217 , p218 , p219 , p220 ,
                   p221 , p222 , p223 , p224 , p225 , p226 ,
                   p227 , p228 , p229 , p230 , p231 , p232 ,
                   p233 , p234 , p235 , p236 , p237 , p238 ,
                   p239 , p240 , p241 , p242 , p243 , p244 ,
                   p245 , p246 , p247 , p248 , p249 , p250 ,
                   p251 , p252 , p253 , p254 , p255 , a1_1 ,
                   a1_2 , a1_3 , a1_4 , a1_5 , a1_6 , a1_7 ,
                   a1_8 , a2_1 , a2_2 , a2_3 , a2_4 , a2_5 ,
                   a2_6 , a2_7 , a2_8 , a3_1 , a3_2 , a3_3 ,
                   a3_4 , a3_5 , a3_6 , a3_7 , a3_8 , a4_1 ,
                   a4_2 , a4_3 , a4_4 , a4_5 , a4_6 , a4_7 ,
                   a4_8 , a5_1 , a5_2 , a5_3 , a5_4 , a5_5 ,
                   a5_6 , a5_7 , a5_8 , a6_1 , a6_2 , a6_3 ,
                   a6_4 , a6_5 , a6_6 , a6_7 , a6_8 , a7_1 ,
                   a7_2 , a7_3 , a7_4 , a7_5 , a7_6 , a7_7 ,
                   a7_8 , a8_1 , a8_2 , a8_3 , a8_4 , a8_5 ,
                   a8_6 , a8_7 , a8_8 ;
Variable obj ;

Equation      pe3, pe5, pe6, pe7, pe9, pe10, pe11, pe12,
              pe13, pe14, pe15, pe17, pe18, pe19, pe20,
              pe21, pe22, pe23, pe24, pe25, pe26, pe27,
              pe28, pe29, pe30, pe31, pe33, pe34, pe35,
              pe36, pe37, pe38, pe39, pe40, pe41, pe42,
              pe43, pe44, pe45, pe46, pe47, pe48, pe49,
              pe50, pe51, pe52, pe53, pe54, pe55, pe56,
              pe57, pe58, pe59, pe60, pe61, pe62, pe63,
              pe65, pe66, pe67, pe68, pe69, pe70, pe71,
              pe72, pe73, pe74, pe75, pe76, pe77, pe78,
              pe79, pe80, pe81, pe82, pe83, pe84, pe85,
              pe86, pe87, pe88, pe89, pe90, pe91, pe92,
              pe93, pe94, pe95, pe96, pe97, pe98, pe99,
              pe100, pe101, pe102, pe103, pe104, pe105,
              pe106, pe107, pe108, pe109, pe110, pe111,
              pe112, pe113, pe114, pe115, pe116, pe117,
              pe118, pe119, pe120, pe121, pe122, pe123,
              pe124, pe125, pe126, pe127, pe129, pe130,
              pe131, pe132, pe133, pe134, pe135, pe136,
              pe137, pe138, pe139, pe140, pe141, pe142,
              pe143, pe144, pe145, pe146, pe147, pe148,
              pe149, pe150, pe151, pe152, pe153, pe154,
              pe155, pe156, pe157, pe158, pe159, pe160,
              pe161, pe162, pe163, pe164, pe165, pe166,
              pe167, pe168, pe169, pe170, pe171, pe172,
              pe173, pe174, pe175, pe176, pe177, pe178,
              pe179, pe180, pe181, pe182, pe183, pe184,
              pe185, pe186, pe187, pe188, pe189, pe190,
              pe191, pe192, pe193, pe194, pe195, pe196,
              pe197, pe198, pe199, pe200, pe201, pe202,
              pe203, pe204, pe205, pe206, pe207, pe208,
              pe209, pe210, pe211, pe212, pe213, pe214,
              pe215, pe216, pe217, pe218, pe219, pe220,
              pe221, pe222, pe223, pe224, pe225, pe226,
              pe227, pe228, pe229, pe230, pe231, pe232,
              pe233, pe234, pe235, pe236, pe237, pe238,
              pe239, pe240, pe241, pe242, pe243, pe244,
              pe245, pe246, pe247, pe248, pe249, pe250,
              pe251, pe252, pe253, pe254, pe255, c1, c2,
              c3, c4, c5, c6, c7, c8, r1, r2, r3, r4, r5,
              r6, r7, def_obj ;

pe3..         a2_7 * a1_8 + a2_8 * a1_7 - p3 =e= 0;
pe5..         a2_6 * a1_8 + a2_8 * a1_6 - p5 =e= 0;
pe6..         a2_6 * a1_7 + a2_7 * a1_6 - p6 =e= 0;
pe7..         a3_6 * p3 + a3_7 * p5 + a3_8 * p6 - p7 =e= 0;
pe9..         a2_5 * a1_8 + a2_8 * a1_5 - p9 =e= 0;
pe10..         a2_5 * a1_7 + a2_7 * a1_5 - p10 =e= 0;
pe11..         a3_5 * p3 + a3_7 * p9 + a3_8 * p10 - p11 =e= 0;
pe12..         a2_5 * a1_6 + a2_6 * a1_5 - p12 =e= 0;
pe13..         a3_5 * p5 + a3_6 * p9 + a3_8 * p12 - p13 =e= 0;
pe14..         a3_5 * p6 + a3_6 * p10 + a3_7 * p12 - p14 =e= 0;
pe15..         a4_5 * p7 + a4_6 * p11 + a4_7 * p13 + a4_8 * p14 - p15 =e= 0;
pe17..         a2_4 * a1_8 + a2_8 * a1_4 - p17 =e= 0;
pe18..         a2_4 * a1_7 + a2_7 * a1_4 - p18 =e= 0;
pe19..         a3_4 * p3 + a3_7 * p17 + a3_8 * p18 - p19 =e= 0;
pe20..         a2_4 * a1_6 + a2_6 * a1_4 - p20 =e= 0;
pe21..         a3_4 * p5 + a3_6 * p17 + a3_8 * p20 - p21 =e= 0;
pe22..         a3_4 * p6 + a3_6 * p18 + a3_7 * p20 - p22 =e= 0;
pe23..         a4_4 * p7 + a4_6 * p19 + a4_7 * p21 + a4_8 * p22 - p23 =e= 0;
pe24..         a2_4 * a1_5 + a2_5 * a1_4 - p24 =e= 0;
pe25..         a3_4 * p9 + a3_5 * p17 + a3_8 * p24 - p25 =e= 0;
pe26..         a3_4 * p10 + a3_5 * p18 + a3_7 * p24 - p26 =e= 0;
pe27..         a4_4 * p11 + a4_5 * p19 + a4_7 * p25 + a4_8 * p26 - p27 =e= 0;
pe28..         a3_4 * p12 + a3_5 * p20 + a3_6 * p24 - p28 =e= 0;
pe29..         a4_4 * p13 + a4_5 * p21 + a4_6 * p25 + a4_8 * p28 - p29 =e= 0;
pe30..         a4_4 * p14 + a4_5 * p22 + a4_6 * p26 + a4_7 * p28 - p30 =e= 0;
pe31..         a5_4 * p15 + a5_5 * p23 + a5_6 * p27 + a5_7 * p29 + a5_8 *p30 - p31 =e= 0;
pe33..         a2_3 * a1_8 + a2_8 * a1_3 - p33 =e= 0;
pe34..         a2_3 * a1_7 + a2_7 * a1_3 - p34 =e= 0;
pe35..         a3_3 * p3 + a3_7 * p33 + a3_8 * p34 - p35 =e= 0;
pe36..         a2_3 * a1_6 + a2_6 * a1_3 - p36 =e= 0;
pe37..         a3_3 * p5 + a3_6 * p33 + a3_8 * p36 - p37 =e= 0;
pe38..         a3_3 * p6 + a3_6 * p34 + a3_7 * p36 - p38 =e= 0;
pe39..         a4_3 * p7 + a4_6 * p35 + a4_7 * p37 + a4_8 * p38 - p39 =e= 0;
pe40..         a2_3 * a1_5 + a2_5 * a1_3 - p40 =e= 0;
pe41..         a3_3 * p9 + a3_5 * p33 + a3_8 * p40 - p41 =e= 0;
pe42..         a3_3 * p10 + a3_5 * p34 + a3_7 * p40 - p42 =e= 0;
pe43..         a4_3 * p11 + a4_5 * p35 + a4_7 * p41 + a4_8 * p42 - p43 =e= 0;
pe44..         a3_3 * p12 + a3_5 * p36 + a3_6 * p40 - p44 =e= 0;
pe45..         a4_3 * p13 + a4_5 * p37 + a4_6 * p41 + a4_8 * p44 - p45 =e= 0;
pe46..         a4_3 * p14 + a4_5 * p38 + a4_6 * p42 + a4_7 * p44 - p46 =e= 0;
pe47..         a5_3 * p15 + a5_5 * p39 + a5_6 * p43 + a5_7 * p45 + a5_8 *p46 - p47 =e= 0;
pe48..         a2_3 * a1_4 + a2_4 * a1_3 - p48 =e= 0;
pe49..         a3_3 * p17 + a3_4 * p33 + a3_8 * p48 - p49 =e= 0;
pe50..         a3_3 * p18 + a3_4 * p34 + a3_7 * p48 - p50 =e= 0;
pe51..         a4_3 * p19 + a4_4 * p35 + a4_7 * p49 + a4_8 * p50 - p51 =e= 0;
pe52..         a3_3 * p20 + a3_4 * p36 + a3_6 * p48 - p52 =e= 0;
pe53..         a4_3 * p21 + a4_4 * p37 + a4_6 * p49 + a4_8 * p52 - p53 =e= 0;
pe54..         a4_3 * p22 + a4_4 * p38 + a4_6 * p50 + a4_7 * p52 - p54 =e= 0;
pe55..         a5_3 * p23 + a5_4 * p39 + a5_6 * p51 + a5_7 * p53 + a5_8 *p54 - p55 =e= 0;
pe56..         a3_3 * p24 + a3_4 * p40 + a3_5 * p48 - p56 =e= 0;
pe57..         a4_3 * p25 + a4_4 * p41 + a4_5 * p49 + a4_8 * p56 - p57 =e= 0;
pe58..         a4_3 * p26 + a4_4 * p42 + a4_5 * p50 + a4_7 * p56 - p58 =e= 0;
pe59..         a5_3 * p27 + a5_4 * p43 + a5_5 * p51 + a5_7 * p57 + a5_8 *p58 - p59 =e= 0;
pe60..         a4_3 * p28 + a4_4 * p44 + a4_5 * p52 + a4_6 * p56 - p60 =e= 0;
pe61..         a5_3 * p29 + a5_4 * p45 + a5_5 * p53 + a5_6 * p57 + a5_8 *p60 - p61 =e= 0;
pe62..         a5_3 * p30 + a5_4 * p46 + a5_5 * p54 + a5_6 * p58 + a5_7 *p60 - p62 =e= 0;
pe63..         a6_3 * p31 + a6_4 * p47 + a6_5 * p55 + a6_6 * p59 + a6_7 *p61 + a6_8 * p62 -p63 =e= 0;
pe65..         a2_2 * a1_8 + a2_8 * a1_2 - p65 =e= 0;
pe66..         a2_2 * a1_7 + a2_7 * a1_2 - p66 =e= 0;
pe67..         a3_2 * p3 + a3_7 * p65 + a3_8 * p66 - p67 =e= 0;
pe68..         a2_2 * a1_6 + a2_6 * a1_2 - p68 =e= 0;
pe69..         a3_2 * p5 + a3_6 * p65 + a3_8 * p68 - p69 =e= 0;
pe70..         a3_2 * p6 + a3_6 * p66 + a3_7 * p68 - p70 =e= 0;
pe71..         a4_2 * p7 + a4_6 * p67 + a4_7 * p69 + a4_8 * p70 - p71 =e= 0;
pe72..         a2_2 * a1_5 + a2_5 * a1_2 - p72 =e= 0;
pe73..         a3_2 * p9 + a3_5 * p65 + a3_8 * p72 - p73 =e= 0;
pe74..         a3_2 * p10 + a3_5 * p66 + a3_7 * p72 - p74 =e= 0;
pe75..         a4_2 * p11 + a4_5 * p67 + a4_7 * p73 + a4_8 * p74 - p75 =e= 0;
pe76..         a3_2 * p12 + a3_5 * p68 + a3_6 * p72 - p76 =e= 0;
pe77..         a4_2 * p13 + a4_5 * p69 + a4_6 * p73 + a4_8 * p76 - p77 =e= 0;
pe78..         a4_2 * p14 + a4_5 * p70 + a4_6 * p74 + a4_7 * p76 - p78 =e= 0;
pe79..         a5_2 * p15 + a5_5 * p71 + a5_6 * p75 + a5_7 * p77 + a5_8 *p78 - p79 =e= 0;
pe80..         a2_2 * a1_4 + a2_4 * a1_2 - p80 =e= 0;
pe81..         a3_2 * p17 + a3_4 * p65 + a3_8 * p80 - p81 =e= 0;
pe82..         a3_2 * p18 + a3_4 * p66 + a3_7 * p80 - p82 =e= 0;
pe83..         a4_2 * p19 + a4_4 * p67 + a4_7 * p81 + a4_8 * p82 - p83 =e= 0;
pe84..         a3_2 * p20 + a3_4 * p68 + a3_6 * p80 - p84 =e= 0;
pe85..         a4_2 * p21 + a4_4 * p69 + a4_6 * p81 + a4_8 * p84 - p85 =e= 0;
pe86..         a4_2 * p22 + a4_4 * p70 + a4_6 * p82 + a4_7 * p84 - p86 =e= 0;
pe87..         a5_2 * p23 + a5_4 * p71 + a5_6 * p83 + a5_7 * p85 + a5_8 *p86 - p87 =e= 0;
pe88..         a3_2 * p24 + a3_4 * p72 + a3_5 * p80 - p88 =e= 0;
pe89..         a4_2 * p25 + a4_4 * p73 + a4_5 * p81 + a4_8 * p88 - p89 =e= 0;
pe90..         a4_2 * p26 + a4_4 * p74 + a4_5 * p82 + a4_7 * p88 - p90 =e= 0;
pe91..         a5_2 * p27 + a5_4 * p75 + a5_5 * p83 + a5_7 * p89 + a5_8 *p90 - p91 =e= 0;
pe92..         a4_2 * p28 + a4_4 * p76 + a4_5 * p84 + a4_6 * p88 - p92 =e= 0;
pe93..         a5_2 * p29 + a5_4 * p77 + a5_5 * p85 + a5_6 * p89 + a5_8 *p92 - p93 =e= 0;
pe94..         a5_2 * p30 + a5_4 * p78 + a5_5 * p86 + a5_6 * p90 + a5_7 *p92 - p94 =e= 0;
pe95..         a6_2 * p31 + a6_4 * p79 + a6_5 * p87 + a6_6 * p91 + a6_7 *p93 + a6_8 * p94 -p95 =e= 0;
pe96..         a2_2 * a1_3 + a2_3 * a1_2 - p96 =e= 0;
pe97..         a3_2 * p33 + a3_3 * p65 + a3_8 * p96 - p97 =e= 0;
pe98..         a3_2 * p34 + a3_3 * p66 + a3_7 * p96 - p98 =e= 0;
pe99..         a4_2 * p35 + a4_3 * p67 + a4_7 * p97 + a4_8 * p98 - p99 =e= 0;
pe100..         a3_2 * p36 + a3_3 * p68 + a3_6 * p96 - p100 =e= 0;
pe101..         a4_2 * p37 + a4_3 * p69 + a4_6 * p97 + a4_8 * p100 - p101 =e=0;
pe102..         a4_2 * p38 + a4_3 * p70 + a4_6 * p98 + a4_7 * p100 - p102 =e=0;
pe103..         a5_2 * p39 + a5_3 * p71 + a5_6 * p99 + a5_7 * p101 + a5_8 *p102 - p103 =e= 0;
pe104..         a3_2 * p40 + a3_3 * p72 + a3_5 * p96 - p104 =e= 0;
pe105..         a4_2 * p41 + a4_3 * p73 + a4_5 * p97 + a4_8 * p104 - p105 =e=0;
pe106..         a4_2 * p42 + a4_3 * p74 + a4_5 * p98 + a4_7 * p104 - p106 =e=0;
pe107..         a5_2 * p43 + a5_3 * p75 + a5_5 * p99 + a5_7 * p105 + a5_8 *p106 - p107 =e= 0;
pe108..         a4_2 * p44 + a4_3 * p76 + a4_5 * p100 + a4_6 * p104 - p108 =e=0;
pe109..         a5_2 * p45 + a5_3 * p77 + a5_5 * p101 + a5_6 * p105 + a5_8 *p108 - p109 =e= 0;
pe110..         a5_2 * p46 + a5_3 * p78 + a5_5 * p102 + a5_6 * p106 + a5_7 *p108 - p110 =e= 0;
pe111..         a6_2 * p47 + a6_3 * p79 + a6_5 * p103 + a6_6 * p107 + a6_7 *p109 + a6_8 * p110- p111 =e= 0;
pe112..         a3_2 * p48 + a3_3 * p80 + a3_4 * p96 - p112 =e= 0;
pe113..         a4_2 * p49 + a4_3 * p81 + a4_4 * p97 + a4_8 * p112 - p113 =e=0;
pe114..         a4_2 * p50 + a4_3 * p82 + a4_4 * p98 + a4_7 * p112 - p114 =e=0;
pe115..         a5_2 * p51 + a5_3 * p83 + a5_4 * p99 + a5_7 * p113 + a5_8 *p114 - p115 =e= 0;
pe116..         a4_2 * p52 + a4_3 * p84 + a4_4 * p100 + a4_6 * p112 - p116 =e=0;
pe117..         a5_2 * p53 + a5_3 * p85 + a5_4 * p101 + a5_6 * p113 + a5_8 *p116 - p117 =e= 0;
pe118..         a5_2 * p54 + a5_3 * p86 + a5_4 * p102 + a5_6 * p114 + a5_7 *p116 - p118 =e= 0;
pe119..         a6_2 * p55 + a6_3 * p87 + a6_4 * p103 + a6_6 * p115 + a6_7 *p117 + a6_8 * p118- p119 =e= 0;
pe120..         a4_2 * p56 + a4_3 * p88 + a4_4 * p104 + a4_5 * p112 - p120 =e=0;
pe121..         a5_2 * p57 + a5_3 * p89 + a5_4 * p105 + a5_5 * p113 + a5_8 *p120 - p121 =e= 0;
pe122..         a5_2 * p58 + a5_3 * p90 + a5_4 * p106 + a5_5 * p114 + a5_7 *p120 - p122 =e= 0;
pe123..         a6_2 * p59 + a6_3 * p91 + a6_4 * p107 + a6_5 * p115 + a6_7 *p121 + a6_8 * p122- p123 =e= 0;
pe124..         a5_2 * p60 + a5_3 * p92 + a5_4 * p108 + a5_5 * p116 + a5_6 *p120 - p124 =e= 0;
pe125..         a6_2 * p61 + a6_3 * p93 + a6_4 * p109 + a6_5 * p117 + a6_6 *p121 + a6_8 * p124- p125 =e= 0;
pe126..         a6_2 * p62 + a6_3 * p94 + a6_4 * p110 + a6_5 * p118 + a6_6 *p122 + a6_7 * p124- p126 =e= 0;
pe127..         a7_2 * p63 + a7_3 * p95 + a7_4 * p111 + a7_5 * p119 + a7_6 *p123 + a7_7 * p125+ a7_8 * p126 - p127 =e= 0;
pe129..         a2_1 * a1_8 + a2_8 * a1_1 - p129 =e= 0;
pe130..         a2_1 * a1_7 + a2_7 * a1_1 - p130 =e= 0;
pe131..         a3_1 * p3 + a3_7 * p129 + a3_8 * p130 - p131 =e= 0;
pe132..         a2_1 * a1_6 + a2_6 * a1_1 - p132 =e= 0;
pe133..         a3_1 * p5 + a3_6 * p129 + a3_8 * p132 - p133 =e= 0;
pe134..         a3_1 * p6 + a3_6 * p130 + a3_7 * p132 - p134 =e= 0;
pe135..         a4_1 * p7 + a4_6 * p131 + a4_7 * p133 + a4_8 * p134 - p135 =e=0;
pe136..         a2_1 * a1_5 + a2_5 * a1_1 - p136 =e= 0;
pe137..         a3_1 * p9 + a3_5 * p129 + a3_8 * p136 - p137 =e= 0;
pe138..         a3_1 * p10 + a3_5 * p130 + a3_7 * p136 - p138 =e= 0;
pe139..         a4_1 * p11 + a4_5 * p131 + a4_7 * p137 + a4_8 * p138 - p139 =e=0;
pe140..         a3_1 * p12 + a3_5 * p132 + a3_6 * p136 - p140 =e= 0;
pe141..         a4_1 * p13 + a4_5 * p133 + a4_6 * p137 + a4_8 * p140 - p141 =e=0;
pe142..         a4_1 * p14 + a4_5 * p134 + a4_6 * p138 + a4_7 * p140 - p142 =e=0;
pe143..         a5_1 * p15 + a5_5 * p135 + a5_6 * p139 + a5_7 * p141 + a5_8 *p142 - p143 =e= 0;
pe144..         a2_1 * a1_4 + a2_4 * a1_1 - p144 =e= 0;
pe145..         a3_1 * p17 + a3_4 * p129 + a3_8 * p144 - p145 =e= 0;
pe146..         a3_1 * p18 + a3_4 * p130 + a3_7 * p144 - p146 =e= 0;
pe147..         a4_1 * p19 + a4_4 * p131 + a4_7 * p145 + a4_8 * p146 - p147 =e=0;
pe148..         a3_1 * p20 + a3_4 * p132 + a3_6 * p144 - p148 =e= 0;
pe149..         a4_1 * p21 + a4_4 * p133 + a4_6 * p145 + a4_8 * p148 - p149 =e=0;
pe150..         a4_1 * p22 + a4_4 * p134 + a4_6 * p146 + a4_7 * p148 - p150 =e=0;
pe151..         a5_1 * p23 + a5_4 * p135 + a5_6 * p147 + a5_7 * p149 + a5_8 *p150 - p151 =e= 0;
pe152..         a3_1 * p24 + a3_4 * p136 + a3_5 * p144 - p152 =e= 0;
pe153..         a4_1 * p25 + a4_4 * p137 + a4_5 * p145 + a4_8 * p152 - p153 =e=0;
pe154..         a4_1 * p26 + a4_4 * p138 + a4_5 * p146 + a4_7 * p152 - p154 =e=0;
pe155..         a5_1 * p27 + a5_4 * p139 + a5_5 * p147 + a5_7 * p153 + a5_8 *p154 - p155 =e= 0;
pe156..         a4_1 * p28 + a4_4 * p140 + a4_5 * p148 + a4_6 * p152 - p156 =e=0;
pe157..         a5_1 * p29 + a5_4 * p141 + a5_5 * p149 + a5_6 * p153 + a5_8 *p156 - p157 =e= 0;
pe158..         a5_1 * p30 + a5_4 * p142 + a5_5 * p150 + a5_6 * p154 + a5_7 *p156 - p158 =e= 0;
pe159..         a6_1 * p31 + a6_4 * p143 + a6_5 * p151 + a6_6 * p155 + a6_7 *p157 + a6_8 *p158 - p159 =e= 0;
pe160..         a2_1 * a1_3 + a2_3 * a1_1 - p160 =e= 0;
pe161..         a3_1 * p33 + a3_3 * p129 + a3_8 * p160 - p161 =e= 0;
pe162..         a3_1 * p34 + a3_3 * p130 + a3_7 * p160 - p162 =e= 0;
pe163..         a4_1 * p35 + a4_3 * p131 + a4_7 * p161 + a4_8 * p162 - p163 =e=0;
pe164..         a3_1 * p36 + a3_3 * p132 + a3_6 * p160 - p164 =e= 0;
pe165..         a4_1 * p37 + a4_3 * p133 + a4_6 * p161 + a4_8 * p164 - p165 =e=0;
pe166..         a4_1 * p38 + a4_3 * p134 + a4_6 * p162 + a4_7 * p164 - p166 =e=0;
pe167..         a5_1 * p39 + a5_3 * p135 + a5_6 * p163 + a5_7 * p165 + a5_8 *p166 - p167 =e= 0;
pe168..         a3_1 * p40 + a3_3 * p136 + a3_5 * p160 - p168 =e= 0;
pe169..         a4_1 * p41 + a4_3 * p137 + a4_5 * p161 + a4_8 * p168 - p169 =e=0;
pe170..         a4_1 * p42 + a4_3 * p138 + a4_5 * p162 + a4_7 * p168 - p170 =e=0;
pe171..         a5_1 * p43 + a5_3 * p139 + a5_5 * p163 + a5_7 * p169 + a5_8 *p170 - p171 =e= 0;
pe172..         a4_1 * p44 + a4_3 * p140 + a4_5 * p164 + a4_6 * p168 - p172 =e=0;
pe173..         a5_1 * p45 + a5_3 * p141 + a5_5 * p165 + a5_6 * p169 + a5_8 *p172 - p173 =e= 0;
pe174..         a5_1 * p46 + a5_3 * p142 + a5_5 * p166 + a5_6 * p170 + a5_7 *p172 - p174 =e= 0;
pe175..         a6_1 * p47 + a6_3 * p143 + a6_5 * p167 + a6_6 * p171 + a6_7 *p173 + a6_8 *p174 - p175 =e= 0;
pe176..         a3_1 * p48 + a3_3 * p144 + a3_4 * p160 - p176 =e= 0;
pe177..         a4_1 * p49 + a4_3 * p145 + a4_4 * p161 + a4_8 * p176 - p177 =e=0;
pe178..         a4_1 * p50 + a4_3 * p146 + a4_4 * p162 + a4_7 * p176 - p178 =e=0;
pe179..         a5_1 * p51 + a5_3 * p147 + a5_4 * p163 + a5_7 * p177 + a5_8 *p178 - p179 =e= 0;
pe180..         a4_1 * p52 + a4_3 * p148 + a4_4 * p164 + a4_6 * p176 - p180 =e=0;
pe181..         a5_1 * p53 + a5_3 * p149 + a5_4 * p165 + a5_6 * p177 + a5_8 *p180 - p181 =e= 0;
pe182..         a5_1 * p54 + a5_3 * p150 + a5_4 * p166 + a5_6 * p178 + a5_7 *p180 - p182 =e= 0;
pe183..         a6_1 * p55 + a6_3 * p151 + a6_4 * p167 + a6_6 * p179 + a6_7 *p181 + a6_8 *p182 - p183 =e= 0;
pe184..         a4_1 * p56 + a4_3 * p152 + a4_4 * p168 + a4_5 * p176 - p184 =e=0;
pe185..         a5_1 * p57 + a5_3 * p153 + a5_4 * p169 + a5_5 * p177 + a5_8 *p184 - p185 =e= 0;
pe186..         a5_1 * p58 + a5_3 * p154 + a5_4 * p170 + a5_5 * p178 + a5_7 *p184 - p186 =e= 0;
pe187..         a6_1 * p59 + a6_3 * p155 + a6_4 * p171 + a6_5 * p179 + a6_7 *p185 + a6_8 *p186 - p187 =e= 0;
pe188..         a5_1 * p60 + a5_3 * p156 + a5_4 * p172 + a5_5 * p180 + a5_6 *p184 - p188 =e= 0;
pe189..         a6_1 * p61 + a6_3 * p157 + a6_4 * p173 + a6_5 * p181 + a6_6 *p185 + a6_8 *p188 - p189 =e= 0;
pe190..         a6_1 * p62 + a6_3 * p158 + a6_4 * p174 + a6_5 * p182 + a6_6 *p186 + a6_7 *p188 - p190 =e= 0;
pe191..         a7_1 * p63 + a7_3 * p159 + a7_4 * p175 + a7_5 * p183 + a7_6 *p187 + a7_7 *p189 + a7_8 * p190 - p191 =e= 0;
pe192..         a2_1 * a1_2 + a2_2 * a1_1 - p192 =e= 0;
pe193..         a3_1 * p65 + a3_2 * p129 + a3_8 * p192 - p193 =e= 0;
pe194..         a3_1 * p66 + a3_2 * p130 + a3_7 * p192 - p194 =e= 0;
pe195..         a4_1 * p67 + a4_2 * p131 + a4_7 * p193 + a4_8 * p194 - p195 =e=0;
pe196..         a3_1 * p68 + a3_2 * p132 + a3_6 * p192 - p196 =e= 0;
pe197..         a4_1 * p69 + a4_2 * p133 + a4_6 * p193 + a4_8 * p196 - p197 =e=0;
pe198..         a4_1 * p70 + a4_2 * p134 + a4_6 * p194 + a4_7 * p196 - p198 =e=0;
pe199..         a5_1 * p71 + a5_2 * p135 + a5_6 * p195 + a5_7 * p197 + a5_8 *p198 - p199 =e= 0;
pe200..         a3_1 * p72 + a3_2 * p136 + a3_5 * p192 - p200 =e= 0;
pe201..         a4_1 * p73 + a4_2 * p137 + a4_5 * p193 + a4_8 * p200 - p201 =e=0;
pe202..         a4_1 * p74 + a4_2 * p138 + a4_5 * p194 + a4_7 * p200 - p202 =e=0;
pe203..         a5_1 * p75 + a5_2 * p139 + a5_5 * p195 + a5_7 * p201 + a5_8 *p202 - p203 =e= 0;
pe204..         a4_1 * p76 + a4_2 * p140 + a4_5 * p196 + a4_6 * p200 - p204 =e=0;
pe205..         a5_1 * p77 + a5_2 * p141 + a5_5 * p197 + a5_6 * p201 + a5_8 *p204 - p205 =e= 0;
pe206..         a5_1 * p78 + a5_2 * p142 + a5_5 * p198 + a5_6 * p202 + a5_7 *p204 - p206 =e= 0;
pe207..         a6_1 * p79 + a6_2 * p143 + a6_5 * p199 + a6_6 * p203 + a6_7 *p205 + a6_8 *p206 - p207 =e= 0;
pe208..         a3_1 * p80 + a3_2 * p144 + a3_4 * p192 - p208 =e= 0;
pe209..         a4_1 * p81 + a4_2 * p145 + a4_4 * p193 + a4_8 * p208 - p209 =e=0;
pe210..         a4_1 * p82 + a4_2 * p146 + a4_4 * p194 + a4_7 * p208 - p210 =e=0;
pe211..         a5_1 * p83 + a5_2 * p147 + a5_4 * p195 + a5_7 * p209 + a5_8 *p210 - p211 =e= 0;
pe212..         a4_1 * p84 + a4_2 * p148 + a4_4 * p196 + a4_6 * p208 - p212 =e=0;
pe213..         a5_1 * p85 + a5_2 * p149 + a5_4 * p197 + a5_6 * p209 + a5_8 *p212 - p213 =e= 0;
pe214..         a5_1 * p86 + a5_2 * p150 + a5_4 * p198 + a5_6 * p210 + a5_7 *p212 - p214 =e= 0;
pe215..         a6_1 * p87 + a6_2 * p151 + a6_4 * p199 + a6_6 * p211 + a6_7 *p213 + a6_8 *p214 - p215 =e= 0;
pe216..         a4_1 * p88 + a4_2 * p152 + a4_4 * p200 + a4_5 * p208 - p216 =e=0;
pe217..         a5_1 * p89 + a5_2 * p153 + a5_4 * p201 + a5_5 * p209 + a5_8 *p216 - p217 =e= 0;
pe218..         a5_1 * p90 + a5_2 * p154 + a5_4 * p202 + a5_5 * p210 + a5_7 *p216 - p218 =e= 0;
pe219..         a6_1 * p91 + a6_2 * p155 + a6_4 * p203 + a6_5 * p211 + a6_7 *p217 + a6_8 *p218 - p219 =e= 0;
pe220..         a5_1 * p92 + a5_2 * p156 + a5_4 * p204 + a5_5 * p212 + a5_6 *p216 - p220 =e= 0;
pe221..         a6_1 * p93 + a6_2 * p157 + a6_4 * p205 + a6_5 * p213 + a6_6 *p217 + a6_8 *p220 - p221 =e= 0;
pe222..         a6_1 * p94 + a6_2 * p158 + a6_4 * p206 + a6_5 * p214 + a6_6 *p218 + a6_7 *p220 - p222 =e= 0;
pe223..         a7_1 * p95 + a7_2 * p159 + a7_4 * p207 + a7_5 * p215 + a7_6 *p219 + a7_7 *p221 + a7_8 * p222 - p223 =e= 0;
pe224..         a3_1 * p96 + a3_2 * p160 + a3_3 * p192 - p224 =e= 0;
pe225..         a4_1 * p97 + a4_2 * p161 + a4_3 * p193 + a4_8 * p224 - p225 =e=0;
pe226..         a4_1 * p98 + a4_2 * p162 + a4_3 * p194 + a4_7 * p224 - p226 =e=0;
pe227..         a5_1 * p99 + a5_2 * p163 + a5_3 * p195 + a5_7 * p225 + a5_8 *p226 - p227 =e= 0;
pe228..         a4_1 * p100 + a4_2 * p164 + a4_3 * p196 + a4_6 * p224 - p228=e= 0;
pe229..         a5_1 * p101 + a5_2 * p165 + a5_3 * p197 + a5_6 * p225 + a5_8* p228 - p229 =e= 0;
pe230..         a5_1 * p102 + a5_2 * p166 + a5_3 * p198 + a5_6 * p226 + a5_7* p228 - p230 =e= 0;
pe231..         a6_1 * p103 + a6_2 * p167 + a6_3 * p199 + a6_6 * p227 + a6_7* p229 + a6_8 *p230 - p231 =e= 0;
pe232..         a4_1 * p104 + a4_2 * p168 + a4_3 * p200 + a4_5 * p224 - p232=e= 0;
pe233..         a5_1 * p105 + a5_2 * p169 + a5_3 * p201 + a5_5 * p225 + a5_8* p232 - p233 =e= 0;
pe234..         a5_1 * p106 + a5_2 * p170 + a5_3 * p202 + a5_5 * p226 + a5_7* p232 - p234 =e= 0;
pe235..         a6_1 * p107 + a6_2 * p171 + a6_3 * p203 + a6_5 * p227 + a6_7* p233 + a6_8 *p234 - p235 =e= 0;
pe236..         a5_1 * p108 + a5_2 * p172 + a5_3 * p204 + a5_5 * p228 + a5_6* p232 - p236 =e= 0;
pe237..         a6_1 * p109 + a6_2 * p173 + a6_3 * p205 + a6_5 * p229 + a6_6* p233 + a6_8 *p236 - p237 =e= 0;
pe238..         a6_1 * p110 + a6_2 * p174 + a6_3 * p206 + a6_5 * p230 + a6_6* p234 + a6_7 *p236 - p238 =e= 0;
pe239..         a7_1 * p111 + a7_2 * p175 + a7_3 * p207 + a7_5 * p231 + a7_6* p235 + a7_7 *p237 + a7_8 * p238 - p239 =e= 0;
pe240..         a4_1 * p112 + a4_2 * p176 + a4_3 * p208 + a4_4 * p224 - p240=e= 0;
pe241..         a5_1 * p113 + a5_2 * p177 + a5_3 * p209 + a5_4 * p225 + a5_8* p240 - p241 =e= 0;
pe242..         a5_1 * p114 + a5_2 * p178 + a5_3 * p210 + a5_4 * p226 + a5_7* p240 - p242 =e= 0;
pe243..         a6_1 * p115 + a6_2 * p179 + a6_3 * p211 + a6_4 * p227 + a6_7* p241 + a6_8 *p242 - p243 =e= 0;
pe244..         a5_1 * p116 + a5_2 * p180 + a5_3 * p212 + a5_4 * p228 + a5_6* p240 - p244 =e= 0;
pe245..         a6_1 * p117 + a6_2 * p181 + a6_3 * p213 + a6_4 * p229 + a6_6* p241 + a6_8 *p244 - p245 =e= 0;
pe246..         a6_1 * p118 + a6_2 * p182 + a6_3 * p214 + a6_4 * p230 + a6_6* p242 + a6_7 *p244 - p246 =e= 0;
pe247..         a7_1 * p119 + a7_2 * p183 + a7_3 * p215 + a7_4 * p231 + a7_6* p243 + a7_7 *p245 + a7_8 * p246 - p247 =e= 0;
pe248..         a5_1 * p120 + a5_2 * p184 + a5_3 * p216 + a5_4 * p232 + a5_5* p240 - p248 =e= 0;
pe249..         a6_1 * p121 + a6_2 * p185 + a6_3 * p217 + a6_4 * p233 + a6_5* p241 + a6_8 *p248 - p249 =e= 0;
pe250..         a6_1 * p122 + a6_2 * p186 + a6_3 * p218 + a6_4 * p234 + a6_5* p242 + a6_7 *p248 - p250 =e= 0;
pe251..         a7_1 * p123 + a7_2 * p187 + a7_3 * p219 + a7_4 * p235 + a7_5* p243 + a7_7 *p249 + a7_8 * p250 - p251 =e= 0;
pe252..         a6_1 * p124 + a6_2 * p188 + a6_3 * p220 + a6_4 * p236 + a6_5* p244 + a6_6 *p248 - p252 =e= 0;
pe253..         a7_1 * p125 + a7_2 * p189 + a7_3 * p221 + a7_4 * p237 + a7_5* p245 + a7_6 *p249 + a7_8 * p252 - p253 =e= 0;
pe254..         a7_1 * p126 + a7_2 * p190 + a7_3 * p222 + a7_4 * p238 + a7_5* p246 + a7_6 *p250 + a7_7 * p252 - p254 =e= 0;
pe255..         a8_1 * p127 + a8_2 * p191 + a8_3 * p223 + a8_4 * p239 + a8_5* p247 + a8_6 *p251 + a8_7 * p253 + a8_8 * p254 - p255 =e= 0;
c1..         a1_1 + a2_1 + a3_1 + a4_1 + a5_1 + a6_1 + a7_1 + a8_1 - 1.0 =e=0;
c2..         a1_2 + a2_2 + a3_2 + a4_2 + a5_2 + a6_2 + a7_2 + a8_2 - 1.0 =e=0;
c3..         a1_3 + a2_3 + a3_3 + a4_3 + a5_3 + a6_3 + a7_3 + a8_3 - 1.0 =e=0;
c4..         a1_4 + a2_4 + a3_4 + a4_4 + a5_4 + a6_4 + a7_4 + a8_4 - 1.0 =e=0;
c5..         a1_5 + a2_5 + a3_5 + a4_5 + a5_5 + a6_5 + a7_5 + a8_5 - 1.0 =e=0;
c6..         a1_6 + a2_6 + a3_6 + a4_6 + a5_6 + a6_6 + a7_6 + a8_6 - 1.0 =e=0;
c7..         a1_7 + a2_7 + a3_7 + a4_7 + a5_7 + a6_7 + a7_7 + a8_7 - 1.0 =e=0;
c8..         a1_8 + a2_8 + a3_8 + a4_8 + a5_8 + a6_8 + a7_8 + a8_8 - 1.0 =e=0;
r1..         a1_1 + a1_2 + a1_3 + a1_4 + a1_5 + a1_6 + a1_7 + a1_8 - 1.0 =e=0;
r2..         a2_1 + a2_2 + a2_3 + a2_4 + a2_5 + a2_6 + a2_7 + a2_8 - 1.0 =e=0;
r3..         a3_1 + a3_2 + a3_3 + a3_4 + a3_5 + a3_6 + a3_7 + a3_8 - 1.0 =e=0;
r4..         a4_1 + a4_2 + a4_3 + a4_4 + a4_5 + a4_6 + a4_7 + a4_8 - 1.0 =e=0;
r5..         a5_1 + a5_2 + a5_3 + a5_4 + a5_5 + a5_6 + a5_7 + a5_8 - 1.0 =e=0;
r6..         a6_1 + a6_2 + a6_3 + a6_4 + a6_5 + a6_6 + a6_7 + a6_8 - 1.0 =e=0;
r7..         a7_1 + a7_2 + a7_3 + a7_4 + a7_5 + a7_6 + a7_7 + a7_8 - 1.0 =e=0;

Def_obj.. obj =e= p255;

      a1_1.up = 0.0 ; a1_2.up = 1.0 ; a1_3.up = 1.0 ;
      a1_4.up = 1.0 ; a1_5.up = 1.0 ; a1_6.up = 1.0 ;
      a1_7.up = 1.0 ; a1_8.up = 1.0 ; a2_1.up = 1.0 ;
      a2_2.up = 0.0 ; a2_3.up = 1.0 ; a2_4.up = 1.0 ;
      a2_5.up = 1.0 ; a2_6.up = 1.0 ; a2_7.up = 1.0 ;
      a2_8.up = 1.0 ; a3_1.up = 1.0 ; a3_2.up = 1.0 ;
      a3_3.up = 0.0 ; a3_4.up = 1.0 ; a3_5.up = 1.0 ;
      a3_6.up = 1.0 ; a3_7.up = 1.0 ; a3_8.up = 1.0 ;
      a4_1.up = 1.0 ; a4_2.up = 1.0 ; a4_3.up = 1.0 ;
      a4_4.up = 0.0 ; a4_5.up = 1.0 ; a4_6.up = 1.0 ;
      a4_7.up = 1.0 ; a4_8.up = 1.0 ; a5_1.up = 1.0 ;
      a5_2.up = 1.0 ; a5_3.up = 1.0 ; a5_4.up = 1.0 ;
      a5_5.up = 0.0 ; a5_6.up = 1.0 ; a5_7.up = 1.0 ;
      a5_8.up = 1.0 ; a6_1.up = 1.0 ; a6_2.up = 1.0 ;
      a6_3.up = 1.0 ; a6_4.up = 1.0 ; a6_5.up = 1.0 ;
      a6_6.up = 0.0 ; a6_7.up = 1.0 ; a6_8.up = 1.0 ;
      a7_1.up = 1.0 ; a7_2.up = 1.0 ; a7_3.up = 1.0 ;
      a7_4.up = 1.0 ; a7_5.up = 1.0 ; a7_6.up = 1.0 ;
      a7_7.up = 0.0 ; a7_8.up = 1.0 ; a8_1.up = 1.0 ;
      a8_2.up = 1.0 ; a8_3.up = 1.0 ; a8_4.up = 1.0 ;
      a8_5.up = 1.0 ; a8_6.up = 1.0 ; a8_7.up = 1.0 ;
      a8_8.up = 0.0 ;


Model minc44  /all/;

Solve minc44 using nlp minimazing obj;

 display p3.l;  display p5.l;  display p6.l;  display p7.l;
 display p9.l; display p10.l; display p11.l; display p12.l;
display p13.l; display p14.l; display p15.l; display p17.l;
display p18.l; display p19.l; display p20.l; display p21.l;
display p22.l; display p23.l; display p24.l; display p25.l;
display p26.l; display p27.l; display p28.l; display p29.l;
display p30.l; display p31.l; display p33.l; display p34.l;
display p35.l; display p36.l; display p37.l; display p38.l;
display p39.l; display p40.l; display p41.l; display p42.l;
display p43.l; display p44.l; display p45.l; display p46.l;
display p47.l; display p48.l; display p49.l; display p50.l;
display p51.l; display p52.l; display p53.l; display p54.l;
display p55.l; display p56.l; display p57.l; display p58.l;
display p59.l; display p60.l; display p61.l; display p62.l;
display p63.l; display p65.l; display p66.l; display p67.l;
display p68.l; display p69.l; display p70.l; display p71.l;
display p72.l; display p73.l; display p74.l; display p75.l;
display p76.l; display p77.l; display p78.l; display p79.l;
display p80.l; display p81.l; display p82.l; display p83.l;
display p84.l; display p85.l; display p86.l; display p87.l;
display p88.l; display p89.l; display p90.l; display p91.l;
display p92.l; display p93.l; display p94.l; display p95.l;
display p96.l; display p97.l; display p98.l; display p99.l;
display p100.l; display p101.l; display p102.l; display p103.l;
display p104.l; display p105.l; display p106.l; display p107.l;
display p108.l; display p109.l; display p110.l; display p111.l;
display p112.l; display p113.l; display p114.l; display p115.l;
display p116.l; display p117.l; display p118.l; display p119.l;
display p120.l; display p121.l; display p122.l; display p123.l;
display p124.l; display p125.l; display p126.l; display p127.l;
display p129.l; display p130.l; display p131.l; display p132.l;
display p133.l; display p134.l; display p135.l; display p136.l;
display p137.l; display p138.l; display p139.l; display p140.l;
display p141.l; display p142.l; display p143.l; display p144.l;
display p145.l; display p146.l; display p147.l; display p148.l;
display p149.l; display p150.l; display p151.l; display p152.l;
display p153.l; display p154.l; display p155.l; display p156.l;
display p157.l; display p158.l; display p159.l; display p160.l;
display p161.l; display p162.l; display p163.l; display p164.l;
display p165.l; display p166.l; display p167.l; display p168.l;
display p169.l; display p170.l; display p171.l; display p172.l;
display p173.l; display p174.l; display p175.l; display p176.l;
display p177.l; display p178.l; display p179.l; display p180.l;
display p181.l; display p182.l; display p183.l; display p184.l;
display p185.l; display p186.l; display p187.l; display p188.l;
display p189.l; display p190.l; display p191.l; display p192.l;
display p193.l; display p194.l; display p195.l; display p196.l;
display p197.l; display p198.l; display p199.l; display p200.l;
display p201.l; display p202.l; display p203.l; display p204.l;
display p205.l; display p206.l; display p207.l; display p208.l;
display p209.l; display p210.l; display p211.l; display p212.l;
display p213.l; display p214.l; display p215.l; display p216.l;
display p217.l; display p218.l; display p219.l; display p220.l;
display p221.l; display p222.l; display p223.l; display p224.l;
display p225.l; display p226.l; display p227.l; display p228.l;
display p229.l; display p230.l; display p231.l; display p232.l;
display p233.l; display p234.l; display p235.l; display p236.l;
display p237.l; display p238.l; display p239.l; display p240.l;
display p241.l; display p242.l; display p243.l; display p244.l;
display p245.l; display p246.l; display p247.l; display p248.l;
display p249.l; display p250.l; display p251.l; display p252.l;
display p253.l; display p254.l; display p255.l; display a1_1.l;
display a1_2.l; display a1_3.l; display a1_4.l; display a1_5.l;
display a1_6.l; display a1_7.l; display a1_8.l; display a2_1.l;
display a2_2.l; display a2_3.l; display a2_4.l; display a2_5.l;
display a2_6.l; display a2_7.l; display a2_8.l; display a3_1.l;
display a3_2.l; display a3_3.l; display a3_4.l; display a3_5.l;
display a3_6.l; display a3_7.l; display a3_8.l; display a4_1.l;
display a4_2.l; display a4_3.l; display a4_4.l; display a4_5.l;
display a4_6.l; display a4_7.l; display a4_8.l; display a5_1.l;
display a5_2.l; display a5_3.l; display a5_4.l; display a5_5.l;
display a5_6.l; display a5_7.l; display a5_8.l; display a6_1.l;
display a6_2.l; display a6_3.l; display a6_4.l; display a6_5.l;
display a6_6.l; display a6_7.l; display a6_8.l; display a7_1.l;
display a7_2.l; display a7_3.l; display a7_4.l; display a7_5.l;
display a7_6.l; display a7_7.l; display a7_8.l; display a8_1.l;
display a8_2.l; display a8_3.l; display a8_4.l; display a8_5.l;
display a8_6.l; display a8_7.l; display a8_8.l; display obj.l;
