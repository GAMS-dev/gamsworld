* hs105.mod    OBR2-RN-8-16
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

$Set N 235
$Set M  8

Set i/i1*i%N%/;
Set j/j1*j%M%/;

Parameter  PI  ; PI = 4*arctan(1);
Parameter y(i) ;
y[i]$((ord(i) ge   1) and (ord(i) le   1)) =  95 ;
y[i]$((ord(i) ge   2) and (ord(i) le   2)) = 105 ;
y[i]$((ord(i) ge   3) and (ord(i) le   6)) = 110 ;
y[i]$((ord(i) ge   7) and (ord(i) le  10)) = 115 ;
y[i]$((ord(i) ge  11) and (ord(i) le  25)) = 120 ;
y[i]$((ord(i) ge  26) and (ord(i) le  40)) = 125 ;
y[i]$((ord(i) ge  41) and (ord(i) le  55)) = 130 ;
y[i]$((ord(i) ge  56) and (ord(i) le  68)) = 135 ;
y[i]$((ord(i) ge  69) and (ord(i) le  89)) = 140 ;
y[i]$((ord(i) ge  90) and (ord(i) le 101)) = 145 ;
y[i]$((ord(i) ge 102) and (ord(i) le 118)) = 150 ;
y[i]$((ord(i) ge 119) and (ord(i) le 122)) = 155 ;
y[i]$((ord(i) ge 123) and (ord(i) le 142)) = 160 ;
y[i]$((ord(i) ge 143) and (ord(i) le 150)) = 165 ;
y[i]$((ord(i) ge 151) and (ord(i) le 167)) = 170 ;
y[i]$((ord(i) ge 168) and (ord(i) le 175)) = 175 ;
y[i]$((ord(i) ge 176) and (ord(i) le 181)) = 180 ;
y[i]$((ord(i) ge 182) and (ord(i) le 187)) = 185 ;
y[i]$((ord(i) ge 188) and (ord(i) le 194)) = 190 ;
y[i]$((ord(i) ge 195) and (ord(i) le 198)) = 195 ;
y[i]$((ord(i) ge 199) and (ord(i) le 201)) = 200 ;
y[i]$((ord(i) ge 202) and (ord(i) le 204)) = 205 ;
y[i]$((ord(i) ge 205) and (ord(i) le 212)) = 210 ;
y[i]$((ord(i) ge 213) and (ord(i) le 213)) = 215 ;
y[i]$((ord(i) ge 214) and (ord(i) le 219)) = 220 ;
y[i]$((ord(i) ge 220) and (ord(i) le 224)) = 230 ;
y[i]$((ord(i) ge 225) and (ord(i) le 225)) = 235 ;
y[i]$((ord(i) ge 226) and (ord(i) le 232)) = 240 ;
y[i]$((ord(i) ge 233) and (ord(i) le 233)) = 245 ;
y[i]$((ord(i) ge 234) and (ord(i) le 235)) = 250 ;

Variable x(j) , a(i) , b(i) , c(i) , obj ;
Equation Eq_1(i) , Eq_2(i) , Eq_3(i) , c1 , Def_obj ;

Eq_1(i)..  a(i) =e=             x['j1']/x['j6']*exp(-sqr(y[i]-x['j3'])/(2*sqr(x['j6'])));
Eq_2(i)..  b(i) =e=             x['j2']/x['j7']*exp(-sqr(y[i]-x['j4'])/(2*sqr(x['j7'])));

Eq_3(i)..  c(i) =e= (1-x['j2']-x['j1'])/x['j8']*exp(-sqr(y[i]-x['j5'])/(2*sqr(x['j8'])));

Def_obj.. obj=e= -sum{i,log((a[i] + b[i] + c[i]) / sqrt(2 * PI))} ;

C1.. 1 - x['j1'] - x['j2'] =g= 0;

c.lo(i)=0.00000001;

x.lo['j1']=   0.001  ; x.up['j1']=   0.499 ;
x.lo['j2']=   0.001  ; x.up['j2']=   0.449 ;
x.lo['j3']= 100.000  ; x.up['j3']= 180.000 ;
x.lo['j4']= 130.000  ; x.up['j4']= 210.000 ;
x.lo['j5']= 170.000  ; x.up['j5']= 240.000 ;
x.lo['j6']=   5.000  ; x.up['j6']=  25.000 ;
x.lo['j7']=   5.000  ; x.up['j7']=  25.000 ;
x.lo['j8']=   5.000  ; x.up['j8']=  25.000 ;

x.l['j1'] =     0.1 ;
x.l['j2'] =     0.2 ;
x.l['j3'] =   100   ;
x.l['j4'] =   125   ;
x.l['j5'] =   175   ;
x.l['j6'] =   11.2  ;
x.l['j7'] =   13.2  ;
x.l['j8'] =   15.8  ;

* "optimal solution as starting point ";
*x.fx['j1'] =     0.4128928 ;
*x.fx['j2'] =     0.4033526 ;
*x.l['j3'] =   131.2613    ;
*x.fx['j4'] =   164.3135    ;
*x.fx['j5'] =   217.4222    ;
*x.fx['j6'] =    12.28018   ;
*x.fx['j7'] =    15.77170   ;
*x.fx['j8'] =    20.74682   ;

Model hs105 /all/ ;
Solve hs105 using nlp minimazing obj ;

obj.l = obj.l - 1136.36;

display a.l,b.l,c.l;
display x.l;
display obj.l;

*display obj - 1138.416240 ;
* this is answer given by HS, but is seems wrong

* obj =  1136.36;
* this seems to be correct (MINOS=LOQO)
