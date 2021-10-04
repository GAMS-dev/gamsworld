$Set M 36

Set j /j1*j%M%/;
Set Left(j) /j2*j%M%/;

Parameter    dalpha ;   dalpha = 3.141527/18;
Parameter        p0 ;       p0 = 90;
Parameter        q0 ;       q0 = 0;
Parameter        r0 ;       r0 = 0;
Parameter        s0 ;       s0 = 0;
Parameter  alpha[j] ; alpha[j] = dalpha*(ord(j)-1);
Parameter     ca[j] ;    ca[j] = cos(alpha[j]);
Parameter     sa[j] ;    sa[j] = sin(alpha[j]);

Parameter
xpt[j] /j1     113   , j2     110.1 , j3     106.2 , j4     101.3 ,
        j5     95.4  , j6     88.8  , j7     81.6  , j8     74    ,
        j9     66.1  , j10    58.4  , j11    51    , j12    44.3  ,
        j13    38.7  , j14    34.5  , j15    32.4  , j16    32.9  ,
        j17    36.4  , j18    42.8  , j19    50.9  , j20    59    ,
        j21    65.8  , j22    71.5  , j23    76.5  , j24    81.1  ,
        j25    85.6  , j26    90.2  , j27    94.6  , j28    98.9  ,
        j29    103   , j30    106.7 , j31    109.9 , j32    112.5 ,
        j33    114.4 , j34    115.5 , j35    115.7 , j36    114.9 /;

Parameter
ypt[j] /j1     40.2  , j2     46.8  , j3     53.3  , j4     59.4  ,
        j5     65    , j6     69.9  , j7     73.9  , j8     76.9  ,
        j9     78.9  , j10    79.8  , j11    79.7  , j12    78.5  ,
        j13    76.5  , j14    73.6  , j15    70.2  , j16    66    ,
        j17    60.9  , j18    54.3  , j19    45.8  , j20    36.1  ,
        j21    26.5  , j22    18.1  , j23    11.4  , j24     6.2  ,
        j25     2.6  , j26     0.3  , j27    -0.7  , j28    -0.6  ,
        j29     0.7  , j30     3.1  , j31     6.4  , j32    10.5  ,
        j33    15.5  , j34    21    , j35    27.1  , j36    33.6  /;

Positive Variable  p1  , q1  , r1 , s1  ;

Variable  p[j]     , q[j]     ,  a[j] , b[j]     , c[j]  ,
           test[j] , ph[j]    ,
          calcx[j] , calcy[j] , ssum  , sql     , f ;

Equation Eq_5(j) ,
         Eq_6(j)  , Eq_7(j)  , Eq_8(j)  , Eq_9(j)  ,
         Eq_11(j) , Eq_12(j) ,  Eq_15(j) ,
         Eq_16(j) , Eq_17    , Eq_18    , Def_obj  ;


Eq_5(j)$Left(j)..  p[j] =e= p1*ca[j] - q1*sa[j] + p0*(1-ca[j]) + q0*sa[j] ;
Eq_6(j)$Left(j)..  q[j] =e= p1*sa[j] + q1*ca[j] + q0*(1-ca[j]) - p0*sa[j] ;

Eq_7(j)$Left(j)..     a[j] =e=  r0*s1 - s0*r1 - q1*r0 + p1*s0 + p[j]*q1 -p1*q[j] + q[j]*r1 - p[j]*s1;
Eq_8(j)$Left(j)..     b[j] =e= -r0*r1 - s0*s1 + p1*r0 + q1*s0 - p1*p[j] -q1*q[j] + p[j]*r1 + q[j]*s1;
Eq_9(j)$Left(j)..     c[j] =e= -r1*r0 - s1*s0 + p[j]*r0 + q[j]*s0 + p1*r1 +q1*s1 -
                                                           (p1*p1 + q1*q1 + p[j]*p[j] + q[j]*q[j])/2;
Eq_11(j)$Left(j).. test[j]*sqrt(a[j]*a[j] + b[j]*b[j]) =e= c[j];
Eq_12(j)$Left(j)..   ph[j] =e= arctan(-test[j])/sqrt(1-sqr(-test[j]))  -arctan(b[j]/a[j] ) ;

Eq_15(j)$Left(j).. calcx[j] =e= xpt['j1']*cos(ph[j]) - ypt['j1']*sin(ph[j]) + p[j] -p1*cos(ph[j]) + q1*sin(ph[j]);
Eq_16(j)$Left(j).. calcy[j] =e= xpt['j1']*sin(ph[j]) + ypt['j1']*cos(ph[j]) + q[j] -p1*sin(ph[j]) - q1*cos(ph[j]);
Eq_17..                ssum =e= sum{j$Left(j),( sqr(calcx[j]-xpt[j]) + sqr(calcy[j]-ypt[j]))};
Eq_18..                 sql =e= sqr(r1-r0) + sqr(s1-s0) + sqr(r1-p1) + sqr(s1-q1) + sqr(p1-p0) + sqr(q1-q0);

Def_obj.. f =e= ssum/100 + sql/62500;


a.lo[j] = 0.00000001;

p1.up = 150 ;
q1.up =  50;
r1.up = 100 ;
s1.up = 100 ;

* Below AMPL solutions
p1.l = 136.0 ;
q1.l =   0.0 ;
r1.l =  74.8 ;
s1.l =  75.7 ;

p1.lo =  0.0010 ;
q1.lo =  0.0010 ;
r1.lo =  0.0010 ;
s1.lo =  0.0010 ;


test.up[j] = 0.999999;
test.lo[j] =-0.999999;

Model s357 /all/;

Solve s357 using nlp minimazing f;

Display f.l;
Display p1.l;
Display q1.l;
Display r1.l;
Display s1.l;
