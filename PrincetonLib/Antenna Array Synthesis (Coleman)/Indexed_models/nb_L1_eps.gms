* Objective: convex
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


Parameter width ; width = sqrt(19);
Parameter delta ; delta = 1/(2*width);


Parameter delmax ; delmax = 11;

Set M /m1*m23/;
Set N /n1*n23/;

Parameter Par_Px[m,n] ; Par_Px[m,n] = delta*((ord(m)-12)+(ord(n)-12)/2)/3 ;
Parameter Par_Py[m,n] ; Par_Py[m,n] = delta*(ord(n)-12)*sqrt(3)/3;

Set P[m,n] ; P[m,n]= yes${((sqr(Par_Px[m,n] + Par_Py[m,n]/2) +
                          3*sqr(Par_Py[m,n])/4)) le 1/delta/delta}


* The x,y,z components of the look direction
Parameter lx ; lx = sin(pi*22.5/180)*cos(pi*30/180);
Parameter ly ; ly = sin(pi*22.5/180)*sin(pi*30/180);
Parameter lz ; lz = sqrt(1-lx*lx-ly*ly);

Parameter beamwidth ;    beamwidth = 20;
Parameter cosbeamwidth ; cosbeamwidth = cos(beamwidth*pi/180);


Set P_Sidelobes[m,n];
P_Sidelobes[m,n]:=yes${{-Par_Px[m,n]*lx - Par_Py[m,n]*ly +
                        sqrt(abs(1-sqr(Par_Px[m,n])-sqr(Par_Py[m,n])))*lz le cosbeamwidth}
                        and
                        (P[m,n])};

Parameter rho ; rho := 1/sqrt(10*10*10) ;
Parameter cosine[m,n,i,j] ; cosine[m,n,i,j]=  cos(-2*pi*((Par_Px[m,n])*(ord(i)-5) + (Par_Py[m,n])*(ord(j)-5)));
Parameter sine[m,n,i,j]   ; sine[m,n,i,j]  =  sin(-2*pi*((Par_Px[m,n])*(ord(i)-5) + (Par_Py[m,n])*(ord(j)-5)));


Parameter rho  ; rho =  exp(log(10)*(-15/10));
Parameter epsi ; epsi = 1.0e-8;

Variable w_real[i,j], w_imag[i,j],  A_real[m,n] , A_imag[m,n] , L_one ;

Equation Eq_1(m,n) , Eq_2(m,n) ,  chebychev(m,n) , Def_obj ;

Eq_1(m,n)$P[m,n]..  A_real[m,n] =e=  sum{(i,j), (w_real[i,j]*cos(-2*pi*((ord(i)-5)*(ord(m)-12) + (ord(j)-5)*(ord(n)-12)))-
                                          w_imag[i,j]*sin(-2*pi*((ord(i)-5)*(ord(m)-12) + (ord(j)-5)*(ord(n)-12)))
                                 )};

Eq_2(m,n)$P[m,n]..  A_imag[m,n] =e=  sum{(i,j), (w_real[i,j]*sin(-2*pi*((ord(i)-5)*(ord(m)-12) + (ord(j)-5)*(ord(n)-12)))+
                                          w_imag[i,j]*cos(-2*pi*((ord(i)-5)*(ord(m)-12) + (ord(j)-5)*(ord(n)-12)))
                                 )};

chebychev(m,n)$P_Sidelobes(m,n)..  sqr(A_real[m,n]) + sqr(A_imag[m,n]) =l= rho;

Def_obj.. L_one=e=
    sum {(m,n)$P_Sidelobes[m,n],
        sqrt((epsi+sqr(A_real[m,n]) + sqr(A_imag[m,n]))/sqrt(1.01-(sqr(Par_Px[m,n])+sqr(Par_Py[m,n]))))};



*w_real.l[i,j] = 1;

A_imag.fx['m1','n1'] = 0;

Model nb_L1_eps /all/;

Solve nb_L1_eps using nlp minimazing L_one;
Display L_one.l ;