* hs109.mod     OOR2-MY-9-26
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Ref.: W. Hock and K. Schittkowski, Test Examples for Nonlinear Programming
* Codes.  Lecture Notes in Economics and Mathematical Systems, v. 187,
* Springer-Verlag, New York, 1981, p. 118.

* Number of variables:  9
* Number of constraints:  26
* Objective separable
* Objective nonconvex
* Nonlinear constraints
Set i /1*9/;
parameter  a;     a =  50.176;
parameter b1;    b1 =   0.25 ;
parameter  b;     b = sin(b1);
parameter  c;     c = cos(b1);

variable x[i],
         obj ;
equation C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,
                                 defobj;

defobj..  Obj =e= 3*x['1']+1E-6*power(x['1'],3)+
                  2*x['2']+0.522074E-6*power(x['2'],3);

C1..  x['4']-x['3']+0.55 =g= 0;
C2..  x['3']-x['4']+0.55 =g= 0;
C3..  2250000-sqr(x['1'])-sqr(x['8']) =g= 0;
C4..  2250000-sqr(x['2'])-sqr(x['9']) =g= 0;
C5..  x['5']*x['6']*sin(-x['3']-0.25)+x['5']*x['7']*sin(-x['4']-0.25)+
      2*b*sqr(x['5'])-a*x['1']+400*a  =e= 0;
C6..  x['5']*x['6']*sin(x['3']-0.25)+x['6']*x['7']*sin(x['3']-x['4']-0.25) +
      2*b*sqr(x['6'])-a*x['2']+400*a  =e= 0;
C7..  x['5']*x['7']*sin(x['4']-0.25)+x['6']*x['7']*sin(x['4']-x['3']-0.25)+
      2*b*sqr(x['7'])+881.779*a      =e= 0;
C8..  a*x['8']+x['5']*x['6']*cos(-x['3']-0.25)+x['5']*x['7']*
      cos(-x['4']-0.25)-200*a-2*c*sqr(x['5'])+
      0.7533E-3*a*sqr(x['5'])        =e= 0;
C9..  a*x['9']+x['5']*x['6']*cos(x['3']-0.25)+
      x['6']*x['7']*cos(x['3']-x['4']-0.25)-2*c*sqr(x['6'])+0.7533E-3*
      a*sqr(x['6'])-200*a            =e= 0;
C10.. x['5']*x['7']*cos(x['4']-0.25)+x['6']*x['7']*cos(x['4']-x['3']-0.25)-
      2*c*sqr(x['7'])+22.938*a+
      0.7533E-3*a*sqr(x['7'])        =e= 0;

* BOUNDARY CONDITIONS
     x.lo['1'] = 0;
     x.lo['2'] = 0;
     x.lo['3'] =-0.55;
     x.up['3'] = 0.55;
     x.lo['4'] =-0.55;
     x.up['4'] = 0.55;

     x.lo['5'] = 196;
     x.up['5'] = 252;
     x.lo['6'] = 196;
     x.up['6'] = 252;
     x.lo['7'] = 196;
     x.up['7'] = 252;

     x.lo['8'] =-400;
     x.up['8'] = 800;
     x.lo['9'] =-400;
     x.up['9'] = 800;


model hs109 /all/;
solve hs109 using nlp minimize obj;

display Obj.l;
display x.l;
