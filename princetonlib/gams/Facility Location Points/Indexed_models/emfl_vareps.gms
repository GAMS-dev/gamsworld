* Euclidean single facility location problem

* Objective Function:  convex
* Constraint Functions: none

*parameter  m  := 200;         # number of existing facilities
*parameter  n1 := 5;
*parameter  n2 := 5;
*parameter  n  := n1*n2;       # number of new facilities

Set k /k1*k200/;
Set i /i1*i25/;
Set some(i) /i1,i6,i11,i16,i21/;
Set j /J1,J2/;
Alias(i,ii);
Scalar mn ;
Set i1(i) /i1*i5/;
Alias(i1,i2);

parameter  a[k,j] ;
* coordinates of existing facility
a[k,j]= Uniform(0,1);
parameter  w[k,i] ;
* weights associated with old-new connections ;

parameter  v[i,ii] ;
* weights associated with new-new connections ;
           v[i,ii] = 0.2$(ord(i) lt ord(ii)) ;

parameter xx[i,j];
          xx[i,'j1'] = ((  mod((ord(i)-1),5))/5)+0.1  ;
          xx[i,'j2'] = ((round((ord(i)-3)/5))/5)+0.1  ;

Loop((k,i),
if {(abs(a[k,'j1']-xx[i,'j1']) le 0.2)and(abs(a[k,'j2']-xx[i,'j2']) le 0.2),
                    w[k,i]= 0.05     }               ;
     );

Loop((k,i),
if {(abs(a[k,'j1']-xx[i,'j1']) le 0.1)and(abs(a[k,'j2']-xx[i,'j2']) le 0.1),
                    w[k,i]= 0.95     }               ;
     );

Variable sumEucl , x[i,j] , epsilon ;

Equation defobj ;

defobj..

sumEucl=e=  epsilon+
   sum{k,sum(i,                  (w[k,i] *sqrt(sqr(epsilon)+sum{j,sqr(x[i,j]-a[k,j] )} )))}
 + sum{i,sum(ii$(ord(ii)>ord(i)),(v[i,ii]*sqrt(sqr(epsilon)+sum{j,sqr(x[i,j]-x[ii,j])} )))}
                   ;

x.l[i,'j1'] = ((  mod((ord(i)-1),5))/5)+0.1  ;
x.l[i,'j2'] = ((round((ord(i)-3)/5))/5)+0.1  ;
epsilon.lo = 1.0e-8 ;
epsilon.l  = 1.0    ;
model emfl_vareps /all/;

For (mn = 1 to 1,

solve emfl_vareps using nlp minimaze sumEucl;

Loop((k,i), w[k,i]= 0.0  );

Loop((k,i),

if {(abs(a[k,'j1']-x.l[i,'j1']) le 0.2)and(abs(a[k,'j2']-x.l[i,'j2']) le 0.2),
                    w[k,i]= 0.05     }               ;
     );
Loop((k,i),
if {(abs(a[k,'j1']-x.l[i,'j1']) le 0.1)and(abs(a[k,'j2']-x.l[i,'j2']) le 0.1),
                    w[k,i]= 0.95     }               ;
     );                );


display a;
display v;
display x.l;
display w;
display xx;
display sumEucl.l;
