* Objective: linear
* Constraints: convex quadratic
* Feasible set: convex

*###############################################################
* Narrow band 3-dimensional beam pattern optimization
*###############################################################

Set I /i1*i9/;
Set J /j1*j9/;
Parameter  D_big ;  D_big = 2;
Parameter     pi ; pi = 4*arctan(1);
Parameter      d ; d = 0.5;

***************************************************************************
Parameter Par_Els_x[i,j]; Par_Els_x[i,j]=   d*(ord(i)+ord(j)-10)/2;
Parameter Par_Els_y[i,j]; Par_Els_y[i,j]=   d*(ord(j)       - 5)*sqrt(3)/2;

Set Els[i,j]; Els[i,j]=yes$( (Par_Els_x[i,j]+Par_Els_y[i,j] ge -4) and
                             (Par_Els_x[i,j]+Par_Els_y[i,j] le  4));
***************************************************************************

Parameter width ; width = sqrt(100);
Parameter delta ; delta = 1/(width);
*delta =  0.0640184;
Parameter delmax ; delmax = 19;

***************************************************************************
Set M /m1*m39/;
Set N /n1*n39/;
Parameter Par_Px[m,n] ; Par_Px[m,n] = delta*((ord(m)-20)+(ord(n)-20)/2)/6 ;
Parameter Par_Py[m,n] ; Par_Py[m,n] = delta*(ord(n)-20)*sqrt(3)/6;

Set P[m,n] ; P[m,n]= yes${((sqr(Par_Px[m,n] + Par_Py[m,n]/2) +
                          3*sqr(Par_Py[m,n])/4)) le 1/delta/delta}


***************************************************************************
Parameter lx ; lx = sin(pi*22.5/180)*cos(pi*30/180);
Parameter ly ; ly = sin(pi**22.5/180)*sin(pi*30/180);
Parameter lz ; lz = sqrt(1-lx*lx-ly*ly);

Parameter beamwidth ;    beamwidth = 7;
Parameter cosbeamwidth ; cosbeamwidth = cos(beamwidth*pi/180);

Set P_Sidelobes[m,n];
P_Sidelobes[m,n]:=yes${{-Par_Px[m,n]*lx - Par_Py[m,n]*ly +
                        sqrt(abs(1-sqr(Par_Px[m,n])-sqr(Par_Py[m,n])))*lz le cosbeamwidth}
                        and
                        (P[m,n])};

Parameter rho ; rho := 1/sqrt(10*10*10) ;
Parameter cosine[m,n,i,j] ; cosine[m,n,i,j]=  cos(-2*pi*((Par_Px[m,n])*(ord(i)-5) + (Par_Py[m,n])*(ord(j)-5)));
Parameter sine[m,n,i,j]   ; sine[m,n,i,j]  =  sin(-2*pi*((Par_Px[m,n])*(ord(i)-5) + (Par_Py[m,n])*(ord(j)-5)));

Variable w_real[i,j], w_imag[i,j], A_real[m,n] , A_imag[m,n] , L_two ;
Equation Eq_1(m,n) , Eq_2(m,n) ,   Def_obj ;

Eq_1(m,n)$P[m,n]..  A_real[m,n] =e=
    sum{(i,j), (w_real[i,j]*cosine[m,n,i,j] -
                w_imag[i,j]*sine[m,n,i,j]
                           )};

Eq_2(m,n)$P[m,n]..  A_imag[m,n] =e=
    sum{(i,j), (w_real[i,j]*sine  [m,n,i,j] +
                w_imag[i,j]*cosine[m,n,i,j]
                           )};


Def_obj.. L_two=e=
    sum {(m,n)$P_Sidelobes[m,n],
        ((sqr(A_real[m,n]) + sqr(A_imag[m,n]))/sqrt(1.1-(sqr(Par_Px[m,n])+sqr(Par_Py[m,n]))))};


    A_real.fx['m1','n1'] = 1;

    A_imag.fx['m1','n1'] = 0;

w_real.l[i,j] = 1;
Model nbsup_L2 /all/;

Solve nbsup_L2 using nlp minimazing L_two;
Display L_two.l ;