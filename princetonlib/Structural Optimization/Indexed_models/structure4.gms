* Objective: linear
* Constraints: convex quadratic

************************************************************************
* Continuum elements.
* Works fine with presolve turned on.  Fails for some reason when
* presolve turned off.
************************************************************************
$Set N  36
$Set M  20
$Set M2 10

$Set N1 35
$Set M1 19

Parameter   lambda ;  lambda = 1.0 ;
Parameter       mu ;      mu = 1.0 ;
Parameter porosity ; porosity = 0.5 ;

Set i  / i0*i1 / ;
Alias(i,j);
Alias(i,k);
Alias(i,l);
Set b  / b1*b2 / ;

Set X  / x0*x%N% / ;
Set Y  / y0*y%M% / ;
Set X0(X) / x0*x%N1% / ;
Set Y0(Y) / y0*y%M1% / ;
Set d / d1,d2 / ;

Set NODES(x,y)   ;  NODES(x,y) = Yes;
Set ANCHORS(x,y) ; ANCHORS('x0',y)${(ord(y)>=%M%/3) and (ord(y)<=(%M%-%M%/3))} = Yes;

Parameter load(x,y,d);  load(x,y,d) = 0;
          load['x%n%','y%m2%','d2'] =  -1;


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
Parameter u(x,y,d) ;
Parameter Vol ; Vol = 1 ; Vol = porosity*%n%*%m%;
************************************************************************
* nonlinear model for w (w is u in my notes)
************************************************************************

Variable  w(x,y,d) , work ;

Equation To_anchor(x,y,d) , element_eqs(x,y) , Def_obj_1 ;

element_eqs(x,y)$((X0(X))and(Y0(Y)))..
    sum{(i,j,k,l),(
        w[x+ord(i),y+(ord(j)-1),'d1']*K_big[i,j,k,l,'d1','b1']*w[x+ord(k),y+(ord(l)-1),'d1'] +
        w[x+ord(i),y+(ord(j)-1),'d2']*K_big[i,j,k,l,'d2','b1']*w[x+ord(k),y+(ord(l)-1),'d1'] +
        w[x+ord(i),y+(ord(j)-1),'d1']*K_big[i,j,k,l,'d1','b2']*w[x+ord(k),y+(ord(l)-1),'d2'] +
        w[x+ord(i),y+(ord(j)-1),'d2']*K_big[i,j,k,l,'d2','b2']*w[x+ord(k),y+(ord(l)-1),'d2']
       )           }    =l= 1/Vol;

To_anchor(x,y,d)$ANCHORS(x,y)..    w[x,y,d] =e= 0 ;

Def_obj_1.. work =e= sum{(x,y,d), load[x,y,d]*w[x,y,d] };

model nlmodel / element_eqs, To_anchor , Def_obj_1 /;
w.l[x,y,d] = 0.001;
solve nlmodel using nlp maximazing work;

u[x,y,d] := work.l * w.l[x,y,d];
************************************************************************
* linear model for sigma
************************************************************************
Variable sigma(x,y) , zero  ;
Equation compat(x,y,d), tot_vol , Def_obj_2 ;

compat(x,y,d)$(not ANCHORS(x,y))..
     sum{(i,j,k,l)$((X0(X-(ord(i)-1)))and(Y0(Y-(ord(j)-1)))),
     (
         K_big[i,j,k,l,d,'b1']*u[x+(ord(k)-ord(i)),y+(ord(l)-ord(j)),'d1'] +
         K_big[i,j,k,l,d,'b2']*u[x+(ord(k)-ord(i)),y+(ord(l)-ord(j)),'d2']
      )*sigma[x-(ord(i)-1),y-(ord(j)-1)]}
      =g= load[x,y,d] ;

tot_vol..
    sum {(x,y)$((X0(X))and(Y0(Y))), sigma[x,y]} =e= Vol ;

Def_obj_2.. zero =e= 0 ;


sigma.lo(x,y)$((X0(X))and(Y0(Y))) = -1.0e-06;
* almost zero


model linmodel / compat, tot_vol , Def_obj_2 /;
solve linmodel  using lp minimazing zero;

display sigma.l;
