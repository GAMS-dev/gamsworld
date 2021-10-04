* Objective: convex quadratic
* Constraints: linear
************************************************************************
* Here we just compute the compliance for some specific settings for sigma.
*
* Continuum elements.
************************************************************************

$Set N  21
$Set M  21
$Set N1 20
$Set M1 20

Set i  / i0*i1 / ;
Alias(i,j);
Alias(i,k);
Alias(i,l);
Set b  / b1*b2 / ;

Set X  / x0*x%N% / ;
Set Y  / y0*y%M% / ;
Set X0(X) / x0*x%N1% / ;
Set Y0(Y) / y0*y%M1% / ;
Set X01(X) / x1*x%N1% / ;
Set Y01(Y) / y1*y%M1% / ;
Set d / d1,d2 / ;

Set ELEMENTS(x,y) ;  ELEMENTS(x,y)$((X0(X)) and (Y0(Y))) := Yes;


Parameter   lambda ;  lambda = 1.0 ;
Parameter       mu ;      mu = 1.0 ;
Parameter porosity ; porosity = 0.70 ;
Parameter Vol ; Vol = 1 ; Vol = porosity*%n%*%m%;
Parameter length; length = 1.0 ;
Parameter reducedVol; reducedVol = Vol;

Parameter load(x,y,d) ; load(x,y,d) = 0 ;
load[x,y,'d1']${((ord(x)-1) eq 0  ) and ((ord(y)-1) gt 0) and ((ord(y)-1) lt %m%) }
              =  1 ;
load[x,y,'d1']${((ord(x)-1) eq %n%) and ((ord(y)-1) gt 0) and ((ord(y)-1) lt %m%) }
              = -1 ;
load[x,y,'d2']${((ord(y)-1) eq 0  ) and ((ord(x)-1) gt 0) and ((ord(x)-1) lt %n%) }
              =  1 ;
load[x,y,'d2']${((ord(y)-1) eq %m%) and ((ord(x)-1) gt 0) and ((ord(x)-1) lt %n%) }
              = -1 ;

    load['x0','y0','d1']     = -1/2 ; load['x0','y0','d2']     = -1/2 ;
    load['x%n%','y0','d1']   =  1/2 ; load['x%n%','y0','d2']   = -1/2 ;
    load['x%n%','y%m%','d1'] =  1/2 ; load['x%n%','y%m%','d2'] =  1/2 ;
    load['x0','y%m%','d1']   = -1/2 ; load['x0','y%m%','d2']   =  1/2 ;

Parameter xi(i) ; xi('i0') = -1 ;  xi('i1') = 1 ;

Parameter axx(i,j,k,l) ;   axx(i,j,k,l) = xi[i]*xi[k]*(1 + xi[j]*xi[l]/3);
Parameter ayy(i,j,k,l) ;   ayy(i,j,k,l) = xi[j]*xi[l]*(1 + xi[i]*xi[k]/3);
Parameter axy(i,j,k,l) ;   axy(i,j,k,l) = xi[i]*xi[l];
Parameter ayx(i,j,k,l) ;   ayx(i,j,k,l) = xi[j]*xi[k];

Parameter K_big(i,j,k,l,d,b) ;
    K_big[i,j,k,l,'d1','b1'] = (lambda + 2*mu)*axx[i,j,k,l] + mu*ayy[i,j,k,l];
    K_big[i,j,k,l,'d2','b2'] = (lambda + 2*mu)*ayy[i,j,k,l] + mu*axx[i,j,k,l];
    K_big[i,j,k,l,'d1','b2'] = lambda*axy[i,j,k,l] + mu*ayx[i,j,k,l];
    K_big[i,j,k,l,'d2','b1'] = lambda*ayx[i,j,k,l] + mu*axy[i,j,k,l];

Parameter u(x,y,d);
Parameter rho(x,y); rho[x,y] = 1.0;
         rho[x,y]${( mod(((ord(x)-1)/3),3) eq 1) and ( mod(((ord(y)-1)/3),3) eq 1) }= 0.0 ;

************************************************************************
* nonlinear model for w, theta  (w is u and theta is xi in my notes)
************************************************************************

Variable  w(x,y,d) , theta , work ;

Equation
 element_eqs(x,y) , Def_obj_1 ;

element_eqs(x,y)$((X0(X))and(Y0(Y))and(rho[x,y] ne 1))..
        sum{(i,j,k,l),
        (
        w[x+ord(i),y+(ord(j)-1),'d1']*K_big[i,j,k,l,'d1','b1']*w[x+ord(k),y+(ord(l)-1),'d1'] +
        w[x+ord(i),y+(ord(j)-1),'d2']*K_big[i,j,k,l,'d2','b1']*w[x+ord(k),y+(ord(l)-1),'d1'] +
        w[x+ord(i),y+(ord(j)-1),'d1']*K_big[i,j,k,l,'d1','b2']*w[x+ord(k),y+(ord(l)-1),'d2'] +
        w[x+ord(i),y+(ord(j)-1),'d2']*K_big[i,j,k,l,'d2','b2']*w[x+ord(k),y+(ord(l)-1),'d2']
         ) }
        =l= theta/(reducedVol);


Def_obj_1.. work =e=  (  2 * sum{(x,y,d)$((X0(X))and(Y0(Y))),  load[x,y,d]*w[x,y,d] } -
                            sum{(x,y)$((X0(X))and(Y0(Y))and(rho[x,y] eq 1)),
                            sum{(i,j,k,l),
                (
        w[x+ord(i),y+(ord(j)-1),'d1']*K_big[i,j,k,l,'d1','b1']*w[x+ord(k),y+(ord(l)-1),'d1'] +
        w[x+ord(i),y+(ord(j)-1),'d2']*K_big[i,j,k,l,'d2','b1']*w[x+ord(k),y+(ord(l)-1),'d1'] +
        w[x+ord(i),y+(ord(j)-1),'d1']*K_big[i,j,k,l,'d1','b2']*w[x+ord(k),y+(ord(l)-1),'d2'] +
        w[x+ord(i),y+(ord(j)-1),'d2']*K_big[i,j,k,l,'d2','b2']*w[x+ord(k),y+(ord(l)-1),'d2']
                 )}}
        - theta   )/100000000
        ;

model nlmodel /  element_eqs,
                 Def_obj_1 /;

w.lo[x,y,d] = 0.001;
theta.lo = 0 ;
solve nlmodel using nlp maximazing work;

work.l = work.l*100000000 ;
************************************************************************
* linear model for sigma
************************************************************************
u(x,y,d) = w.l(x,y,d);
Variable sigma(x,y) , zero  ;
Equation compat(x,y,d), tot_vol , Def_obj_2 ;


compat(x,y,d)$( (X0(X)) and (Y0(Y)) and (ord(X) gt 1) and (ord(Y) gt 1) )..

     sum{(i,j,k,l)$( (X0(X-(ord(i)-1) ) ) and (Y0(Y-(ord(j)-1))) and (ord(X)-(ord(i)-1) gt 1 )  and (ord(Y)-(ord(j)-1) gt 1 ) ),
     (
         K_big[i,j,k,l,d,'b1']*u[x+(ord(k)-ord(i)),y+(ord(l)-ord(j)),'d1'] +
         K_big[i,j,k,l,d,'b2']*u[x+(ord(k)-ord(i)),y+(ord(l)-ord(j)),'d2']
      )*sigma[x-(ord(i)-1),y-(ord(j)-1)]}
      - load[x,y,d] =e= 0 ;


tot_vol..    sum {(x,y)$ELEMENTS(x,y), sigma[x,y] }  =e= Vol ;

Def_obj_2.. zero =e= 0 ;

model linmodel / compat, tot_vol ,  Def_obj_2 /;
sigma.lo(x,y) = 0 ;

solve linmodel  using nlp maximazing zero;


************************************************************************
* linear model for compliance
************************************************************************

Variable w(x,y,d), complian ;
Equation compat2(x,y,d), Def_obj_3 ;

compat2(x,y,d)$( (X0(X)) and (Y0(Y)) and (ord(X) gt 1) and (ord(Y) gt 1) )..
         sum{(i,j,k,l)$ELEMENTS(x-(ord(i)-1),y-(ord(j)-1)),
         (
         (K_big[i,j,k,l,d,'b1'])*w[x+((ord(k)-1)-(ord(i)-1)),y+((ord(l)-1)-(ord(j)-1)),'d1'] +
         (K_big[i,j,k,l,d,'b2'])*w[x+((ord(k)-1)-(ord(i)-1)),y+((ord(l)-1)-(ord(j)-1)),'d2']
         )*(rho[x-(ord(i)-1),y-(ord(j)-1)]+0.000001)}
         =e= load[x,y,d];

Def_obj_3.. complian =e= -sum{(x,y,d), load[x,y,d]*w[x,y,d]*length*length };

model compl_mod / compat2 ,  Def_obj_3 /;

solve compl_mod  using nlp maximazing complian;
