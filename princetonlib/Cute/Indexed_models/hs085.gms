* Cute AMPL model  (translation to GAMS)
*
$Set N 5
Set i /i1*i%N%/;
$Set M 17
Set j /j2*j%M%/;


parameter a(j)  /j2       17.505  , j3       11.275 ,  j4      214.228 ,
                 j5        7.458  , j6         .961 ,  j7        1.612 ,
                 j8         .146  , j9      107.99  , j10      922.693 ,
                j11      926.832  , j12      18.766 , j13     1072.163 ,
                j14     8961.448  , j15        .063 , j16    71084.33  ,
                j17  2802713        /;

parameter b(j)  /j2     1053.6667 , j3       35.03  ,  j4      665.585 ,
                 j5      584.463  , j6      265.916 ,  j7        7.046 ,
                 j8         .222  , j9      273.366 , j10     1286.105 ,
                j11     1444.046  ,j12      537.141 , j13     3247.039 ,
                j14    26844.086  ,j15         .386 , j16   140000     ,
                j17 12146108       /;

parameter c10 ;  c10 = 12.3/752.3;

Variable x(i) ,y1 ,c1 ,y2 ,c2 ,c3 ,y3 ,y4 ,c4 ,
               c5 ,c6 ,c7 ,y5 ,y6 ,c8 ,y7 ,y8 ,
               c9 ,y9 ,y10,y11,c11,c12,y12,y13,
               y14,c13,y15,y16,c14,y17,c15,c16,
               c17,obj ;
Equation Eq_01 , Eq_02 , Eq_03 , Eq_04 , Eq_05 ,
         Eq_06 , Eq_07 , Eq_08 , Eq_09 , Eq_10 ,
         Eq_11 , Eq_12 , Eq_13 , Eq_14 , Eq_15 ,
         Eq_16 , Eq_17 , Eq_18 , Eq_19 , Eq_20 ,
         Eq_21 , Eq_22 , Eq_23 , Eq_24 , Eq_25 ,
         Eq_26 , Eq_27 , Eq_28 , Eq_29 , Eq_30 ,
         Eq_31 , Eq_32 , Eq_33 ,
          con1 , con46 , con47 , con48 , Def_obj;

Eq_01.. y1  =e= x['i2']+x['i3']+41.6                                 ;
Eq_02.. c1  =e= .024*x['i4']-4.62                                    ;
Eq_03.. y2  =e= 12.5/c1+12                                           ;
Eq_04.. c2  =e= .0003535*sqr(x['i1'])+.5311*x['i1']+.08705*y2*x['i1'];
Eq_05.. c3  =e= .052*x['i1']+78+.002377*y2*x['i1']                   ;
Eq_06.. y3  =e= c2/c3                                                ;
Eq_07.. y4  =e= 19*y3                                                ;
Eq_08.. c4  =e= 0.04782*(x['i1']-y3)+.1956*sqr(x['i1']-y3)/x['i2']+
                                                    .6376*y4+1.594*y3;
Eq_09.. c5  =e= 100*x['i2']                                          ;
Eq_10.. c6  =e= x['i1']-y3-y4                                        ;
Eq_11.. c7  =e= .95-c4/c5                                            ;
Eq_12.. y5  =e= c6*c7                                                ;
Eq_13.. y6  =e= x['i1']-y5-y4-y3                                     ;
Eq_14.. c8  =e= (y5+y4)*.995                                         ;
Eq_15.. y7  =e= c8/y1                                                ;
Eq_16.. y8  =e= c8/3798                                              ;
Eq_17.. c9  =e= y7-.0663*y7/y8-.3153                                 ;
Eq_18.. y9  =e= 96.82/c9+.321*y1                                     ;
Eq_19.. y10 =e= 1.29*y5+1.258*y4+2.29*y3+1.71*y6                     ;
Eq_20.. y11 =e= 1.71*x['i1']-.452*y4+.58*y3                          ;
Eq_21.. c11 =e= 1.75*y2*.995*x['i1']                                 ;
Eq_22.. c12 =e= .995*y10+1998                                        ;
Eq_23.. y12 =e= c10*x['i1']+c11/c12                                  ;
Eq_24.. y13 =e= c12-1.75*y2                                          ;
Eq_25.. y14 =e= 3623+64.4*x['i2']+58.4*x['i3']+146312/(y9+x['i5'])   ;
Eq_26.. c13 =e= .995*y10+60.8*x['i2']+48*x['i4']-.1121*y14-5095      ;
Eq_27.. y15 =e= y13/c13                                              ;
Eq_28.. y16 =e= 148000-331000*y15+40*y13-61*y15*y13                  ;
Eq_29.. c14 =e= 2324*y10-28740000*y2                                 ;
Eq_30.. y17 =e= 14130000-1328*y10-531*y11+c14/c12                    ;
Eq_31.. c15 =e= y13/y15-y13/.52                                      ;
Eq_32.. c16 =e= 1.104-.72*y15                                        ;
Eq_33.. c17 =e= y9+x['i5']                                           ;

con1..  1.5*x['i2']-x['i3']       =g=         0                      ;
con46.. y4-.28/.72*y5             =g=         0                      ;
con47.. 21-3496*y2/c12            =g=         0                      ;
con48.. 62212/c17-110.6-y1        =g=         0                      ;

Def_obj.. obj=e= -5.843e-7*y17+1.17e-4*y14+2.358e-5*y13+
                  1.502e-6*y16+0.0321 *y12+.004324*y5+
                  1e-4*c15/c16+37.48*y2/c12+.1365;


 x.lo['i1']  =     704.4148   ;    x.up['i1']  =     906.3855   ;
 x.lo['i2']  =     68.6       ;    x.up['i2']  =     288.88     ;
 x.lo['i3']  =     0          ;    x.up['i3']  =     134.75     ;
 x.lo['i4']  =     193        ;    x.up['i4']  =     287.0966   ;
 x.lo['i5']  =     25         ;    x.up['i5']  =     84.1988    ;

 y1.lo       =   213.1        ;    y1.up       =  405.23        ;
 y2.lo       =   a['j2']      ;    y2.up       =  b['j2']       ;
 y3.lo       =   a['j3']      ;    y3.up       =  b['j3']       ;
 y4.lo       =   a['j4']      ;    y4.up       =  b['j4']       ;
 y5.lo       =   a['j5']      ;    y5.up       =  b['j5']       ;
 y6.lo       =   a['j6']      ;    y6.up       =  b['j6']       ;
 y7.lo       =   a['j7']      ;    y7.up       =  b['j7']       ;
 y8.lo       =   a['j8']      ;    y8.up       =  b['j8']       ;
 y9.lo       =   a['j9']      ;    y9.up       =  b['j9']       ;
 y10.lo      =   a['j10']     ;    y10.up      =  b['j10']      ;
 y11.lo      =   a['j11']     ;    y11.up      =  b['j11']      ;
 y12.lo      =   a['j12']     ;    y12.up      =  b['j12']      ;
 y13.lo      =   a['j13']     ;    y13.up      =  b['j13']      ;
 y14.lo      =   a['j14']     ;    y14.up      =  b['j14']      ;
 y15.lo      =   a['j15']     ;    y15.up      =  b['j15']      ;
 y16.lo      =   a['j16']     ;    y16.up      =  b['j16']      ;
 y17.lo      =   a['j17']     ;    y17.up      =  b['j17']      ;


x.l['i1'] = 900;
x.l['i2'] = 80;
x.l['i3'] = 115;
x.l['i4'] = 267;
x.l['i5'] = 27;

*display "starting with optimal";
*x.l['i1'] = 705.1803;
*x.l['i2'] =  68.60005;
*x.l['i3'] = 102.90001;
*x.l['i4'] = 282.324999;
*x.l['i5'] = 37.5850413;

* Additional constrain in the GAMS model
c1.L  =0.0110;
*on basis of equation Eq_01
c3.L  =78.0  ;
*on basis of equation Eq_05
c5.L  =6860.0;
*on basis of equation Eq_09
c9.L  =0.500 ;
*on basis of equation Eq_17
c12.L =2800.0;
c12.up =3250.0;
*on basis of equation Eq_22
c13.L =2770  ;
*on basis of equation Eq_27
c17.L =130   ;
*on basis of equation Eq_33

c16.L =0.9;
*on basis of equation Eq_28
* y15must be less then 0.194
* it is mean that   0.90
*on basis of equation Eq_32

Model hs085  /all/;

Solve hs085 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l +1.90513375;
display obj.l               ;

display y1.l ;
display y2.l ;
display y3.l ;
display y4.l ;
display y5.l ;
display y6.l ;
display y7.l ;
display y8.l ;
display y9.l ;
display y10.l ;
display y11.l ;
display y12.l ;
display y13.l ;
display y14.l ;
display y15.l ;
display y16.l ;
display y17.l ;
