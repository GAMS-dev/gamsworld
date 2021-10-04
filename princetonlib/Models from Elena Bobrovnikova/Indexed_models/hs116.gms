* hs116.mod     LQR2-MN-13-41
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* 3-stage membrane separation

* Ref.: W. Hock and K. Schittkowski, Test Examples for Nonlinear Programming
* Codes.  Lecture Notes in Economics and Mathematical Systems, v. 187,
* Springer-Verlag, New York, 1981, p. 124.

* Number of variables: 13
* Number of constraints: 41
* Objective linear
* Nonlinear constraints


$Set N 13
Set I /1*%N%/;
parameter a  ;        a = 0.002   ;
parameter  b ;        b = 1.262626;
parameter  c ;        c = 1.231059;
parameter  d ;        d = 0.03475 ;
parameter  e ;        e = 0.975   ;
parameter  f ;        f = 0.00975 ;

Positive Variable  x[I];
Variable            Obj;

Equation  c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,
          defobj;


 c1..  x['3']  - x['2']                                    =g=   0 ;
 c2..  x['2']  - x['1']                                    =g=   0 ;
 c3..  1 - a*x['7'] + a*x['8']                             =g=   0 ;
 c4..  x['11'] + x['12'] + x['13']                         =g=  50 ;
 c5..  x['13'] - b*x['10'] + c*x['3']*x['10']              =g=   0 ;
 c6..  x['5']  - d*x['2']  - e*x['2']*x['5']+f*sqr(x['2']) =g=   0 ;
 c7..  x['6']  - d*x['3']  - e*x['3']*x['6']+f*sqr(x['3']) =g=   0 ;
 c8..  x['4']  - d*x['1']  - e*x['1']*x['4']+f*sqr(x['1']) =g=   0 ;
 c9..  x['12'] - b*x['9']  + c*x['2']*x['9']               =g=   0 ;
 c10.. x['11'] - b*x['8']  + c*x['1']*x['8']               =g=   0 ;
 c11.. x['5']*x['7'] - x['1']*x['8'] -
                             x['4']*x['7'] + x['4']*x['8'] =g=   0 ;
 c12.. 1-a*(x['2']*x['9']+x['5']*x['8']-
             x['1']*x['8']-x['6']*x['9']) -x['5'] - x['6'] =g=   0 ;
 c13.. x['2']*x['9']-x['3']*x['10']-x['6']*x['9']-
                      500*x['2']+500*x['6']+x['2']*x['10'] =g=   0 ;
 c14.. x['2']-0.9-a*(x['2']*x['10']-x['3']*x['10'])        =g=   0 ;
 c15.. x['11']+x['12']+x['13']                             =l= 250 ;

defobj..  Obj=e= x['11'] + x['12'] + x['13'];

*  BOUNDARY CONDITIONs
x.lo['1']  =  0.1      ;  x.up['1'] = 1   ;
x.lo['2']  =  0.1      ;  x.up['2'] = 1   ;
x.lo['3']  =  0.1      ;  x.up['3'] = 1   ;
x.lo['4']  =  0.0001   ;  x.up['4'] = 0.1 ;
x.lo['5']  =  0.1      ;  x.up['5'] = 0.9 ;
x.lo['6']  =  0.1      ;  x.up['6'] = 0.9 ;
x.lo['7']  =  0.1      ;  x.up['7'] = 1000;
x.lo['8']  =  0.1      ;  x.up['8'] = 1000;
x.lo['9']  =  500      ;  x.up['9'] = 1000;
x.lo['10'] =   0.1     ;  x.up['10']= 500 ;
x.lo['11'] =   1       ;  x.up['11']= 150 ;
x.lo['12'] =   0.0001  ;  x.up['12']= 150 ;
x.lo['13'] =   0.0001  ;  x.up['13']= 150 ;


*  INITIAL VOLUE
x.l['1']  =   0.5 ;
x.l['2']  =   0.8 ;
x.l['3']  =   0.9 ;
x.l['4']  =   0.1 ;
x.l['5']  =   0.14;
x.l['6']  =   0.5 ;
x.l['7']  = 489   ;
x.l['8']  =  80   ;
x.l['9']  = 650   ;
x.l['10'] = 450   ;
x.l['11'] = 150   ;
x.l['12'] = 150   ;
x.l['13'] = 150   ;

*x.fx['1'] =                0.803773   ;
*x.fx['2'] =                0.899986   ;
*x.fx['3'] =                0.970983   ;
*x.fx['4'] =                0.1        ;
*x.fx['5'] =                0.190813   ;
*x.fx['6'] =                0.460659   ;
*x.fx['7'] =              574.078      ;
*x.fx['8'] =               74.0776     ;
*x.fx['9'] =              500.016      ;
*x.fx['10']=                0.1        ;
*x.fx['11']=               20.2331     ;
*x.fx['12']=               77.3477     ;
*x.fx['13']=                0.00672888 ;



Model hs116 /all/;
solve hs116 using nlp minimize Obj;

display Obj.l;
display x.l;
