* Objective: linear
* Constraints: convex quadratic


************************************************************************
* Works fine with presolve turned on.  Fails for some reason when
* presolve turned off.
************************************************************************

$Set N  12
$Set M   6
$Set M2  3
$Set M3  2
$Set M23 4

$Set N2 25
Set D /d1,d2/ ;
Set X  / x0*x%N% / ;
Set Y  / y0*y%M% / ;
SET J  /mj12,mj11,mj10,mj9,mj8,mj7,mj6,mj5,mj4,mj3,mj2,mj1,mj0,
         pj1, pj2, pj3,pj4,pj5,pj6,pj7,pj8,pj9,pj10,pj11,pj12/;
Alias (j,j1);
Alias (j,j2);

Set NODES(x,y)   ;  NODES(x,y) = Yes;
* A lattice of Nodes
Set ANCHORS(x,y) ; ANCHORS('x0',y)${(ord(y)>%M%/3) and (ord(y)<(%M%-%M%/3))} = Yes;

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

Parameter xload(x,y) ; xload(x,y) = 0 ;
Parameter yload(x,y) ; yload(x,y) = 0 ;
                       yload['x%n%','y%m2%'] = -1;

Alias (x,xj);
Alias (x,xk);

Alias (y,yj);
Alias (y,yk);

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



Parameter f(x,y,d);         f(x,y,d) = 0 ;
* external forces

f['x%n%', 'y%m2%','d2'] = -1.0 ;
f['x0'  , 'y%m3%','d2'] =  0.5 ;
f['x0'  , 'y%m23%','d2'] =  0.5 ;

f['x0',  'y%m3%','d1'] =  3*%n%/%m% ;
f['x0', 'y%m23%','d1'] = -3*%n%/%m% ;

Parameter v ; v = 1000;
* total volume of material to use

Variable epsi , Xo(x,y,xj,yj) , Yo(x,y,xj,yj) , T(x,y,xj,yj) , sum_of_t ;

Equation load_constr1(x,y,d),
         load_constr2(x,y,d),
         s_o_convex(x,y,xj,yj) ,
         volume  ,
         Def_obj ;

Def_obj.. sum_of_t =e=  sqrt(sqrt(epsi)) + sum{(x,y,xj,yj)$ARCS(x,y,xj,yj), t[x,y,xj,yj] };

load_constr1(x,y,d)$(NODES(x,y)and(ord(d) eq 1)and(ord(x) gt 1) and (ord(y) gt 1))..
    sum{(xj,yj)$ARCS(x,y,xj,yj), Yo[x,y,xj,yj]*
        (ord(x) -ord(xj))/sqrt(length[x,y,xj,yj])/sqrt(length[x,y,xj,yj])/sqrt(length[x,y,xj,yj]) }
    +
    sum{(xj,yj)$ARCS(x,y,xj,yj), Yo[xj,yj,x,y]*
        (ord(xj)-ord(x))/sqrt(length[xj,yj,x,y])/sqrt(length[xj,yj,x,y])/sqrt(length[xj,yj,x,y]) }
    =e= f[x,y,d];


load_constr2(x,y,d)$(NODES(x,y)and(ord(d) eq 2)and(ord(x) gt 1) and (ord(y) gt 1))..
    sum{(xj,yj)$ARCS(x,y,xj,yj), Yo[x,y,xj,yj]*
        (ord(y) -ord(yj))/sqrt(length[x,y,xj,yj])/sqrt(length[x,y,xj,yj])/sqrt(length[x,y,xj,yj]) }
    +
    sum{(xj,yj)$ARCS(x,y,xj,yj), Yo[xj,yj,x,y]*
        (ord(yj)-ord(y))/sqrt(length[xj,yj,x,y])/sqrt(length[xj,yj,x,y])/sqrt(length[xj,yj,x,y]) }
    =e= f[x,y,d];

s_o_convex(x,y,xj,yj)$ARCS(x,y,xj,yj)..
sqrt(epsi*epsi + 4*sqr(Yo[x,y,xj,yj]) + sqr(t[x,y,xj,yj] - Xo[x,y,xj,yj]))
                                            =l=    t[x,y,xj,yj] + Xo[x,y,xj,yj];
volume..
    sum{(x,y,xj,yj)$ARCS(x,y,xj,yj),length[x,y,xj,yj]*Xo[x,y,xj,yj] } =l= v;

t.l[x,y,xj,yj]$ARCS(x,y,xj,yj)  = 0.2 ;
Xo.l[x,y,xj,yj]$ARCS(x,y,xj,yj) = 0.1 ;
Yo.l[x,y,xj,yj]$ARCS(x,y,xj,yj) = 0.1 ;

Xo.lo(x,y,xj,yj) = 0.0;
T.lo(x,y,xj,yj) = 0.0;
epsi.lo = 1.0e-08;


Model str_var /all/ ;
Solve str_var using nlp minimazing sum_of_t
