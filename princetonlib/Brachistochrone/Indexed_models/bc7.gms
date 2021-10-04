* This version works

*      1                 2
*     /       / 1 + y'(x)  \
* min |  sqrt | ---------- |  dx
*     /       \    y(x)    /
*     0
*
set j /0*64/;
parameter n; n= 64;

parameter y[j]; y[j]=power((ord[j]-1)/n,6);

positive variable
                     x[j],
                     f[j],
                  dxdy[j];
variable
                     time;

equation
  for_dxdy[j],
  for_f[j],
  defobj;


for_dxdy[j]$(ord(j)>1)..   dxdy[j]=e=(x[j] - x[j-1])/(y[j] - y[j-1]);
for_f[j]$(ord(j)>1)..      f[j]=e=sqrt( (sqr(dxdy[j])+1)/((y[j]+y[j-1])/2) );
defobj..                   time=e=sum(j$(ord(j)>1),{f[j]*(y[j]-y[j-1])});

 x.fx['0']   = 0;
 x.fx['64']  = 1;

 x.l[j] = y[j];

*conopt gets unbounded?
f.up(j) = 1e8;

model brahstron3 /all/;

solve brahstron3 using nlp minimize time;
*********************************************
file dem /output/;
put dem;
loop(j,put  x.l[j]:11:7 put  y[j]:11:7  put dxdy.l[j]:11:7 put;);
put time.l:20:10;