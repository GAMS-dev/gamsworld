* Objective: nonconvex nonlinear
* Constraints: convex quadratic

$Set N   20
$Set NMO 19

Parameter pi; pi = 4*arctan(1);
Set I /0*%N% /;
Alias(i,j);
SET I1 /0*19/;
SET j1 /0*19/;


variable  x[I]
          y[I]
          area;
Equation
*         ordered(I)
          diam(I,J),
          registrat,
          defobj   ;

*ordered(I)$(ord(I)>1)..
*         x[I-1]*y[I] - x[I]*y[I-1] =g= 0;

diam(i,j)$((ord(I)>1) and (ord(J)>1) and (ord(J)>ord(I)) )..
          sqr(x[I-1] - x[J-1]) + sqr(y[I-1] - y[J-1]) =l= 4;
registrat..
          x['1'] =e= x['%NMO%'];
defobj..
          area =e= 0.5*sum{I,(x[I]*y[I+1] - x[I+1]*y[I])} ;

x.l[I]=      cos(2*ord(I)*pi/%N%)+1.50;
y.l[I]=      sin(2*ord(I)*pi/%N%)     ;
x.lo[I]    = 0.5;
x.up[I]    = 2.5;
x.fx['0']  = 0.5;      y.fx['0']   =   0;
x.fx['%N%']= 0.5;      y.fx['%N%'] =   0;

*x.fx['15'] = 1.81471;  y.fx['15'] =  -1.01354 ;
*x.fx['16'] = 2.35229;  y.fx['16'] =  -0.754325;

model polygon2 /all/;
solve polygon2 using nlp maximazing area;
display x.l;
display y.l;
display area.l;

parameter dist(i,j); dist(i,j)=-7;
parameter areas(i);

loop((i,j)$((I1(I)) and ( J1(J) ) and (ord(J)>ord(I)) ),
dist(i,j)= sqr(x.l[i] - x.l[j]) + sqr(y.l[i] - y.l[j]);
    );

areas(i)= (x.l[i]*y.l[i+1] - x.l[i+1]*y.l[i]);
file dem /out/;
put dem;
loop(I, put x.l[I]:18:7    put y.l[I]:18:7 put /; );
put /;
put area.l:18:6;  put /;
loop(i, loop(j, put dist(i,j):6:2); put /; );

put /;

loop(i, put areas(i):10:5, put /;);