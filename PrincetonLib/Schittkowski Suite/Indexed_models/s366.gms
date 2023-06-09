* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 7
Set i /1*%N%/;
$Set M 38
Set j /1*%M%/;

parameter c[j] /
 1 0.005953571  , 2 0.88392857    , 3 -0.1175625   , 4 1.1088         ,
 5 0.1303533    , 6 -0.0066033    , 7 0.00066173269, 8 0.017239878    ,
 9 -0.0056595559, 10 -0.019120592 , 11 56.85075    , 12 1.08702       ,
13 0.32175      , 14 -0.03762     , 15 0.006198    , 16 2462.3121     ,
17 -25.125634   , 18 161.18996    , 19 5000        , 20 -489510       ,
21 44.333333    , 22 0.33         , 23 0.022556    , 24 -0.007595     ,
25 0.00061      , 26 -0.0005      , 27 0.819672    , 28 0.819672      ,
29 24500        , 30 -250         , 31 0.010204082 , 32 0.000012244898,
33 0.0000625    , 34 0.0000625    , 35 -0.00007625 , 36 1.22          ,
37 1 , 38 -1 /;

Variable     X[I],f;

Equation  Eq_01,Eq_02,Eq_03,Eq_04,Eq_05  ,
          Eq_06,Eq_07,Eq_08,Eq_09,Eq_10  ,
          Eq_11,Eq_12,Eq_13,Eq_14,Def_obj;

Eq_01.. 1-c['1']*sqr(x['6'])-c['2']*x['3']/x['1']-c['3']*x['6']         =g= 0;
Eq_02.. 1-c['4']*x['1']/x['3']-c['5']*x['1']*x['6']/x['3']-
                                     c['6']*x['1']*sqr(x['6'])/x['3']   =g= 0;
Eq_03.. 1-c['7']*sqr(x['6'])-c['8']*x['5']-c['9']*x['4']-c['10']*x['6'] =g= 0;
Eq_04.. 1-c['11']/x['5']-c['12']*x['6']/x['5']-
                    c['13']*x['4']/x['5'] - c['14']*sqr(x['6'])/x['5']  =g= 0;
Eq_05.. 1-c['15']*x['7']-c['16']*x['2']/(x['3']*x['4'])-
                                                c['17']*x['2']/x['3']   =g= 0;
Eq_06.. 1-c['18']/x['7']-c['19']*x['2']/(x['3']*x['7'])-
                                 c['20']*x['2']/(x['3']*x['4']*x['7'])  =g= 0;
Eq_07.. 1-c['21']/x['5']-c['22']*x['7']/x['5']                          =g= 0;
Eq_08.. 1-c['23']*x['5']-c['24']*x['7']                                 =g= 0;
Eq_09.. 1-c['25']*x['3']-c['26']*x['1']                                 =g= 0;
Eq_10.. 1-c['27']*x['1']/x['3']-c['28']/x['3']                          =g= 0;
Eq_11.. 1-c['29']*x['2']/(x['3']*x['4'])-c['30']*x['2']/x['3']          =g= 0;
Eq_12.. 1-c['31']*x['4']-c['32']*x['3']*x['4']/x['2']                   =g= 0;
Eq_13.. 1-c['33']*x['1']*x['6']-c['34']*x['1']-c['35']*x['3']           =g= 0;
Eq_14.. 1-c['36']*x['3']/x['1']-c['37']/x['1']-c['38']*x['6']           =g= 0;

Def_obj.. f=e=1.715*x['1']+0.035*x['1']*x['6']+4.0565*x['3']+10*x['2']-
                                                     0.063*x['3']*x['5']+3000;

x.up['1'] =     2000   ;
x.up['2'] =      120   ;
x.up['3'] =     5000   ;
x.up['4'] =       93   ;
x.up['5'] =       95   ;
x.up['6'] =       12   ;
x.up['7'] =      162   ;

x.lo['1'] =       1    ;
x.lo['2'] =       1    ;
x.lo['3'] =       1    ;
x.lo['4'] =      85    ;
x.lo['5'] =      90    ;
x.lo['6'] =       3    ;
x.lo['7'] =     145    ;

x.l['1']  =   1745     ;
x.l['2']  =    110     ;
x.l['3']  =   3048     ;
x.l['4']  =     89     ;
x.l['5']  =     92.8   ;
x.l['6']  =      8     ;
x.l['7']  =    145     ;

Model s366 /all/;

Solve s366 using nlp minimize f;

display x.l;
display f.l;
