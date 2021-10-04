* This version works

*      1                 2
*     /       / 1 + y'(x)  \
* min |  sqrt | ---------- |  dx
*     /       \    y(x)    /
*     0
*
$set N 512
set j /j0*j%N%/;

parameter x_t[j]; x_t[j]=  ( ((ord[j]-1)/%N%)) ;

Positive variable  y[j];
Variable           x[j],
                   f[j],
                  dx[j],
                  dy[j],
                   time;

equation
  for_dx[j],
  for_dy[j],
  for_f[j],
  defobj;


for_dx[j]$(ord(j)>1).. dx[j]=e=(x[j] - x[j-1]);
for_dy[j]$(ord(j)>1).. dy[j]=e=(y[j] - y[j-1]);
for_f[j]$(ord(j)>1)..  f[j] =e=sqrt((sqr(dx[j])+sqr(dy[j]))/(dy[j]/2));                     ;

defobj..    time=e=sum(j$(ord(j)>1),f[j]);

 y.fx['j0']   = 0;
 y.fx['j%N%'] = 1;
 x.fx['j0']   = 0;
 x.fx['j%N%'] = 1;
dy.lo[j] = 0.0000000001 ;
  x.l[j] = x_t[j] ;
  y.l[j] = x_t[j] ;

model bc5 /all/;

solve bc5 using nlp minimize time;

display f.l ;
display y.l , x.l ;
display time.l ;