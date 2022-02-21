* Objective: convex quadratic
* Constraints: linear
$Set n 1000
$Set T 200

*  n-number of investment opportunities  (in our case  n=1000)
*  T-number of historical samples        (in our case  T= 200)

Set j /1*%n%/;
Set i /1*%T%/;

parameter mu;  mu=1.0;

* return for each asset at each time
* (in lieu of actual data,
* this is an expression of our true
* beliefs about these investments).

parameter  R[i,j];  R[i,j]= Uniform(0,1);

parameter  mean[j]   mean return for each asset ;
           mean[j]= sum{i,R[i,j]}/card(i);

parameter  Rtilde[i,j] # returns ajusted for their means;
           Rtilde[i,j]= R[i,j] - mean[j];

Positive variable  x[j];
Variable           line_comb,
                   y[i];

*             mu                               - weight
*             sum{i,sqr(y[i])}                 - variance
*             sum{j,(mean[j]*x[j])}            - mean

Equation  total_mass,
          constraint[i],
          defobj;

defobj..          line_comb=e= mu*sum{i,sqr(y[i])}
                                 -sum{j,(mean[j]*x[j])};
total_mass..    sum{j,x[j]}=e= 1;
constraint[i].. y[i] =e= sum{j, (Rtilde[i,j]*x[j]) };

model markowitz2 /all/;

solve markowitz2 using nlp minimaze line_comb;

file dem /output/;  put dem;
Put "line_comb= ", line_comb.l:20:10; Put /;          Put /;
put "--------------------------------------        "; Put /;
Put "  item         x                              "; Put /;
put "--------------------------------------        "; Put /;
Loop(j,put j.tl:8 Put x.l[j]:12:7                     Put /; );
put "----------------------------------------------"; Put /;

put "Optimal Portfolio:     "; Put /;
loop(j$(x.l[j]>0.001),put "                      ",
put  j.tl:15, put x.l[j]:10:5, Put /;  );

Put /;
put "        Mean = ", sum{j,mean[j]*x.l[j]}:10:4,
    "    Variance = ",(sum{i,sqr{sum{j,sqr(Rtilde[i,j]*x.l[j])}}} ):10:5;