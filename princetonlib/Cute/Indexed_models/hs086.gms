* Cute AMPL model  (translation to GAMS)
*
$Set N 10
Set i /i1*i%N%/;

$Set M 5
Set Left1(i) /i1*i%M%/;

Alias(j,i);

Set Left2(j) /i1*i%M%/;

parameter d(j) / i1    4    ,i2    8 , i3   10    , i4    6 , i5    2  /;
parameter e(j) / i1  -15    ,i2  -27 , i3  -36    , i4  -18 , i5  -12  /;
parameter b(i) / i1  -40    ,i2   -2 , i3   -0.25 , i4   -4 , i5   -4 ,
                 i6   -1    ,i7  -40 , i8  -60    , i9    5 ,i10    1  /;

parameter a(i,j) ;
   a['i1','i1']  =  -16  ;a['i1','i2']  =    2  ;a['i1','i3']  =    0  ;
   a['i1','i4']  =    1  ;a['i1','i5']  =    0  ;a['i2','i1']  =    0  ;
   a['i2','i2']  =   -2  ;a['i2','i3']  =    0  ;a['i2','i4']  =    4  ;
   a['i2','i5']  =    2  ;a['i3','i1']  =   -3.5;a['i3','i2']  =    0  ;
   a['i3','i3']  =    2  ;a['i3','i4']  =    0  ;a['i3','i5']  =    0  ;
   a['i4','i1']  =    0  ;a['i4','i2']  =   -2  ;a['i4','i3']  =    0  ;
   a['i4','i4']  =   -4  ;a['i4','i5']  =   -1  ;a['i5','i1']  =    0  ;
   a['i5','i2']  =   -9  ;a['i5','i3']  =   -2  ;a['i5','i4']  =    1  ;
   a['i5','i5']  =   -2.8;a['i6','i1']  =    2  ;a['i6','i2']  =    0  ;
   a['i6','i3']  =   -4  ;a['i6','i4']  =    0  ;a['i6','i5']  =    0  ;
   a['i7','i1']  =   -1  ;a['i7','i2']  =   -1  ;a['i7','i3']  =   -1  ;
   a['i7','i4']  =   -1  ;a['i7','i5']  =   -1  ;a['i8','i1']  =   -1  ;
   a['i8','i2']  =   -2  ;a['i8','i3']  =   -3  ;a['i8','i4']  =   -2  ;
   a['i8','i5']  =   -1  ;a['i9','i1']  =    1  ;a['i9','i2']  =    2  ;
   a['i9','i3']  =    3  ;a['i9','i4']  =    4  ;a['i9','i5']  =    5  ;
  a['i10','i1']  =    1  ;a['i10','i2'] =    1  ;a['i10','i3'] =    1  ;
  a['i10','i4']  =    1  ;a['i10','i5'] =    1  ;

parameter c(i,j) ;
c['i1','i1']=  30 ; c['i1','i2']= -20 ; c['i1','i3']= -10 ; c['i1','i4']=  32 ;
c['i1','i5']= -10 ; c['i2','i1']= -20 ; c['i2','i2']=  39 ; c['i2','i3']=  -6 ;
c['i2','i4']= -31 ; c['i2','i5']=  32 ; c['i3','i1']= -10 ; c['i3','i2']=  -6 ;
c['i3','i3']=  10 ; c['i3','i4']=  -6 ; c['i3','i5']= -10 ; c['i4','i1']=  32 ;
c['i4','i2']= -31 ; c['i4','i3']=  -6 ; c['i4','i4']=  39 ; c['i4','i5']= -20 ;
c['i5','i1']= -10 ; c['i5','i2']=  32 ; c['i5','i3']= -10 ; c['i5','i4']= -20 ;
c['i5','i5']=  30 ;


Positive Variable x[j] ;
         Variable  obj ;

Equation constr1(i) ,
         Def_obj     ;

constr1(i).. sum{j$Left2(j),(a[i,j]*x[j])} - b[i] =g= 0;

Def_obj..  obj=e= sum{i$Left1(i),(sum{j$Left2(j),(c[i,j]*x[i]*x[j])})} +
                  sum{j$Left2(j),(e[j]*x[j]+d[j]*power(x[j],3))}           ;
x.l['i1'] = 0;
x.l['i2'] = 0;
x.l['i3'] = 0;
x.l['i4'] = 0;
x.l['i5'] = 1;

*x.l['i1'] = 0.3;
*x.l['i2'] = 0.33346761;
*x.l['i3'] = 0.4;
*x.l['i4'] = 0.42831010;
*x.l['i5'] = 0.22396487;

Model hs086  /all/;

Solve hs086 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l + 32.34867897 ;
display obj.l               ;
