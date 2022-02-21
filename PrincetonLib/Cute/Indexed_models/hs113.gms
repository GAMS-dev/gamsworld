* Cute AMPL model  (translation to GAMS)
*
$Set N 10
Set i /i1*i%N%/;

Variable x[i] ,  obj ;

Equation c1 ,c2 ,c3 ,c4 ,c5 ,c6 ,c7 ,c8 , Def_obj     ;


c1.. 105- 4*x['i1']-5*x['i2']+3*x['i7']-9*x['i8']                          =g=0;
c2..    -10*x['i1']+8*x['i2']+17*x['i7']-2*x['i8']                         =g=0;
c3..      8*x['i1']-2*x['i2']-5*x['i9']+2*x['i10']+12                      =g=0;
c4..    -3*sqr(x['i1']-2)-4*sqr(x['i2']-3)-2*sqr(x['i3'])+7*x['i4']+120    =g=0;
c5..    -5* sqr(x['i1'])-8*x['i2']-sqr(x['i3']-6)+2*x['i4']+40             =g=0;
c6..  -0.5*sqr(x['i1']-8)-2*sqr(x['i2']-4)-3*sqr(x['i5'])+x['i6']+30       =g=0;
c7..       -sqr(x['i1'])-2*sqr(x['i2']-2)+2*x['i1']*x['i2']-
                                                       14*x['i5']+6*x['i6']=g=0;
c8..      3*x['i1']-6*x['i2']-12*sqr(x['i9']-8)+7*x['i10']                 =g=0;

Def_obj..  obj=e= sqr(x['i1'])+sqr(x['i2'])+x['i1']*x['i2']   -
                   14*x['i1'] -16*x['i2']  +sqr(x['i3']-10)   +
                   4*sqr(x['i4']-5)        +sqr(x['i5']-3)    +
                   2*sqr(x['i6']-1)        +5*sqr(x['i7'])    +
                   7*sqr(x['i8']-11)       +2*sqr(x['i9']-10) +
                     sqr(x['i10']-7)       + 45                ;

x.l['i1']   =  2 ;
x.l['i2']   =  3 ;
x.l['i3']   =  5 ;
x.l['i4']   =  5 ;
x.l['i5']   =  1 ;
x.l['i6']   =  2 ;
x.l['i7']   =  7 ;
x.l['i8']   =  3 ;
x.l['i9']   =  6 ;
x.l['i10']  = 10 ;

Model hs113  /all/;

Solve hs113 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l -24.3062091   ;
display obj.l               ;
