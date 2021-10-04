$Set d 5
$Set n 100

Set j /j1*j%d%/;
Set i /i1*i%n%/;
Alias(i0,i);
Set exist(i) /i1/;

Parameter k ,m ;
Parameter  a[j,i]; a[j,i]= Uniform(0,1);
Parameter b(i);

Positive Variable y , x[j];
Variable  ydist ;

Equation one_side,
         defobj    ;

one_side[i]..     y     =g=  sum{j,(a[j,i]*x[j])};
defobj..          ydist =e= -sum{i0$exist(i0),(sum{j,(a[j,i0]*x[j])}/y)}  ;

y.lo = 0.000001;

model dea2 /all/;

for (k = 1 to %n% ,

Exist(i0) = No;
Exist(i0) = YES$( k = ORD(I0));

solve dea2 using nlp minimaze ydist;
ydist.l=-ydist.l;
b(i)$(ord(i)=k) = ydist.l;
display ydist.l;
display x.l;
);
display b;