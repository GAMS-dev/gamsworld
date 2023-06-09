* Shitkovski AMPL model  (translation to GAMS)
$Set N 15
Set I /1*%N%/;
$Set M 10
Set J /1*%M%/;


parameter b[j] / 1 385,  2 470,  3  560,  4  565,  5 645,
                 6 430,  7 485,  8  455,  9  390, 10 460 /;

table a[j,i]
      1      2     3   4    5    6   7   8   9   10   11   12   13   14  15
 1  100    100    10   5   10    0   0  25   0   10   55    5   45   20   0
 2   90    100    10  35   20    5   0  35  55   25   20    0   40   25  10
 3   70     50     0  55   25  100  40  50   0   30   60   10   30    0  40
 4   50      0     0  65   35  100  35  60   0   15    0   75   35   30  65
 5   50     10    70  60   45   45   0  35  65    5   75  100   75   10   0
 6   40      0    50  95   50   35  10  60   0   45   15   20    0    5   5
 7   30     60    30  90    0   30   5  25   0   70   20   25   70   15  15
 8   20     30    40  25   40   25  15  10  80   20   30   30    5   65  20
 9   10     70    10  35   25   65   0  30   0    0   25    0   15   50  55
10    5     10   100   5   20    5  10  35  95   70   20   10   35   10  30 ;

Variable     X[i], f    ;

Equation Eq_1[j],Def_obj;

Eq_1[j].. b[j]-sum{i,(a[j,i]*sqr(x[i]))} =g= 0;

Def_obj..       f  =e= -486*x['1'] -640*x['2'] -758*x['3'] -776*x['4']
                       -477*x['5'] -707*x['6'] -175*x['7'] -619*x['8']
                       -627*x['9'] -614*x['10']-475*x['11']-377*x['12']
                       -524*x['13']-468*x['14']-529*x['15'];
x.l[I]  =   0 ;

Model s285 /all/;

Solve s285 using nlp minimize f;

display x.l;
display f.l;
