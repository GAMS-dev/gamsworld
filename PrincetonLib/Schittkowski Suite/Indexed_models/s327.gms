* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 2
Set i /1*%N%/;
$Set M 44
Set j /1*%M%/;

parameter y[j]  / 1  0.49,  2  0.49,  3   0.48,  4   0.47,  5   0.48 ,
                  6  0.47,  7  0.46,  8   0.46,  9   0.45, 10   0.43 ,
                 11  0.45, 12  0.43, 13   0.43, 14   0.44, 15   0.43 ,
                 16  0.43, 17  0.46, 18   0.45, 19   0.42, 20   0.42 ,
                 21  0.43, 22  0.41, 23   0.41, 24   0.40, 25   0.42 ,
                 26  0.40, 27  0.40, 28   0.41, 29   0.40, 30   0.41 ,
                 31  0.41, 32  0.40, 33   0.40, 34   0.40, 35   0.38 ,
                 36  0.41, 37  0.40, 38   0.40, 39   0.41, 40   0.38 ,
                 41  0.40, 42  0.40, 43   0.39, 44   0.39  / ;

parameter z[j]  / 1  8   ,  2     8,  3  10   ,  4  10   ,  5  10    ,
                  6 10   ,  7    12,  8  12   ,  9  12   , 10  12    ,
                 11 14   , 12    14, 13  14   , 14  16   , 15  16    ,
                 16 16   , 17    18, 18  18   , 19  20   , 20  20    ,
                 21 20   , 22    22, 23  22   , 24  22   , 25  24    ,
                 26 24   , 27    24, 28  26   , 29  26   , 30  26    ,
                 31 28   , 32    28, 33  30   , 34  30   , 35  30    ,
                 36 32   , 37    32, 38  34   , 39  36   , 40  36    ,
                 41 38   , 42    38, 43  40   , 44  42     / ;


Variable     X[I], f      ;

Equation Eq_1,Def_obj;
Eq_1..     -0.09 - x['1']*x['2'] + 0.49*x['2'] =g= 0;
Def_obj..  f =e= sum{j,sqr(y[j]-x['1']-(0.49-x['1'])*exp(-x['2']*(z[j]-8)))};


x.lo[i]   =   0.40         ;
x.l['1']  =   0.42         ;
x.l['2']  =   5.00         ;
Model s327 /all/;

Solve s327 using nlp minimize f;

display x.l;
display f.l;