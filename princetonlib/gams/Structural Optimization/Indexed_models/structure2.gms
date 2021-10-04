* Objective: linear
* Constraints: linear

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


Alias (x,xj);
Alias (x,xa);

Alias (y,yj);
Alias (y,ya)

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

Equation element_eqs_p(x,y,xj,yj) , element_eqs_m(x,y,xj,yj), to_anchor(x,y,d), Def_obj ;

element_eqs_p(x,y,xj,yj)$ARCS(x,y,xj,yj)..
    (ord(xj)-ord(x))/length[x,y,xj,yj] * (w[x,y,'d1'] - w[xj,yj,'d1'])
    +
    (ord(yj)-ord(y))/length[x,y,xj,yj] * (w[x,y,'d2'] - w[xj,yj,'d2'])
    =l= length[x,y,xj,yj];

element_eqs_m(x,y,xj,yj)$ARCS(x,y,xj,yj)..
    -length[x,y,xj,yj]
    =l=
    (ord(xj)-ord(x))/length[x,y,xj,yj] * (w[x,y,'d1'] - w[xj,yj,'d1'])
    +
    (ord(yj)-ord(y))/length[x,y,xj,yj] * (w[x,y,'d2'] - w[xj,yj,'d2'])
    ;

 To_anchor(x,y,d)$ANCHORS(x,y)..      w[x,y,d] =e= 0;

 Def_obj.. work =e=  sum{(x,y,d), load[x,y,d]*w[x,y,d] };
*Def_obj.. work =e= -sum{(x,y,d), load[x,y,d]*w[x,y,d] };

 w.l[x,y,d] = 0.001;

 Model structure2 /all/ ;

 Solve structure2  using nlp maximazing work ;
*Solve structure2  using nlp minimazing work ;

 Display work.l ;
