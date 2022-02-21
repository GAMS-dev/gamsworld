* Objective: linear
* Constraints: linear

$Set N  9
$Set M  6
$Set M2 3
$Set N2 19

Set X  / x0*x%N% / ;
Set Y  / y0*y%M% / ;
SET J  /mj9,mj8,mj7,mj6,mj5,mj4,mj3,mj2,mj1,mj0,pj1,pj2,pj3,pj4,pj5,pj6,pj7,pj8,pj9/;
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
Alias (x,xa);

Alias (y,yj);
Alias (y,ya);

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

Parameter xload(x,y) ; xload(x,y) = 0 ;
Parameter yload(x,y) ; yload(x,y) = 0 ;
                       yload['x%n%','y%m2%'] = -1;

Positive Variable comp(x,y,xj,yj) , tens(x,y,xj,yj) ;

Variable  volume ;

Equation Xbalance(x,y) , Ybalance(x,y) , Def_obj ;
$ontext;
Xbalance(xa,ya)$((NODES(xa,ya)) and (not ANCHORS(xa,ya)))..
    sum{(x,y,xj,yj)$ARCS(x,y,xj,yj),
                                     ((ord(xj)-ord(x))/length[x,y,xj,yj])*
                                      (comp[x,y,xj,yj]-tens[x,y,xj,yj]) }
                             +
    sum{(xj,yj,x,y)$ARCS(x,y,xj,yj),
                                     ((ord(y)-ord(yj))/length[x,y,xj,yj])*
                                      (tens[xj,yj,x,y]-comp[xj,yj,x,y]) }
                              =e=  xload[xa,ya] ;


Ybalance(xa,ya)$((NODES(xa,ya)) and (not ANCHORS(xa,ya)))..
    sum{(x,y,xj,yj)$ARCS(x,y,xj,yj),
                                     ((ord(yj)-ord(y))/length[x,y,xj,yj])*
                                      (comp[x,y,xj,yj]-tens[x,y,xj,yj]) }
                             +
    sum{(x,y,xj,yj)$ARCS(x,y,xj,yj),
                                     ((ord(y)-ord(yj))/length[xj,yj,x,y])*
                                      (tens[xj,yj,x,y]-comp[xj,yj,x,y]) }
                             =e=  yload[xa,ya]  ;

$offtext;

Xbalance(x,y)$((NODES(x,y)) and (not ANCHORS(x,y)))..
    sum{(xj,yj)$ARCS(x,y,xj,yj),
                                     ((ord(xj)-ord(x))/length[x,y,xj,yj])*
                                      (comp[x,y,xj,yj]-tens[x,y,xj,yj]) }
                             +
    sum{(xj,yj)$ARCS(x,y,xj,yj),
                                     ((ord(y)-ord(yj))/length[x,y,xj,yj])*
                                      (tens[xj,yj,x,y]-comp[xj,yj,x,y]) }
                              =e=  xload[x,y] ;


Ybalance(x,y)$((NODES(x,y)) and (not ANCHORS(x,y)))..
    sum{(xj,yj)$ARCS(x,y,xj,yj),
                                     ((ord(yj)-ord(y))/length[x,y,xj,yj])*
                                      (comp[x,y,xj,yj]-tens[x,y,xj,yj]) }
                             +
    sum{(xj,yj)$ARCS(x,y,xj,yj),
                                     ((ord(y)-ord(yj))/length[xj,yj,x,y])*
                                      (tens[xj,yj,x,y]-comp[xj,yj,x,y]) }
                             =e=  yload[x,y]  ;

Def_obj..
volume =e= sum{(x,y,xj,yj)$ARCS(x,y,xj,yj),
                          length[x,y,xj,yj]*(comp[x,y,xj,yj]+tens[x,y,xj,yj])};


Model structure /all/ ;

Solve structure  using nlp minimazing volume ;


Display volume.l ;
