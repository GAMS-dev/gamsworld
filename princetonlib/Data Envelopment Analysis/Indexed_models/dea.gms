$Set d 5
$Set n 100

Set j /1*%d%/;
Set i /1*%n%/;

Parameter  a[j,i]; a[j,i]= Uniform(0,1);

Positive Variable
          x[j];
Variable  ydist,
          y    ;

Equation one_diside,
         defobj    ;

defobj..          ydist =e= sqr(y- sum{j,(a[j,'1']*x[j])})/sum{j,(x[j]*x[j])};
one_diside[i]..   y     =g= sum{j,(a[j,i]*x[j])};

x.l[j] =  1;
x.up[j] = 200;
y.up = 200;
y.lo =-200;

model dea /all/;
solve dea using nlp minimaze ydist;;

display x.l;
display y.l;