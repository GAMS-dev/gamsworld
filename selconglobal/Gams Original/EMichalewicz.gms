Set j /0*4/;

Parameter cost , sint ;
          cost = cos(PI/6.0);
          sint = sin(PI/6.0);

Scalar m_s / 10 / ;


*$macro y    ((x[j]*cost-x[j+1]*sint)$((mod(ord(j)-1,2)=0)and(ord(j) lt card(j)))+(x[j-1]*sint+x[j]*cost)$((mod(ord(j)-1,2)=1)and(ord(j) lt card(j)))+x(j)$(ord(j)=card(j)))
*$macro obj  -Sum{j,sin(y)*power(sin((ord(j)-1+1)*y*y/PI),2.0*m_s)}

$macro y     ifthen(mod(ord(j)-1,2)=1, x[j-1]*sint+x[j]*cost, ifthen(ord(j)<card(j), x[j]*cost-x[j+1]*sint, x(j)))
$macro obj  -sum{j,sin(y)*power(sin((ord(j))*y*y/PI),2.0*m_s)}


Variable  x[j] , z;

x.lo['0'] =   0 ;
x.up['0'] =  PI ;
x.lo['1'] =   0 ;
x.up['1'] =  PI ;
x.lo['2'] =   0 ;
x.up['2'] =  PI ;
x.lo['3'] =   0 ;
x.up['3'] =  PI ;
x.lo['4'] =   0 ;
x.up['4'] =  PI ;

Equation
         Def_obj;

Def_obj..
    z  =e= obj ;

Model m /all/;

Solve m min z using dnlp;

$onDotL
File fx / EMichalewicz.txt /; fx.nd=4; fx.nw=13; put fx;
Scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));
z.l = obj ;

loop(j, put x.l(j)); put z.l /);
