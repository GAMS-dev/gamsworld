* Cute AMPL model  (translation to GAMS)
*
* AMPL Model by Hande Y. Benson
*
* Copyright (C) 2001 Princeton University
* All Rights Reserved
*
* Permission to use, copy, modify, and distribute this software and
* its documentation for any purpose and without fee is hereby
* granted, provided that the above copyright notice appear in all
* copies and that the copyright notice and this
* permission notice appear in all supporting documentation.

*   Source:
*   Ph. Toint and A. Griewank.

*   SIF input: Ph. Toint, June 1990.

*   classification OBR2-AY-8-0

* hs105.mod   OBR2-RN-8-16
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Maximum likelihood estimation

* Ref.: W. Hock and K. Schittkowski, Test Examples for Nonlinear Programming
* Codes.  Lecture Notes in Economics and Mathematical Systems, v. 187,
* Springer-Verlag, New York, 1981, p. 114.

* Number of variables:  8
* Number of constraints:  16 (17 before presolve)
* Objective nonseparable
* Objective nonconvex
* Linear constraints

$Set N 8
Set i /i1*i%N%/;
$Set M 235
Set j /j1*j%M%/;

parameter PI   ; PI = 4*arctan(1);
parameter y(j) ;
Loop(j,
if (((ord(j)>=  2) and (ord(j)<=  2)),   y[j] =  95 );
if (((ord(j)>=  3) and (ord(j)<=  6)),   y[j] = 105 );
if (((ord(j)>=  7) and (ord(j)<= 10)),   y[j] = 110 );
if (((ord(j)>= 11) and (ord(j)<= 25)),   y[j] = 115 );
if (((ord(j)>= 26) and (ord(j)<= 40)),   y[j] = 120 );
if (((ord(j)>= 41) and (ord(j)<= 55)),   y[j] = 125 );
if (((ord(j)>= 56) and (ord(j)<= 68)),   y[j] = 130 );
if (((ord(j)>= 69) and (ord(j)<= 89)),   y[j] = 135 );
if (((ord(j)>= 90) and (ord(j)<=101)),   y[j] = 140 );
if (((ord(j)>=102) and (ord(j)<=118)),   y[j] = 145 );
if (((ord(j)>=119) and (ord(j)<=122)),   y[j] = 150 );
if (((ord(j)>=123) and (ord(j)<=142)),   y[j] = 155 );
if (((ord(j)>=143) and (ord(j)<=150)),   y[j] = 160 );
if (((ord(j)>=151) and (ord(j)<=167)),   y[j] = 165 );
if (((ord(j)>=168) and (ord(j)<=175)),   y[j] = 170 );
if (((ord(j)>=176) and (ord(j)<=181)),   y[j] = 175 );
if (((ord(j)>=182) and (ord(j)<=187)),   y[j] = 180 );
if (((ord(j)>=188) and (ord(j)<=194)),   y[j] = 185 );
if (((ord(j)>=195) and (ord(j)<=198)),   y[j] = 190 );
if (((ord(j)>=199) and (ord(j)<=201)),   y[j] = 195 );
if (((ord(j)>=202) and (ord(j)<=204)),   y[j] = 200 );
if (((ord(j)>=205) and (ord(j)<=212)),   y[j] = 205 );
if (((ord(j)>=213) and (ord(j)<=213)),   y[j] = 210 );
if (((ord(j)>=214) and (ord(j)<=219)),   y[j] = 215 );
if (((ord(j)>=220) and (ord(j)<=224)),   y[j] = 220 );
if (((ord(j)>=225) and (ord(j)<=225)),   y[j] = 230 );
if (((ord(j)>=226) and (ord(j)<=232)),   y[j] = 235 );
if (((ord(j)>=233) and (ord(j)<=233)),   y[j] = 240 );
if (((ord(j)>=234) and (ord(j)<=235)),   y[j] = 245 );
if (((ord(j)>=  1) and (ord(j)<=  1)),   y[j] = 250 ); );

*parameter   y =
*        1     95     61     135      121    155      181   180
*        2    105     62     135      122    155      182   185
*        3    110     63     135      123    160      183   185
*        4    110     64     135      124    160      184   185
*        5    110     65     135      125    160      185   185
*        6    110     66     135      126    160      186   185
*        7    115     67     135      127    160      187   185
*        8    115     68     135      128    160      188   190
*        9    115     69     140      129    160      189   190
*       10    115     70     140      130    160      190   190
*       11    120     71     140      131    160      191   190
*       12    120     72     140      132    160      192   190
*       13    120     73     140      133    160      193   190
*       14    120     74     140      134    160      194   190
*       15    120     75     140      135    160      195   195
*       16    120     76     140      136    160      196   195
*       17    120     77     140      137    160      197   195
*       18    120     78     140      138    160      198   195
*       19    120     79     140      139    160      199   200
*       20    120     80     140      140    160      200   200
*       21    120     81     140      141    160      201   200
*       22    120     82     140      142    160      202   205
*       23    120     83     140      143    165      203   205
*       24    120     84     140      144    165      204   205
*       25    120     85     140      145    165      205   210
*       26    125     86     140      146    165      206   210
*       27    125     87     140      147    165      207   210
*       28    125     88     140      148    165      208   210
*       29    125     89     140      149    165      209   210
*       30    125     90     145      150    165      210   210
*       31    125     91     145      151    170      211   210
*       32    125     92     145      152    170      212   210
*       33    125     93     145      153    170      213   215
*       34    125     94     145      154    170      214   220
*       35    125     95     145      155    170      215   220
*       36    125     96     145      156    170      216   220
*       37    125     97     145      157    170      217   220
*       38    125     98     145      158    170      218   220
*       39    125     99     145      159    170      219   220
*       40    125    100     145      160    170      220   230
*       41    130    101     145      161    170      221   230
*       42    130    102     150      162    170      222   230
*       43    130    103     150      163    170      223   230
*       44    130    104     150      164    170      224   230
*       45    130    105     150      165    170      225   235
*       46    130    106     150      166    170      226   240
*       47    130    107     150      167    170      227   240
*       48    130    108     150      168    175      228   240
*       49    130    109     150      169    175      229   240
*       50    130    110     150      170    175      230   240
*       51    130    111     150      171    175      231   240
*       52    130    112     150      172    175      232   240
*       53    130    113     150      173    175      233   245
*       54    130    114     150      174    175      234   250
*       55    130    115     150      175    175      235   250
*       56    135    116     150      176    180
*       57    135    117     150      177    180
*       58    135    118     150      178    180
*       59    135    119     155      179    180
*       60    135    120     155      180    180                 ;

Variable  x(i) , a(j) , b(j) , c(j) , obj ;
Equation Eq_1(j) , Eq_2(j) , Eq_3(j) , Def_obj ;

Eq_1(j)..  a(j) =e=   x['i1'] / x['i6'] * exp(-sqr(y[j] - x['i3']) /
                                                          (2*sqr(x['i6']))) ;
Eq_2(j)..  b(j) =e=   x['i2'] / x['i7'] * exp(-sqr(y[j] - x['i4']) /
                                                          (2*sqr(x['i7']))) ;
Eq_3(j)..  c(j) =e= (1 - x['i2'] - x['i1']) / x['i8'] *
                              exp(-sqr(y[j] - x['i5']) /(2 * sqr(x['i8']))) ;
Def_obj..  obj =e= -sum{j,log((a[j] + b[j] + c[j]) / sqrt(2 * PI)) };

 a.lo[j] = 0.0000001 ;

x.lo['i1'] =   0.001 ; x.up['i1'] =   0.499 ;
x.lo['i2'] =   0.001 ; x.up['i2'] =   0.449 ;
x.lo['i3'] = 100.000 ; x.up['i3'] = 180.000 ;
x.lo['i4'] = 130.000 ; x.up['i4'] = 210.000 ;
x.lo['i5'] = 170.000 ; x.up['i5'] = 240.000 ;
x.lo['i6'] =   5.000 ; x.up['i6'] =  25.000 ;
x.lo['i7'] =   5.000 ; x.up['i7'] =  25.000 ;
x.lo['i8'] =   5.000 ; x.up['i8'] =  25.000 ;

x.l['i1'] =     0.1 ;
x.l['i2'] =     0.2 ;
x.l['i3'] =   100.0 ;
x.l['i4'] =   125.0 ;
x.l['i5'] =   175.0 ;
x.l['i6'] =    11.2 ;
x.l['i7'] =    13.2 ;
x.l['i8'] =    15.8 ;

* "optimal solution as starting point \n";
* x.l['i1'] =     0.4128928 ;
* x.l['i2'] =     0.4033526 ;
* x.l['i3'] =   131.2613    ;
* x.l['i4'] =   164.3135    ;
* x.l['i5'] =   217.4222    ;
* x.l['i6'] =    12.28018   ;
* x.l['i7'] =    15.77170   ;
* x.l['i8'] =    20.74682   ;

*display obj;

Model maxlika /all/;

Solve maxlika using nlp minimize obj ;

display x.l;

display obj.l;
