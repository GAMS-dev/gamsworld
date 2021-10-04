* Shitkovski AMPL model  (translation to GAMS)
$Set N 3
Set i /1*%N%/;
Set j /1,2/;
Alias (j,j1);
parameter  A[i] /1 0.13294, 2 -0.244378, 3 0.325895 /  ;
parameter  D[i] / 1 2.5074 , 2 -1.36401, 3 1.02282  /  ;

table H[j,i]
             1           2          3
1       -0.564255   -0.404979  -0.0735084
2        0.392417    0.927589   0.535493;

table B[j,j1]
        1                 2
1       5.66598         2.77141
2       2.77141         2.12413;


Variable x[j]   ,
         F[i]   ,
         f_small;
Equation  Eq_1[i]
          Def_obj;

Eq_1[i]..
F[i] =e=  A[i] + sum{j,(H[j,i]*x[j])}
               + 0.5*(sum{j,(x[j]*sum{j1,(B[j,j1]*x[j1])})})*D[i];

Def_obj.. f_small =e= sum{i, sqr(F[i])};

x.l[j] = 0.1;

Model s204 /all/;
Solve s204 using nlp minimaze f_small;
display f_small.l;
