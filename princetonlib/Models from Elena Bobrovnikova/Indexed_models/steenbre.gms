* steenbre.mod  ONR2-MY-540-666
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* A nonconvex multi-commodity network problem

* Ref.: P. A. Steenbrink,Optimization of Transport Network,
* Wiley, 1974, p.120.

* The CUTE description of the same problem can be found in STEENBRE.SIF .
* The problem has been slightly perturbed by making cmin = 0.01 instead of 0,
* and by the addition of sqrt_offset to the sqrt terms.

* Number of variables: 540
* Number of constraints: 126
* Objective partially separable nonconvex
* Linear constraints

set CITIES   /i1*i9/;
set DEST     /j1*j6/;

Alias(DEST,DEST_1);
Alias(CITIES,CITIES_1);

Set TRIPS[DEST,DEST_1];

       TRIPS['j1','j6'] = Yes ;
       TRIPS['j2','j3'] = Yes ;
       TRIPS['j2','j4'] = Yes ;
       TRIPS['j2','j5'] = Yes ;
       TRIPS['j3','j2'] = Yes ;
       TRIPS['j3','j4'] = Yes ;
       TRIPS['j3','j5'] = Yes ;
       TRIPS['j4','j2'] = Yes ;
       TRIPS['j4','j3'] = Yes ;
       TRIPS['j4','j5'] = Yes ;
       TRIPS['j5','j2'] = Yes ;
       TRIPS['j5','j3'] = Yes ;
       TRIPS['j5','j4'] = Yes ;
       TRIPS['j6','j1'] = Yes ;

Set  ROADS[CITIES,CITIES_1];
     ROADS['i1','i2'] = yes ;  ROADS['i1','i3'] = yes ;  ROADS['i1','i7'] = yes ;
     ROADS['i2','i1'] = yes ;  ROADS['i2','i4'] = yes ;  ROADS['i2','i7'] = yes ; ROADS['i2','i8'] = yes ;
     ROADS['i3','i1'] = yes ;  ROADS['i3','i5'] = yes ;  ROADS['i3','i7'] = yes ; ROADS['i3','i8'] = yes ;
     ROADS['i4','i2'] = yes ;  ROADS['i4','i6'] = yes ;  ROADS['i4','i8'] = yes ; ROADS['i4','i9'] = yes ;
     ROADS['i5','i3'] = yes ;  ROADS['i5','i6'] = yes ;  ROADS['i5','i8'] = yes ; ROADS['i5','i9'] = yes ;
     ROADS['i6','i4'] = yes ;  ROADS['i6','i5'] = yes ;  ROADS['i6','i9'] = yes ;
     ROADS['i7','i1'] = yes ;  ROADS['i7','i2'] = yes ;  ROADS['i7','i3'] = yes ; ROADS['i7','i8'] = yes ;
     ROADS['i8','i2'] = yes ;  ROADS['i8','i3'] = yes ;  ROADS['i8','i4'] = yes ; ROADS['i8','i5'] = yes ;  ROADS['i8','i7'] = yes ; ROADS['i8','i9'] = yes ;
     ROADS['i9','i4'] = yes ;  ROADS['i9','i5'] = yes ;  ROADS['i9','i6'] = yes ; ROADS['i9','i8'] = yes ;

*              1   2   3   4   5   6   7   8   9
*       1      -   +   +   -   -   -   +   -   -
*       2      +   -   -   +   -   -   +   +   -
*       3      +   -   -   -   +   -   +   +   -
*       4      -   +   -   -   -   +   -   +   +
*       5      -   -   +   -   -   +   -   +   +
*       6      -   -   -   +   +   -   -   -   +
*       7      +   +   +   -   -   -   -   +   -
*       8      -   +   +   +   +   -   +   -   +
*       9      -   -   -   +   +   +   -   +   -    ;

parameter  cmin[CITIES,CITIES_1] ;
parameter  TZERO ;  TZERO = 0.01;
parameter  CCR   ;    CCR = 0.01;
parameter  tr_matr[DEST,DEST_1];
parameter  sqrt_offset ; sqrt_offset = 0.01;
parameter  alpha[CITIES,CITIES_1]; alpha[CITIES,CITIES_1] =0.01;

        cmin[CITIES,CITIES_1] =  0.01 ;
        cmin['i2','i4'] =  2000 ;
        cmin['i4','i2'] =  2000 ;


  tr_matr['j1','j6']  = 10000   ;
  tr_matr['j2','j3']  =  2000   ;
  tr_matr['j2','j4']  =  2000   ;
  tr_matr['j2','j5']  =  1000   ;
  tr_matr['j3','j2']  =   200   ;
  tr_matr['j3','j4']  =  1000   ;
  tr_matr['j3','j5']  =  2000   ;
  tr_matr['j4','j2']  =   200   ;
  tr_matr['j4','j3']  =   100   ;
  tr_matr['j4','j5']  =  1000   ;
  tr_matr['j5','j2']  =   100   ;
  tr_matr['j5','j3']  =   200   ;
  tr_matr['j5','j4']  =   100   ;
  tr_matr['j6','j1']  =  1000   ;

Table cost(CITIES,CITIES_1)
         i1     i2    i3    i4    i5     i6    i7     i8    i9
   i1    0.0    35    40    0.0   0.0    0.0   30     0.0   0.0
   i2    35     0.0   0.0   100   0.0    0.0   15     55    0.0
   i3    40     0.0   0.0   0.0   100    0.0   25     60    0.0
   i4    0.0    100   0.0   0.0   0.0    35    0.0    55    15
   i5    0.0    0.0   100   0.0   0.0    40    0.0    60    25
   i6    0.0    0.0   0.0   35    40     0.0   0.0    0.0   30
   i7    30     15    25    0.0   0.0    0.0   0.0    50    0.0
   i8    0.0    55    60    55    60     0.0   50     0.0   50
   i9    0.0    0.0   0.0   15    25     30    0.0    50    0.0  ;

Positive Variable  flow[DEST,DEST_1,CITIES,CITIES_1]  ;
         Variable  capacity[CITIES,CITIES_1]          ,
                   total_flow[CITIES,CITIES_1]        ,
                   Total_Cost                         ;

Equation  first(CITIES,CITIES_1)   ,
         second(CITIES,CITIES_1)   ,
                       Defobj      ;

first(CITIES,CITIES_1)$ROADS(CITIES,CITIES_1)..
total_flow[CITIES,CITIES_1] =e= sum{(DEST,DEST_1)$TRIPS(DEST,DEST_1), flow[DEST,DEST_1,CITIES,CITIES_1] };

second(CITIES,CITIES_1)$ROADS(CITIES,CITIES_1)..
capacity(CITIES,CITIES_1) =g= cmin(CITIES,CITIES_1);

Defobj..

Total_Cost=e=  sum{(CITIES,CITIES_1)$ROADS(CITIES,CITIES_1),
                  (cost[CITIES,CITIES_1]*alpha[CITIES,CITIES_1] *
                  sqrt(capacity[CITIES,CITIES_1] - cmin[CITIES,CITIES_1] + sqrt_offset) +
                  total_flow[CITIES,CITIES_1]*cost[CITIES,CITIES_1] *
                  (TZERO + CCR * SQR(total_flow[CITIES,CITIES_1] / capacity[CITIES,CITIES_1]))
                  )};

capacity.lo[CITIES,CITIES_1]=cmin[CITIES,CITIES_1];
capacity.l[CITIES,CITIES_1] = 0.1   ;
capacity.l['i2','i4'] = 2000.1;
capacity.l['i4','i2'] = 2000.1;
flow.l[DEST,DEST_1,CITIES,CITIES_1] = 0.1 ;

Model steenbre /all/;
Solve steenbre using nlp minimaze Total_Cost ;

display Total_Cost.l;
