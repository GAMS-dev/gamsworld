* Objective: linear
* Constraints: convex quadratic

************************************************************************
* Works fine with presolve turned on.  Fails for some reason when
* presolve turned off.
************************************************************************

$Set N  12
$Set M  6
$Set M2 3
$Set N2 25

Set X  / x0*x%N% / ;
Set Y  / y0*y%M% / ;
Set d  / d1*d2 / ;
SET J  /mj9,mj8,mj7,mj6,mj5,mj4,mj3,mj2,mj1,mj0,pj1,pj2,pj3,pj4,pj5,pj6,pj7,pj8,pj9/;
Alias (j,j1);
Alias (j,j2);

Set NODES(x,y)   ;  NODES(x,y) = Yes;
* A lattice of Nodes


Set ANCHORS(x,y) ; ANCHORS('x0',y)${(ord(y)>=%M%/3) and (ord(y)<=(%M%-%M%/3))} = Yes;

Parameter load(x,y,d) ; load(x,y,d) = 0;
                        load['x%n%','y%m2%','d2'] =  -1;

Variable gcd(j,j1), m ;
Equation eq_1(j,j1), eq_2(j,j1), eq_3(j,j1), Def_obj_1 ;


eq_1(j,j1)$(ord(j) lt 10 )..                         gcd(j,j1) =e=
              sum{j2$(ord(j2) eq 20-ord(j)),gcd(j2,j1)};
*  x<0   conditions

eq_2(j,j1)$((ord(j1) lt ord(j))and(ord(j) gt 10 )).. gcd(j,j1) =e= gcd(j1,j);
*  x>0 and y<x   conditions

eq_3(j,j1)$((ord(j1) ge ord(j) )and (ord(j) gt 10 ) )..
                                                      gcd(j,j1) =e=
              sum{j2$(ord(j2)-10 eq mod((ord(j1)-10),(ord(j)-10))),gcd(j2,j) };
*  x>0 and y>=x    conditions

Def_obj_1.. m =e=1;

gcd.fx(j,j1)$(ord(j)- 10 eq    0   )   = (ord(j1)-10);
* x==0             conditions

model first /all/;
Solve first using lp minimazing m ;
************************************************************************


Alias (x,xj);
Alias (x,xa);
Alias (x,xk);

Alias (y,yj);
Alias (y,ya)
Alias (y,yk)

Parameter gsd(x,y,xj,yj);
Loop((x,y,xj,yj),
    gsd(x,y,xj,yj) = sum{(j,j1)${({ord(x)-ord(xj)} eq {ord(j )-10}) and
                                 ({ord(y)-ord(yj)} eq {ord(j1)-10})},abs(gcd.l(j,j1))};
     );

Set ARCS(x,y,xj,yj);
    ARCS(x,y,xj,yj)${

                     {(abs(ord(xj)-ord(x)) le        3) and
                      (abs(ord(yj)-ord(y)) le        3) and
                      (   (gsd[x,y,xj,yj]) eq        1) and
                      (    ord(x)          gt ord(xj) )}

                                 or

                     {(    ord(x)          eq ord(xj) ) and
                      (    ord(y)          gt ord(yj) )}

                     } = YES;




Parameter length[x,y,xj,yj]; length[x,y,xj,yj] = 0.00001;

length[x,y,xj,yj]$ARCS(x,y,xj,yj)= sqrt( sqr(ord(x)-ord(xj)) +
                                         sqr(ord(y)-ord(yj))  );


Variable  w(x,y,d) , work ;

Equation  element_eqs(x,y,xj,yj), to_anchor(x,y,d), Def_obj_2 ;


element_eqs(x,y,xj,yj)$ARCS(x,y,xj,yj)..
 sqr( (ord(xj)-ord(x))/length[x,y,xj,yj] * (w[x,y,'d1'] - w[xj,yj,'d1']) +
      (ord(yj)-ord(y))/length[x,y,xj,yj] * (w[x,y,'d2'] - w[xj,yj,'d2']))
    =l= sqr(length[x,y,xj,yj]);

 To_anchor(x,y,d)$ANCHORS(x,y)..      w[x,y,d] =e= 0;

 Def_obj_2.. work =e=  -sum{(x,y,d), load[x,y,d]*w[x,y,d] };

 w.l[x,y,d] = 0.001;

Model structure3a /all/ ;
Solve structure3a  using nlp maximazing work ;

************************************************************************


Parameter u(x,y,d) ; u[x,y,d] = work.l * w.l[x,y,d];

Parameter Vol ; Vol = 1000 ;

Variable sigma(x,y,xj,yj) , zero ;
Equation  compat_1(x,y,d) , compat_2(x,y,d) , tot_vol , Def_obj_3 ;

Def_obj_3.. zero =e= 0;

compat_1(x,y,d)$((NODES(x,y)) and (not ANCHORS(x,y)) and (ord(d) eq 1))..
    sum{(xj,yj)$ARCS(x,y,xj,yj),
    ((ord(xj)-ord(x))/length[x,y,xj,yj] * (u[x,y,'d1'] - u[xj,yj,'d1']) +
     (ord(yj)-ord(y))/length[x,y,xj,yj] * (u[x,y,'d2'] - u[xj,yj,'d2']))
    * sigma[x,y,xj,yj]
    * (   (ord(xj)-ord(x))  )/sqr(length[x,y,xj,yj]) }
                                                                           -
    sum{(xk,yk)$ARCS(x,y,xk,yk),
    ((ord(x)-ord(xk))/length[xk,yk,x,y] * (u[xk,yk,'d1'] - u[x,y,'d1']) +
     (ord(y)-ord(yk))/length[xk,yk,x,y] * (u[xk,yk,'d2'] - u[x,y,'d2']))
     * sigma[xk,yk,x,y]
     * (  (ord(x)-ord(xk))  )/sqr(length[xk,yk,x,y])}
                                                      =e=    load[x,y,'d1'];

compat_2(x,y,d)$((NODES(x,y)) and (not ANCHORS(x,y)) and (ord(d) eq 1))..
    sum{(xj,yj)$ARCS(x,y,xj,yj),
    ((ord(xj)-ord(x))/length[x,y,xj,yj] * (u[x,y,'d1'] - u[xj,yj,'d1']) +
     (ord(yj)-ord(y))/length[x,y,xj,yj] * (u[x,y,'d2'] - u[xj,yj,'d2']))
    * sigma[x,y,xj,yj]
    * ( (ord(yj)-ord(y)) )/sqr(length[x,y,xj,yj])}
                                                                           -
    sum{(xk,yk)$ARCS(x,y,xk,yk),
    ((ord(x)-ord(xk))/length[xk,yk,x,y] * (u[xk,yk,'d1'] - u[x,y,'d1']) +
     (ord(y)-ord(yk))/length[xk,yk,x,y] * (u[xk,yk,'d2'] - u[x,y,'d2']))
    * sigma[xk,yk,x,y]
    * ( (ord(y)-ord(yk)) )/sqr(length[xk,yk,x,y])}

                                                  =e=    load[x,y,'d2'];



tot_vol..
 sum{(x,y,xj,yj)$ARCS(x,y,xj,yj),length[x,y,xj,yj]*sigma[x,y,xj,yj] } =e= Vol ;

sigma.lo(x,y,xj,yj)$ARCS(x,y,xj,yj) = 0 ;


 Model structure3b /compat_1 , compat_2 , tot_vol , Def_obj_3/ ;

 Solve structure3b  using nlp maximazing zero ;
