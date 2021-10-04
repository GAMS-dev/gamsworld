* Cute AMPL model  (translation to GAMS)
*
$Set N 8
$Set M 7
Set i /i1*i%N%/;
Set right(i) /i2*i%N%/;
Set left(i)  /i1*i%M%/;

parameter a(i) / i1   0 ,i2  50 ,i3  50 ,i4  75 ,
                 i5  75 ,i6  75 ,i7 100 ,i8 100 /;
parameter t(i) / i1   0 ,i2  25 ,i3  50 ,i4 100 ,
                 i5 150 ,i6 200 ,i7 290 ,i8 380 /;
parameter b; b = 32 ;


Positive Variable x[i];
         Variable r(i) , q(i) , s(i) , obj ;

Equation constr1 ,
         constr2 ,
         constr3 ,
         constr4 ,
         constr5 ,
         constr6 ,
         Def_obj  ;


constr1.. q['i8'] =e= 1.0e+5 ;
constr2.. s['i8'] =e= 1.0e+3 ;
constr3.. q['i1'] =e= 0      ;
constr4.. s['i1'] =e= 0      ;

constr5(i)$right(i).. q[i] =e= 0.5*sqr(t[i]-t[i-1])*(a[i]*sin(x[i-1]) - b) +
                                      (t[i]-t[i-1])* s[i-1]+ q[i-1] ;
constr6(i)$right(i).. s[i] =e= (t[i]-t[i-1])*(a[i]*sin(x[i-1]) - b) + s[i-1];


Def_obj.. obj=e=-sqr(sum(i$left(i), a[i+1]*(t[i+1]-t[i])*cos(x[i])))
*  -sqr(r['i8'])
                                                                       ;


*constr7.. r['i1'] =e= 0;
*constr8(i)$(ord(i) ne 1)..
*    r[i] =e= a[i]*(t[i]-t[i-1])*cos(x[i-1]) + r[i-1];


x.up[i]   = 1.58 ;

x.l['i1'] = 0.5  ;
x.l['i2'] = 0.5  ;
x.l['i3'] = 0.5  ;
x.l['i4'] = 0.5  ;
x.l['i5'] = 0.5  ;
x.l['i6'] = 0.5  ;
x.l['i7'] = 0.5  ;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 0.5424603 ;
*x.l['i2'] = 0.5290159 ;
*x.l['i3'] = 0.5084506 ;
*x.l['i4'] = 0.4802693 ;
*x.l['i5'] = 0.4512352 ;
*x.l['i6'] = 0.4091878 ;
*x.l['i7'] = 0.3527847 ;


Model hs099  /all/;

Solve hs099 using nlp minimize obj;

display   x.l               ;

obj.l =  obj.l  + 0.831079892e+9;
display obj.l               ;
