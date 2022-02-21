
Parameter c ; c = 5;
Positive variable a , b ;
Variable foo ;
Equation Def_obj , alessb ;

Def_obj.. -foo =e= (c+1)*(sqr(1-b)+(3-2*a))/4
             - c*(sqr(1-b)+sqr(1-a))/4
          - 3*(power(a,3)/24 +
               (1-a)*(1-sqr(1-b))/4 +
               sqr(1-b)*(1-(a+b)/2)/2
                  - power((1-b),3)/6
              );

alessb..  a =l= b;

a.up=1.0;
b.up=1.0;

a.l=0.03;
b.l=0.10;
Model n_continuum /all/;
Solve n_continuum using nlp minimazing foo ;

display foo.l;

display a.l, b.l;
