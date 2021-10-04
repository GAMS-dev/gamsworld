* hs106.mod     LQR2-MN-8-22
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Heat exchanger design

* Ref.: W. Hock and K. Schittkowski, Test Examples for Nonlinear Programming
* Codes.  Lecture Notes in Economics and Mathematical Systems, v. 187,
* Springer-Verlag, New York, 1981, p. 115.

* Number of variables: 8
* Number of constraints:  22
* Objective linear
* Nonlinear constraints

$Set N 8
set I /1*%N%/;

parameter  a ;     a = 0.0025   ;
parameter  b ;     b = 0.01     ;
parameter  c ;     c = 833.3325 ;
parameter  d ;     d = 100      ;
parameter  e ;     e = 83333.33 ;
parameter  f ;     f = 1250     ;
parameter  g ;     g = 1250000  ;
parameter  h ;     h = 2500     ;

Variable
     x{I},
   Summa ;
Equation c1     ,
         c2     ,
         c3     ,
         c4     ,
         c5     ,
         c6     ,
         def_obj;
 c1..            1 - a*(x['4']+x['6'])                         =g= 0;
 c2..            1 - a*(x['5']+x['7'] - x['4'])                =g= 0;
 c3..            1 - b*(x['8']-x['5'])                         =g= 0;
 c4..            x['1']*x['6']-c*x['4']-d*x['1']+e             =g= 0;
 c5..            x['2']*x['7']-f*x['5']-x['2']*x['4']+f*x['4'] =g= 0;
 c6..            x['3']*x['8']-g-x['3']*x['5']+h*x['5']        =g= 0;

 def_obj..       Summa =e= x['1'] + x['2'] + x['3'];


x.lo[i]$((ord(I) ne 2) and (ord(I) ne 3) ) = 10    ;
x.up[i]$((ord(I) ne 2) and (ord(I) ne 3) ) = 1000  ;
x.lo[i]$((ord(I) eq 2) or  (ord(I) eq 3) ) = 1000  ;
x.up[i]$((ord(I) eq 2) or  (ord(I) eq 3) ) = 10000 ;
x.lo['1'] = 100                                    ;
x.up['1'] = 10000                                  ;

x.l['1'] =  5000;
x.l['2'] =  5000;
x.l['3'] =  5000;
x.l['4'] =  200 ;
x.l['5'] =  350 ;
x.l['6'] =  150 ;
x.l['7'] =  225 ;
x.l['8'] =  425 ;

Model hs106 /all/;
solve hs106 using nlp minimize Summa;

file demo /output/;  put demo;
put " Summa = " ;  put summa.l:15:8 ;        put /;
put " index->*        x[*]     ";             Put /;
Loop(i,put "  " put i.tl:8  Put x.l[i]:11:5
Put /;);
put " model hs106.gms output "    ;        put /;
