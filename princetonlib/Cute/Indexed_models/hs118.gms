* Cute AMPL model  (translation to GAMS)
*

$Set N 15
Set i /i1*i%N%/;

Set basis(i)  ; basis(i) = yes$(mod(ord(i),3) = 0 ); basis('i15') = NO;

parameter l(i) / i1   8 , i2   43 ,  i3   3 ,  i4   0 ,  i5   0
                 i6   0 , i7    0 ,  i8   0 ,  i9   0 , i10   0 ,
                i11   0 , i12   0 , i13   0 , i14   0 , i15   0 /;


parameter u(i) / i1  21 , i2   57 ,  i3  16 ,  i4  90 ,  i5 120 ,
                 i6  60 , i7   90 ,  i8 120 ,  i9  60 , i10  90 ,
                i11 120 , i12  60 , i13  90 , i14 120 , i15  60 /;

Variable x(i) , obj ;

Equation c_1a(i) ,c_1b(i) ,c_2a(i) ,c_2b(i) ,c_3a(i) ,c_3b(i)   ,
         c_4     ,c_5     ,c_6     ,c_7     ,c_8     ,Def_obj ;

c_1a(i)$basis(i)..       0 =l= x[i+1] - x[i-2] + 7          ;
c_1b(i)$basis(i)..             x[i+1] - x[i-2] + 7  =l=  13 ;
c_2a(i)$basis(i)..       0 =l= x[i+2] - x[i-1] + 7          ;
c_2b(i)$basis(i)..             x[i+2] - x[i-1] + 7  =l=  14 ;
c_3a(i)$basis(i)..       0 =l= x[i+3] - x[i  ] + 7          ;
c_3b(i)$basis(i)..             x[i+3] - x[i  ] + 7  =l=  13 ;

c_4..                 x['i1'] +  x['i2'] +  x['i3'] =g=  60 ;
c_5..                 x['i4'] +  x['i5'] +  x['i6'] =g=  50 ;
c_6..                 x['i7'] +  x['i8'] +  x['i9'] =g=  70 ;
c_7..                x['i10'] + x['i11'] + x['i12'] =g=  85 ;
c_8..                x['i13'] + x['i14'] + x['i15'] =g= 100 ;

Def_obj.. obj=e= sum{i$basis(i), ( 2.3    *    x[i+1]  +
                                  0.0001 * sqr(x[i+1]) +
                                  1.7    *     x[i+2]  +
                                  0.0001 * sqr(x[i+2]) +
                                  2.2    *     x[i+3]  +
                                  0.00015* sqr(x[i+3])  ) }+

                                 ( 2.3    *    x['i1']  +
                                  0.0001 * sqr(x['i1']) +
                                  1.7    *     x['i2']  +
                                  0.0001 * sqr(x['i2']) +
                                  2.2    *     x['i3']  +
                                  0.00015* sqr(x['i3'])  ) ;

x.lo[i] =l[i] ;
x.up[i] =u[i] ;

 x.l['i1'] = 20 ;
 x.l['i2'] = 55 ;
 x.l['i3'] = 15 ;
 x.l['i4'] = 20 ;
 x.l['i5'] = 60 ;
 x.l['i6'] = 20 ;
 x.l['i7'] = 20 ;
 x.l['i8'] = 60 ;
 x.l['i9'] = 20 ;
x.l['i10'] = 20 ;
x.l['i11'] = 60 ;
x.l['i12'] = 20 ;
x.l['i13'] = 21 ;
x.l['i14'] = 60 ;
x.l['i15'] = 20 ;


Model hs118  /all/;

Solve hs118 using nlp minimize obj;

display   basis             ;
display   x.l               ;

obj.l = obj.l - 664.8204500 ;
display obj.l               ;
