* An ampl model for 2-D regression where x and y are treated symmetrically.
* That is, errors are computed as distances from the points to the line.

*
* We start with the optimization model
* ------------------------------------
$Set mm 7
$Set nn 13
$Set ll 100

Set j /j1*j%nn%/;
Set i /i1*i%mm%/;
Set l /l1*l%LL%/;
Alias(j,k);
Alias(i,ii);
*  n - dimension of space
*  m - number of hyperplanes being intersected
*  L - number of data points


* L data points in R^n
Parameter z[l,j];
Parameter A0(i,j) ;  A0[i,j]=0 ; A0['i1','j1'] = 1;
                                 A0['i2','j2'] = 1;
                                 A0['i3','j3'] = 1;
                                 A0['i4','j3'] = 1;
                                 A0['i5','j3'] = 1;
                                 A0['i6','j3'] = 1;
                                 A0['i7','j3'] = 1;

Parameter xi0[j]  ;  xi0[j] = Normal(0,1);
Parameter z0(l,j) ;  z0[l,j]= Normal(0,1);
Parameter alpha[l];  alpha[l]=1-0.1*Uniform(0,1);
z[l,j] = (z0[l,j] - alpha[l]*sum{(i,k),(A0[i,j]*A0[i,k]*(z0[l,k]-xi0[k])) });
parameter xi_bar[j];  xi_bar[j] = sum{l,z[l,j]/%ll%};

Parameter rownorm[i]; rownorm[i] =sqrt(sum{j, sqr(A0[i,j])});
                              A0[i,j] = A0[i,j] / rownorm[i];


Variable
   A[i,j],
   b[i],
   dist ;

Equation
    orthnorm_1[i,ii]
    orthnorm_2[i,ii]
    defobj;

defobj..  dist =e= sum{(l,i),  sqr(b[i]-  sum{j,(A[i,j]*z[l,j])}  )  };

orthnorm_1[i,ii]$(ord(i) = ord(ii))..  sum{j, (A[i,j]*A[ii,j]) } =e=  1 ;
orthnorm_2[i,ii]$(ord(i)<> ord(ii))..  sum{j, (A[i,j]*A[ii,j]) } =e=  0 ;

b.l[i]=Normal(0,1);
A.l[i,j]:= Normal(0,1);

Model pca2 /all/;
Solve pca2 using nlp minimaze dist;

display dist.l , b.l, a.l ;
display alpha ,z ;