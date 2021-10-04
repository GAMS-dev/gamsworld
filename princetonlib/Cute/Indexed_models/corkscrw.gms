* Cute AMPL model  (translation to GAMS)
*
* AMPL Model by Hande Y. Benson
*
* Copyright (C) 2001 Princeton University
* All Rights Reserved
*
* Permission to use, copy, modify, and distribute this software and
* its documentation for any purpose and without fee is hereby
* granted, provided that the above copyright notice appear in all
* copies and that the copyright notice and this
* permission notice appear in all supporting documentation.

*   Source:
*   Ph. Toint, private communication.

*   SIF input: Ph. Toint, April 1991.

*   classification SOR2-AN-V-V

$Set N 1000
Set t /t0*t%N%/;


parameter   xt;    xt = 10.0        ;
parameter mass;  mass =  0.37       ;
parameter  tol;   tol =  0.1        ;

parameter    h;     h = xt/%N%      ;
parameter    w;     w = xt*(%N%+1)/2;

parameter fmax;  fmax = xt/%N%      ;

Positive Variable x[t];
Variable x[t], y[t], z[t], vx[t], vy[t], vz[t], ux[t], uy[t], uz[t], f ;

Equation acx[t],acy[t],acz[t],psx[t],psy[t],psz[t],sc[t],Def_obj;

acx[t]$(ord(t) ne 1).. mass*(vx[t]-vx[t-1])/h - ux[t] =e= 0;
acy[t]$(ord(t) ne 1).. mass*(vy[t]-vy[t-1])/h - uy[t] =e= 0;
acz[t]$(ord(t) ne 1).. mass*(vz[t]-vz[t-1])/h - uz[t] =e= 0;
psx[t]$(ord(t) ne 1)..      ( x[t]- x[t-1])/h - vx[t] =e= 0;
psy[t]$(ord(t) ne 1)..      ( y[t]- y[t-1])/h - vy[t] =e= 0;
psz[t]$(ord(t) ne 1)..      ( z[t]- z[t-1])/h - vz[t] =e= 0;
 sc[t]$(ord(t) ne 1).. sqr(y[t]-sin(x[t]))+sqr(z[t]-cos(x[t]))-sqr(tol) =l= 0;

Def_obj..   f=e= sum{t$(ord(t) ne 1),(((ord(t)-1)*h/w)*sqr(x[t]-xt))};

 x.up[t]      =    xt          ;

**********************************
*
* look at sc[t]$(ord(t) ne 1)..
*
*
 y.lo[t]      =   -1.1         ;
 y.up[t]      =    1.1         ;
 z.lo[t]      =   -1.1         ;
 z.up[t]      =    1.1         ;
***********************************


ux.up[t]      =   fmax         ;
uy.up[t]      =   fmax         ;
uz.up[t]      =   fmax         ;
ux.lo[t]      =  -fmax         ;
uy.lo[t]      =  -fmax         ;
uz.lo[t]      =  -fmax         ;

 x.l[t]       =   (ord(t)-1)*h ;
vx.l[t]       =   1.0          ;
x.fx['t0']    =   0.0          ;
y.fx['t0']    =   0.0          ;
z.fx['t0']    =   1.0          ;
vx.fx['t0']   =   0.0          ;
vy.fx['t0']   =   0.0          ;
vz.fx['t0']   =   0.0          ;
vx.fx['t%N%'] =   0.0          ;
vy.fx['t%N%'] =   0.0          ;
vz.fx['t%N%'] =   0.0          ;

Model corkscrw /all/;

Solve corkscrw using nlp minimize f;
Solve corkscrw using nlp minimize f;
Solve corkscrw using nlp minimize f;
Solve corkscrw using nlp minimize f;
Solve corkscrw using nlp minimize f;

display  x.l, y.l, z.l;
display vx.l,vy.l,vz.l;
display f.l;
