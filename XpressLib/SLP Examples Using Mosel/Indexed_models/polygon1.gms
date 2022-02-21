*model "Polygon1"
* uses "mmxslp"
*
$Set N 5

Set I / i1*i%N% / ;
Alias(I,J);
Scalar M_PI /3.14 /;

Variable  rho[I]     ,
          theta[I]   ,
          area       ;

Equation Eq_1(I,J) ,
         Eq_2(I)   ,
         Def_Obj   ;

* Third side of all triangles <= 1
Eq_1(I,J)$((ord(I) lt card(I)-2) and
           (ord(J) gt ord(I)+1 ) and (ord(J) lt card(I)))..
           rho[I]*rho[I] + rho[J]*rho[J] -
           rho[I]*rho[J]*2*cos(theta[J]  -
                               theta[I])   =l= 1 ;

* Vertices in increasing order
Eq_2(I)$((ord(I) gt 1) and (ord(I) lt card(I)))..
       theta[I] =g= theta[I-1] +0.01 ;

* Objective - sum of areas
Def_Obj..
       area =e= (Sum{I$((ord(I) gt 1) and (ord(I) lt card(I))),
                            (rho[I]*rho[I-1]*sin(theta[I]-theta[I-1]))}) * 0.5 ;

* Initialisation of SLP variables, plus bounds

rho.lo[I]$(ord(I) lt card(I)) = 0.1 ;
rho.up[I]$(ord(I) lt card(I)) = 1.0 ;

* Boundary conditions
theta.up[I]$(ord(I) eq card(I)-1) = M_PI ;

Model Polygon1 /all / ;
Solve Polygon1 using nlp maximazing area ;
Display area.l ;

