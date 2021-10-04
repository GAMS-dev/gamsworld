*      1                 2
*     /       / 1 + y'(x)  \
* min |  sqrt | ---------- |  dx
*     /       \    y(x)    /
*     0
*

set j /0*512/;
parameter    n;  n    = 512;
parameter x[j];  x[j] = sqr{sqr((ord[j]-1)/n)};

positive variable y[j],
                  dydx[j];

variable             y[j],
                     time;

equation          differen[j],
                  defobj;

differen[j]$(ord(j)>1).. dydx[j] =e= (y[j]-y[j-1])/(x[j]-x[j-1]);

defobj..   time    =e= sum(j$(ord(j)>1),(sqrt(
                       (1+sqr{dydx[j]})/(y[j-1]))*(x[j]-x[j-1])));

 dydx.up[j]    = 14.5;
 dydx.lo[j]    = 0.3849;
 dydx.l[j]     = 10.0;
 dydx.fx['0']  = 0.0;
 dydx.fx['512']= 0.3849;

 y.fx['0']   = 1.0e-12;
 y.fx['512'] = 1;
 y.l[j] = exp{0.7*log(x[j]+0.000001)};

model brahstron1 /all/;
solve brahstron1 using nlp minimaze time;
*****************************************
file dem /output/;  put dem;

put "time = ", time.l:20:10; put /;
put "point         X           Y             dx/dy      "; put /;
loop(j,put j.tl:8 put x[j]:12:7 put y.l[j]:12:7 put dydx.l[j]:16:7 put /;);