* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 3
Set i /1*%N%/;

parameter   rho;   rho = 0.0747;
parameter   xmu;   xmu = 0.0443;
parameter    cp;    cp = 0.240;
parameter    pr;    pr =  0.709;
parameter    pi;    pi = 3.14159;
parameter     d;     d = 0.525;
parameter   tin;   tin = 75;
parameter tsurf; tsurf = 45;
parameter     h;     h = 13.13;
parameter     w;     w = 3.166;
parameter  rhoc;  rhoc = 559;
parameter  rhoa;  rhoa = 169;


Variable  x[i],af,at,ac,gi,re,ho,xmdot,delp,
          xval,etaf,etas,hef,q,h1,costm,costf,costt,f ;

Equation Eq_01,Eq_02,Eq_03,Eq_04,Eq_05,
         Eq_06,Eq_07,Eq_08,Eq_09,
         Eq_10,Eq_11,Eq_12,Eq_13,
         Eq_14,Eq_15,Eq_16,Eq_17,Def_obj;

Eq_01..  af    =e= x['2']/x['1']*2*(w*h-30*pi*sqr(d)/4)/144;
Eq_02..  at    =e= 30*pi*d*x['2']/144;
Eq_03..  ac    =e= (h*x['2'] - 10*d*x['2'] - x['2']/x['1']*0.006*h)/144;
Eq_04..  gi*(ac*144)    =e= (rho*x['3']*(h*x['2']))*60;
Eq_05..  re    =e= gi*1.083/(12*xmu);
Eq_06..  ho    =e= (0.195*gi*cp)/(exp(log(pr)*0.67)*exp(log(re)*0.35));
Eq_07..  xmdot =e= rho*x['3']*h*x['2']/144*60;
Eq_08..  delp  =e= 0.000001833/rho*sqr(gi)*3*(af/ac*sqrt(1/re)+0.1*at/ac);
Eq_09..  xval  =e= 0.0732*sqrt(ho);
*Eq_10..  etaf  =e= tanh(xval)/xval;
Eq_10..  etaf  =e= 0.990;
Eq_11..  etas  =e= 1 - af*(1-etaf)/(af+at);
Eq_12..  log(1-hef)   =e=  (-etas*ho*(af+at)/(xmdot*cp));
Eq_13..  q     =e= hef*(tin-tsurf)*xmdot*cp;
Eq_14..  h1    =e= delp*xmdot/(rho*1980000);
Eq_15..  costm =e= sqrt(h1)/0.0718+4;
Eq_16..  costf =e= 0.47*h*w*0.006*rhoa*x['2']/(x['1']*1728);
Eq_17..  costt =e= 1.01*30*x['2']*pi*(d*d-sqr(d-0.036))*rhoc/(4*1728);

Def_obj..  f=e=costm+costf+costt;
re.lo=0.0001;
q.fx=6000;

at.lo=0.00001;
af.lo=0.00001;
ac.lo=0.00001;
re.lo=0.00001;
ho.lo=0.0000001        ;
xmdot.lo=0.0000001;
h1.lo=0.0000001        ;
hef.up=0.9999;
x.lo['2'] = 13.13      ;

x.up['1'] =  0.044     ;
x.up['2'] = 24         ;
x.up['3'] =600         ;

x.l['1']  =     0.1    ;
x.l['2']  =    18      ;
x.l['3']  =   144      ;

Model s348 /all/;

Solve s348 using nlp minimize f;

display x.l;
display f.l;
