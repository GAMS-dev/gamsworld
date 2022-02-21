$Set N 15
Set i/i1*i%N%/;

Parameter l(i) ; l[i]    =  0 ; l['i1'] =  8 ;
                 l['i2'] = 43 ; l['i3'] =  3 ;

Parameter u(i) ;  u['i1'] =  21 ; u['i2']  =  57 ;  u['i3'] =  16 ;
                  u['i4'] =  90 ; u['i5']  = 120 ;  u['i6'] =  60 ;
                  u['i7'] =  90 ; u['i8']  = 120 ;  u['i9'] =  60 ;
                 u['i10'] =  90 ; u['i11'] = 120 ; u['i12'] =  60 ;
                 u['i13'] =  90 ; u['i14'] = 120 ; u['i15'] =  60 ;

Variable x(i) , obj ;
Equation  constr1_04 ,constr2_05 ,constr3_06 ,
          constr1_07 ,constr2_08 ,constr3_09 ,
          constr1_10 ,constr2_11 ,constr3_12 ,
          constr1_13 ,constr2_14 ,constr3_15 ,
          c_04       ,c_05       ,c_06       ,
          c_07       ,c_08       ,c_09       ,
          c_10       ,c_11       ,c_12       ,
          c_13       ,c_14       ,c_15       ,

          constr4    , constr5    , constr6    ,
          constr7    , constr8    , Def_obj    ;

constr1_04..  x['i4'] - x['i1']  + 7 =l= 13 ;
constr2_05..  x['i5'] - x['i2']  + 7 =l= 14 ;
constr3_06..  x['i6'] - x['i3']  + 7 =l= 13 ;
constr1_07..  x['i7'] - x['i4']  + 7 =l= 13 ;
constr2_08..  x['i8'] - x['i5']  + 7 =l= 14 ;
constr3_09..  x['i9'] - x['i6']  + 7 =l= 13 ;
constr1_10.. x['i10'] - x['i7']  + 7 =l= 13 ;
constr2_11.. x['i11'] - x['i8']  + 7 =l= 14 ;
constr3_12.. x['i12'] - x['i9']  + 7 =l= 13 ;
constr1_13.. x['i13'] - x['i10'] + 7 =l= 13 ;
constr2_14.. x['i14'] - x['i11'] + 7 =l= 14 ;
constr3_15.. x['i15'] - x['i12'] + 7 =l= 13 ;

c_04.. 0 =l=  x['i4'] - x['i1']  + 7 ;
c_05.. 0 =l=  x['i5'] - x['i2']  + 7 ;
c_06.. 0 =l=  x['i6'] - x['i3']  + 7 ;
c_07.. 0 =l=  x['i7'] - x['i4']  + 7 ;
c_08.. 0 =l=  x['i8'] - x['i5']  + 7 ;
c_09.. 0 =l=  x['i9'] - x['i6']  + 7 ;
c_10.. 0 =l= x['i10'] - x['i7']  + 7 ;
c_11.. 0 =l= x['i11'] - x['i8']  + 7 ;
c_12.. 0 =l= x['i12'] - x['i9']  + 7 ;
c_13.. 0 =l= x['i13'] - x['i10'] + 7 ;
c_14.. 0 =l= x['i14'] - x['i11'] + 7 ;
c_15.. 0 =l= x['i15'] - x['i12'] + 7 ;

constr4..  x['i1'] +  x['i2'] +  x['i3'] =g=  60 ;
constr5..  x['i4'] +  x['i5'] +  x['i6'] =g=  50 ;
constr6..  x['i7'] +  x['i8'] +  x['i9'] =g=  70 ;
constr7.. x['i10'] + x['i11'] + x['i12'] =g=  85 ;
constr8.. x['i13'] + x['i14'] + x['i15'] =g= 100 ;

Def_obj..
obj=e= (2.3*x['i1']          + 0.0001*sqr(x['i1'])  + 1.7*x['i2'] +
        0.0001*sqr(x['i2'])  + 2.2*x['i3']          + 0.00015*sqr(x['i3']))+
       (2.3*x['i4']          + 0.0001*sqr(x['i4'])  + 1.7*x['i5'] +
        0.0001*sqr(x['i5'])  + 2.2*x['i6']          + 0.00015*sqr(x['i6']))+
       (2.3*x['i7']          + 0.0001*sqr(x['i7'])  + 1.7*x['i8'] +
        0.0001*sqr(x['i8'])  + 2.2*x['i9']          + 0.00015*sqr(x['i9']))+
       (2.3*x['i10']         + 0.0001*sqr(x['i10']) + 1.7*x['i11'] +
        0.0001*sqr(x['i11']) + 2.2*x['i12']         + 0.00015*sqr(x['i12']))+
       (2.3*x['i13']         + 0.0001*sqr(x['i13']) + 1.7*x['i14'] +
        0.0001*sqr(x['i14']) + 2.2*x['i15']         + 0.00015*sqr(x['i15'])) ;

x.lo(i) = l(i) ; x.up(i) = u(i) ;

x.l['i1']  = 20;
x.l['i2']  = 55;
x.l['i3']  = 15;
x.l['i4']  = 20;
x.l['i5']  = 60;
x.l['i6']  = 20;
x.l['i7']  = 20;
x.l['i8']  = 60;
x.l['i9']  = 20;
x.l['i10'] = 20;
x.l['i11'] = 60;
x.l['i12'] = 20;
x.l['i13'] = 20;
x.l['i14'] = 60;
x.l['i15'] = 20;

*"optimal solution as starting point ";
*x.fx['i1']  =  8;
*x.fx['i2']  = 49;
*x.fx['i3']  =  3;
*x.fx['i4']  =  1;
*x.fx['i5']  = 56;
*x.fx['i6']  =  0;
*x.fx['i7']  =  1;
*x.fx['i8']  = 63;
*x.fx['i9']  =  6;
*x.fx['i10'] =  3;
*x.fx['i11'] = 70;
*x.fx['i12'] = 12;
*x.fx['i13'] =  5;
*x.fx['i14'] = 77;
*x.fx['i15'] = 18;

Model hs118 /all/ ;

Solve hs118 using nlp minimazing obj ;

obj.l = obj.l - 664.8204500;
display x.l;
display obj.l;
