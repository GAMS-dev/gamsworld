* Objective: nonconvex nonlinear
* Constraints: nonconvex nonlinear

* Maximum area for unit-diameter polygon of N sides.
* The following model started as a GAMS model by Francisco J. Prieto.

parameter N;  N = 6;
Set I  /1*6/;
alias(I,J);
parameter pi;  pi = 4*arctan(1);

Positive Variable        the[I]   polar angle  (measured from fixed direction)
                         rho[I]   polar radius (distance to fixed vertex)
Variable                 area;
Equation Two_index(I,J)
         Next_more(I)
         Main;

Two_index(I,J)$(ord(J)>ord(I))..
 sqr(rho[I]) + sqr(rho[J]) - 2*rho[I]*rho[J]*cos(the[J]-the[I]) =L= 1;

Next_more(I)$(ord(I)>1)..     the[i] =G= the[i-1];

Main..
  area=e=0.5*sum{I$(ord(I)>1),rho[I]*rho[I-1]*sin(the[I]-the[I-1]) } ;

loop(I,rho.l[I]   = 4*ord(I)*{N+1-ord(I)}/{N+1}**2;  );

       rho.up[I]  = 1                                 ;

**************************************************************
*  You can delete 3 string below and as result You receive
*  the same solution, but polygon will be rotate in space

the.up['1'] =  0.200   ;
rho.fx['3']=   1       ;
the.fx['3']=   1.57432 ;
**************************************************************

the.fx['6'] = pi       ;
rho.fx['6'] =  0       ;

model pgon /all/;

solve pgon maximazing area using nlp;