* Cute AMPL model  (translation to GAMS)
*
* AMPL Model by Hande Y. Benson
*
* Copyright (C) 2001 Princeton University
* All Rights Reserved
*
* Permission to use, copy, modify, and distribute this software and
* its documentation for any purpose and without fee is hereby
* granted, provided that the above copyright notice appear in all
* copies and that the copyright notice and this
* permission notice appear in all supporting documentation.

*   classification LQI2-RN-157-134

$Set NN 60
Set i /i1*i%NN%/;
$Set MM 48
Set j /j1*j%MM%/;
$Set KK 21
Set K /k1*k%KK%/;
$Set LL  7
Set l /l1*l%LL%/;
$Set OO  5
Set m /m1*m%OO%/;

$Set DD  37
Set n /n1*n%DD%/;

parameter  Region[k]
 /k1  -8.90000E+00, k2  -3.30000E+00, k3  -5.40000E+00,
  k4  -1.45000E+01, k5  -2.20000E+00, k6  -5.80000E+00,
  k7  -3.50000E+00, k8  -1.70000E+00, k9  -1.50000E+00,
 k10  -8.00000E-01,k11  -1.30000E+00,k12  -2.30000E+00,
 k13  -2.20000E+00,k14  -1.10000E+00,k15  -7.00000E-01,
 k16  -1.50000E+00,k17  -4.30000E+00,k18  -1.50000E+00,
 k19  -4.30000E+00,k20  -1.10000E+00,k21  -5.00000E+00 / ;
parameter  lopi[j]
 /j1  0.00000E+00, j2  1.60000E+03, j3  0.00000E+00, j4  1.60000E+03,
  j5  1.60000E+03, j6  1.60000E+03, j7  0.00000E+00, j8  1.60000E+03,
  j9  1.60000E+03,j10  0.00000E+00,j11  1.60000E+03,j12  0.00000E+00,
 j13  1.60000E+03,j14  1.60000E+03,j15  0.00000E+00,j16  1.60000E+03,
 j17  1.60000E+03,j18  1.60000E+03,j19  0.00000E+00,j20  1.60000E+03,
 j21  1.60000E+03,j22  1.60000E+03,j23  1.60000E+03,j24  0.00000E+00,
 j25  1.60000E+03,j26  1.60000E+03,j27  0.00000E+00,j28  1.60000E+03,
 j29  0.00000E+00,j30  1.60000E+03,j31  1.60000E+03,j32  0.00000E+00,
 j33  1.60000E+03,j34  0.00000E+00,j35  1.60000E+03,j36  1.60000E+03,
 j37  0.00000E+00,j38  1.60000E+03,j39  1.60000E+03,j40  1.60000E+03,
 j41  1.60000E+03,j42  1.60000E+03,j43  1.60000E+03,j44  1.60000E+03,
 j45  1.60000E+03,j46  1.60000E+03,j47  1.60000E+03,j48  1.60000E+03/;

parameter  hipi[j]
 /j1  6.40000E+03, j2  6.40000E+03, j3  6.40000E+03, j4  6.40000E+03,
  j5  6.40000E+03, j6  6.40000E+03, j7  6.40000E+03, j8  6.40000E+03,
  j9  6.40000E+03,j10  6.40000E+03,j11  6.40000E+03,j12  6.40000E+03,
 j13  6.40000E+03,j14  6.40000E+03,j15  6.40000E+03,j16  6.40000E+03,
 j17  6.40000E+03,j18  6.40000E+03,j19  6.40000E+03,j20  6.40000E+03,
 j21  4.48900E+03,j22  6.40000E+03,j23  6.40000E+03,j24  6.40000E+03,
 j25  6.40000E+03,j26  6.40000E+03,j27  6.40000E+03,j28  6.40000E+03,
 j29  6.40000E+03,j30  6.40000E+03,j31  6.40000E+03,j32  6.40000E+03,
 j33  6.40000E+03,j34  6.40000E+03,j35  6.40000E+03,j36  6.40000E+03,
 j37  4.48900E+03,j38  6.40000E+03,j39  6.40000E+03,j40  6.40000E+03,
 j41  6.40000E+03,j42  6.40000E+03,j43  6.40000E+03,j44  4.48900E+03,
 j45  6.40000E+03,j46  6.40000E+03,j47  6.40000E+03,j48  6.40000E+03 /;

parameter  hisupply[l];
hisupply['l4']=4.80000E+00;
hisupply['l5']=2.45000E+01;
hisupply['l6']=1.32000E+01;

*
* /
* l1 1.00000E+30, l2 1.00000E+30, l3 1.00000E+30,
*  l4 4.80000E+00, l5 2.45000E+01, l6 1.32000E+01,
* l7 1.00000E+30
*/;
*

parameter  loflow;   loflow:=-361.167;
parameter  hiflow;   hiflow:= 361.167;
parameter  loProd[m] / m1 2.33333E+00,m2 4.92222E+00,m3 1.31333E+01,
                       m4 9.55556E+00,m5 6.06667E+00 /;
parameter  hiProd[m] / m1 6.41667E+00,m2 1.35361E+01,m3 3.61167E+01,
                       m4 2.62778E+01,m5 1.66833E+01 /;

Variable Produc[m],Pi[j],Flow[i],Supply[l],Demand[n],cost;

Equation node1, node2, node3, node4, node5, node6, node7,
         node8, node9,node10,node11,node12,node13,node14,
        node15,node16,node17,node18,node19,node20,node21,
        node22,node23,node24,node25,node26,node27,node28,
        node29,node30,node31,node32,node33,node34,node35,
        node36,node37,node38,node39,node40,node41,node42,
        node43,node44,node45,node46,node47,node48,

         arc_1, arc_2, arc_3, arc_4, arc_5, arc_6, arc_7,
         arc_8, arc_9,arc_10,arc_11,arc_12,arc_13,arc_14,
        arc_15,arc_16,arc_17,arc_18,arc_19,arc_20,arc_21,
        arc_22,arc_23,arc_24,arc_25,arc_26,arc_27,arc_28,
        arc_29,arc_30,arc_31,arc_32,arc_33,arc_34,arc_35,
        arc_36,arc_37,arc_38,arc_39,arc_40,arc_41,arc_42,
        arc_43,arc_44,arc_45,arc_46,arc_47,arc_48,arc_49,
        arc_50,arc_51,arc_52,arc_53,arc_54,arc_55,arc_56,
        arc_57,arc_58,arc_59,arc_60,

         region1, region2, region3, region4, region5, region6, region7,
         region8, region9,region10,region11,region12,region13,region14,
        region15,region16,region17,region18,region19,region20,region21,
           prod1,   prod2,   prod3,   prod4,   prod5, Def_obj;

 node1..    Flow['i1'] -Flow['i16']-Flow['i56']                           =e=0;
 node2..   -Flow['i1']                         +Demand['n7']              =e=0;
 node3..    Flow['i2'] +Flow['i55']                         -Supply['l4'] =e=0;
 node4..   -Flow['i2']                         +Demand['n5']              =e=0;
 node5..    Flow['i3']                         +Demand['n6']              =e=0;
 node6..   -Flow['i3'] +Flow['i4']             +Demand['n8']              =e=0;
 node7..   -Flow['i4'] -Flow['i35']+Flow['i36']-
                        Flow['i47']+Flow['i48']                           =e=0;
 node8..    Flow['i5'] +Flow['i9']             +Demand['n21']-Supply['l5']=e=0;
 node9..   -Flow['i5'] +Flow['i6']             +Demand['n22']             =e=0;
 node10..  -Flow['i6'] +Flow['i7'] -Flow['i8']                            =e=0;
 node11..  -Flow['i7']                         +Demand['n9']              =e=0;
 node12..   Flow['i8'] -Flow['i10']+Flow['i11']                           =e=0;
 node13..  -Flow['i9'] +Flow['i10']            +Demand['n23']             =e=0;
 node14..  -Flow['i11']+Flow['i12']            +Demand['n24']             =e=0;
 node15..  -Flow['i12']-Flow['i15']+Flow['i16']                           =e=0;
 node16..   Flow['i13']-Flow['i36']-Flow['i48']
                                   -Flow['i54']+Demand['n10']             =e=0;
 node17..  -Flow['i13']+Flow['i14']            +Demand['n25']             =e=0;
 node18..  -Flow['i14']+Flow['i15']            +Demand['n26']             =e=0;
 node19..   Flow['i17']+Flow['i27']+Flow['i40']                           =e=0;
 node20..  -Flow['i17']+Flow['i18']            +Demand['n27']             =e=0;
 node21..  -Flow['i18']+Flow['i19']            +Demand['n28']-Supply['l1']=e=0;
 node22..  -Flow['i19']                        +Demand['n30']
                                               +Demand['n31']             =e=0;
 node23..   Flow['i20']                        +Demand['n36']
                                               +Demand['n37']-Supply['l6']=e=0;
 node24..  -Flow['i20']+Flow['i21']-
                        Flow['i33']-Flow['i46']                           =e=0;
 node25..  -Flow['i21']+Flow['i22']            +Demand['n33']             =e=0;
 node26..  -Flow['i22']+Flow['i23']            +Demand['n34']             =e=0;
 node27..  -Flow['i23']-Flow['i24']+Flow['i34']                           =e=0;
 node28..   Flow['i24']-Flow['i25']+
                        Flow['i26']+Flow['i39']+Demand['n19']             =e=0;
 node29..   Flow['i25']-Flow['i52']+Flow['i53']                           =e=0;
 node30..  -Flow['i26']-Flow['i30']+Flow['i31']-
            Flow['i39']-Flow['i43']+Flow['i44']+Demand['n18']             =e=0;
 node31..  -Flow['i27']+Flow['i28']-Flow['i40']+
                        Flow['i41']            +Demand['n29']             =e=0;
 node32..  -Flow['i28']+Flow['i29']-Flow['i41']+
                        Flow['i42']                                       =e=0;
 node33..  -Flow['i29']+Flow['i30']-Flow['i42']+
                        Flow['i43']            +Demand['n32']             =e=0;
 node34..  -Flow['i31']+Flow['i32']-
            Flow['i34']-Flow['i44']+Flow['i45']                           =e=0;
 node35..  -Flow['i32']+Flow['i33']-Flow['i45']+
                        Flow['i46']            +Demand['n35']             =e=0;
 node36..   Flow['i35']-Flow['i38']+Flow['i47']+Demand['n11']             =e=0;
 node37..   Flow['i37']+Flow['i49']                          -Supply['l7']=e=0;
 node38..  -Flow['i37']+Flow['i38']            +Demand['n2']              =e=0;
 node39..  -Flow['i49']+Flow['i50']            +Demand['n14']             =e=0;
 node40..  -Flow['i50']-Flow['i51']+Flow['i52']+Demand['n15']             =e=0;
 node41..   Flow['i51']                        +Demand['n17']-Supply['l3']=e=0;
 node42..  -Flow['i53']+Flow['i54']            +Demand['n12']             =e=0;
 node43..  -Flow['i55']+Flow['i56']            +Demand['n20']             =e=0;
 node44..   Flow['i57']+Flow['i59']            +Demand['n1'] -Supply['l2']=e=0;
 node45..  -Flow['i57']+Flow['i58']            +Demand['n3']              =e=0;
 node46..  -Flow['i58']                        +Demand['n4']              =e=0;
 node47..  -Flow['i59']+Flow['i60']            +Demand['n13']             =e=0;
 node48..  -Flow['i60']                        +Demand['n16']             =e=0;

arc_1..  (Flow['i1'] *abs(Flow['i1'])) -(0.697133)   *(Pi['j1'] -Pi['j2'])=e=0;
arc_2..  (Flow['i2'] *abs(Flow['i2'])) -(0.00265927) *(Pi['j3'] -Pi['j4']) =e=0;
arc_3..  (Flow['i3'] *abs(Flow['i3'])) -(0.172371)   *(Pi['j5'] -Pi['j6']) =e=0;
arc_4..  (Flow['i4'] *abs(Flow['i4'])) -(0.258556)   *(Pi['j6'] -Pi['j7']) =e=0;
arc_5..  (Flow['i5'] *abs(Flow['i5'])) -(0.190020)   *(Pi['j8'] -Pi['j9']) =e=0;
arc_6..  (Flow['i6'] *abs(Flow['i6'])) -(4.18044)    *(Pi['j9'] -Pi['j10'])=e=0;
arc_7..  (Flow['i7'] *abs(Flow['i7'])) -(0.321572)   *(Pi['j10']-Pi['j11'])=e=0;
arc_8..  (Flow['i8'] *abs(Flow['i8'])) +(0.0432263)  *(Pi['j10']-Pi['j12'])=e=0;
arc_9..  (Flow['i9'] *abs(Flow['i9'])) +(0.00611442) *(Pi['j13']-Pi['j8']) =e=0;
arc_10.. (Flow['i10']*abs(Flow['i10']))+(0.0116174)  *(Pi['j12']-Pi['j13'])=e=0;
arc_11.. (Flow['i11']*abs(Flow['i11']))-(0.259358)   *(Pi['j12']-Pi['j14'])=e=0;
arc_12.. (Flow['i12']*abs(Flow['i12']))-(0.259358)   *(Pi['j14']-Pi['j15'])=e=0;
arc_13.. (Flow['i13']*abs(Flow['i13']))-(0.0285181)  *(Pi['j16']-Pi['j17'])=e=0;
arc_14.. (Flow['i14']*abs(Flow['i14']))-(0.0399253)  *(Pi['j17']-Pi['j18'])=e=0;
arc_15.. (Flow['i15']*abs(Flow['i15']))-(0.0285181)  *(Pi['j18']-Pi['j15'])=e=0;
arc_16.. (Flow['i16']*abs(Flow['i16']))+(0.0181479)  *(Pi['j1'] -Pi['j15'])=e=0;
arc_17.. (Flow['i17']*abs(Flow['i17']))-(0.0864525)  *(Pi['j19']-Pi['j20'])=e=0;
arc_18.. (Flow['i18']*abs(Flow['i18']))-(0.0741022)  *(Pi['j20']-Pi['j21'])=e=0;
arc_19.. (Flow['i19']*abs(Flow['i19']))-(0.190020)   *(Pi['j21']-Pi['j22'])=e=0;
arc_20.. (Flow['i20']*abs(Flow['i20']))-(0.0235780)  *(Pi['j23']-Pi['j24'])=e=0;
arc_21.. (Flow['i21']*abs(Flow['i21']))-(4.18044)    *(Pi['j24']-Pi['j25'])=e=0;
arc_22.. (Flow['i22']*abs(Flow['i22']))-(0.522555)   *(Pi['j25']-Pi['j26'])=e=0;
arc_23.. (Flow['i23']*abs(Flow['i23']))-(1.39348)    *(Pi['j26']-Pi['j27'])=e=0;
arc_24.. (Flow['i24']*abs(Flow['i24']))+(0.696739)   *(Pi['j27']-Pi['j28'])=e=0;
arc_25.. (Flow['i25']*abs(Flow['i25']))+(0.418044)   *(Pi['j28']-Pi['j29'])=e=0;
arc_26.. (Flow['i26']*abs(Flow['i26']))-(0.000633373)*(Pi['j28']-Pi['j30'])=e=0;
arc_27.. (Flow['i27']*abs(Flow['i27']))+(0.0332711)  *(Pi['j31']-Pi['j19'])=e=0;
arc_28.. (Flow['i28']*abs(Flow['i28']))-(0.0998133)  *(Pi['j31']-Pi['j32'])=e=0;
arc_29.. (Flow['i29']*abs(Flow['i29']))-(0.0332711)  *(Pi['j32']-Pi['j33'])=e=0;
arc_30.. (Flow['i30']*abs(Flow['i30']))-(0.0332711)  *(Pi['j33']-Pi['j30'])=e=0;
arc_31.. (Flow['i31']*abs(Flow['i31']))-(0.00954957) *(Pi['j30']-Pi['j34'])=e=0;
arc_32.. (Flow['i32']*abs(Flow['i32']))-(0.0668470)  *(Pi['j34']-Pi['j35'])=e=0;
arc_33.. (Flow['i33']*abs(Flow['i33']))-(0.00607700) *(Pi['j35']-Pi['j24'])=e=0;
arc_34.. (Flow['i34']*abs(Flow['i34']))-(0.410240)   *(Pi['j27']-Pi['j34'])=e=0;
arc_35.. (Flow['i35']*abs(Flow['i35']))-(0.0998133)  *(Pi['j36']-Pi['j7']) =e=0;
arc_36.. (Flow['i36']*abs(Flow['i36']))-(0.0499067)  *(Pi['j7'] -Pi['j16'])=e=0;
arc_37.. (Flow['i37']*abs(Flow['i37']))-(0.348370)   *(Pi['j37']-Pi['j38'])=e=0;
arc_38.. (Flow['i38']*abs(Flow['i38']))-(0.696739)   *(Pi['j38']-Pi['j36'])=e=0;
arc_39.. (Flow['i39']*abs(Flow['i39']))-(0.0199627)  *(Pi['j28']-Pi['j30'])=e=0;
arc_40.. (Flow['i40']*abs(Flow['i40']))+(0.0193623)  *(Pi['j31']-Pi['j19'])=e=0;
arc_41.. (Flow['i41']*abs(Flow['i41']))-(0.0580870)  *(Pi['j31']-Pi['j32'])=e=0;
arc_42.. (Flow['i42']*abs(Flow['i42']))-(0.0193623)  *(Pi['j32']-Pi['j33'])=e=0;
arc_43.. (Flow['i43']*abs(Flow['i43']))-(0.0193623)  *(Pi['j33']-Pi['j30'])=e=0;
arc_44.. (Flow['i44']*abs(Flow['i44']))-(0.00954957) *(Pi['j30']-Pi['j34'])=e=0;
arc_45.. (Flow['i45']*abs(Flow['i45']))-(0.0668470)  *(Pi['j34']-Pi['j35'])=e=0;
arc_46.. (Flow['i46']*abs(Flow['i46']))-(0.00607700) *(Pi['j35']-Pi['j24'])=e=0;
arc_47.. (Flow['i47']*abs(Flow['i47']))-(2.09022)    *(Pi['j36']-Pi['j7']) =e=0;
arc_48.. (Flow['i48']*abs(Flow['i48']))-(0.696739)   *(Pi['j7'] -Pi['j16'])=e=0;
arc_49.. (Flow['i49']*abs(Flow['i49']))-(0.0143027)  *(Pi['j37']-Pi['j39'])=e=0;
arc_50.. (Flow['i50']*abs(Flow['i50']))-(0.109654)   *(Pi['j39']-Pi['j40'])=e=0;
arc_51.. (Flow['i51']*abs(Flow['i51']))-(0.522555)   *(Pi['j41']-Pi['j40'])=e=0;
arc_52.. (Flow['i52']*abs(Flow['i52']))-(0.321572)   *(Pi['j40']-Pi['j29'])=e=0;
arc_53.. (Flow['i53']*abs(Flow['i53']))-(0.164096)   *(Pi['j29']-Pi['j42'])=e=0;
arc_54.. (Flow['i54']*abs(Flow['i54']))-(0.136747)   *(Pi['j42']-Pi['j16'])=e=0;
arc_55.. (Flow['i55']*abs(Flow['i55']))-(0.0399253)  *(Pi['j3'] -Pi['j43'])=e=0;
arc_56.. (Flow['i56']*abs(Flow['i56']))+(0.0285181)  *(Pi['j1'] -Pi['j43'])=e=0;
arc_57.. (Flow['i57']*abs(Flow['i57']))-(0.182329)   *(Pi['j44']-Pi['j45'])=e=0;
arc_58.. (Flow['i58']*abs(Flow['i58']))-(0.182329)   *(Pi['j45']-Pi['j46'])=e=0;
arc_59.. (Flow['i59']*abs(Flow['i59']))-(0.0332711)  *(Pi['j44']-Pi['j47'])=e=0;
arc_60.. (Flow['i60']*abs(Flow['i60']))-(0.00998133) *(Pi['j47']-Pi['j48'])=e=0;

 region1..  -Demand['n1']                               =l= Region['k1']  ;
 region2..  -Demand['n2'] -Demand['n3'] -Demand['n4']   =l= Region['k2']  ;
 region3..  -Demand['n5'] -Demand['n6']                 =l= Region['k3']  ;
 region4..  -Demand['n7'] -Demand['n8'] -Demand['n9']-
             Demand['n10']-Demand['n11']                =l= Region['k4']  ;
 region5..  -Demand['n12']-Demand['n13']                =l= Region['k5']  ;
 region6..  -Demand['n14']-Demand['n15']-Demand['n16']  =l= Region['k6']  ;
 region7..  -Demand['n17']                              =l= Region['k7']  ;
 region8..  -Demand['n18']                              =l= Region['k8']  ;
 region9..  -Demand['n19']                              =l= Region['k9']  ;
 region10.. -Demand['n20']                              =l= Region['k10'] ;
 region11.. -Demand['n21']                              =l= Region['k11'] ;
 region12.. -Demand['n22']-Demand['n23']                =l= Region['k12'] ;
 region13.. -Demand['n24']-Demand['n25']-Demand['n26']  =l= Region['k13'] ;
 region14.. -Demand['n27']-Demand['n28']                =l= Region['k14'] ;
 region15.. -Demand['n29']                              =l= Region['k15'] ;
 region16.. -Demand['n30']                              =l= Region['k16'] ;
 region17.. -Demand['n31']                              =l= Region['k17'] ;
 region18.. -Demand['n32']                              =l= Region['k18'] ;
 region19.. -Demand['n33']-Demand['n34']-Demand['n35']  =l= Region['k19'] ;
 region20.. -Demand['n36']                              =l= Region['k20'] ;
 region21.. -Demand['n37']                              =l= Region['k21'] ;

 prod1.. Supply['l1']  - Produc['m1']         =l=0;
 prod2.. Supply['l2']  - Produc['m2']         =l=0;
 prod3.. Supply['l3']  - Produc['m3']         =l=0;
 prod4.. Supply['l4']+
         Supply['l5']+
         Supply['l6']  - Produc['m4']         =l=0;
 prod5.. Supply['l7']  - Produc['m5']         =l=0;

Def_obj..  cost=e= Produc['m1']+Produc['m2']+Produc['m3']+Produc['m4']+Produc['m5'];

Produc.lo[m]   = loProd[m]       ; Produc.up[m]  = hiProd[m];
Pi.lo[j]       = lopi[j]         ; Pi.up[j]      = hipi[j]  ;
Flow.lo[i]     = loflow          ; Flow.up[i]    = hiflow   ;

Supply.up['l4']=  hisupply['l4'] ;
Supply.up['l5']=  hisupply['l5'] ;
Supply.up['l6']=  hisupply['l6'] ;

*
Supply.lo[l]      =  0.0         ;
*

Demand.l[n]    =  0.0            ;
Supply.l[l]    =  0.0            ;
Pi.l[j]        =  0.0            ;
Produc.l[m]    =  0.0            ;

Flow.l['i1']   =      2.28416E+00;
Flow.l['i2']   =      1.28924E+00;
Flow.l['i3']   =     -4.11076E+00;
Flow.l['i4']   =     -4.11076E+00;
Flow.l['i5']   =      8.34083E+00;
Flow.l['i6']   =      6.67356E+00;
Flow.l['i7']   =      5.15250E+00;
Flow.l['i8']   =     -1.52106E+00;
Flow.l['i9']   =      1.49619E+00;
Flow.l['i10']  =      8.63464E-01;
Flow.l['i11']  =      2.38452E+00;
Flow.l['i12']  =      1.84522E-01;
Flow.l['i13']  =     -2.80167E-01;
Flow.l['i14']  =     -2.80167E-01;
Flow.l['i15']  =     -2.80167E-01;
Flow.l['i16']  =     -9.56457E-02;
Flow.l['i17']  =      4.83333E-01;
Flow.l['i18']  =      0.00000E+00;
Flow.l['i19']  =      5.80000E+00;
Flow.l['i20']  =      3.62164E+00;
Flow.l['i21']  =      3.15920E+00;
Flow.l['i22']  =      0.00000E+00;
Flow.l['i23']  =     -1.14080E+00;
Flow.l['i24']  =      2.96863E+00;
Flow.l['i25']  =      6.56169E+00;
Flow.l['i26']  =      3.16455E-01;
Flow.l['i27']  =     -2.74176E-01;
Flow.l['i28']  =     -6.71257E-01;
Flow.l['i29']  =     -6.71257E-01;
Flow.l['i30']  =     -1.52215E+00;
Flow.l['i31']  =     -1.14514E+00;
Flow.l['i32']  =     -2.31222E-01;
Flow.l['i33']  =     -2.31221E-01;
Flow.l['i34']  =      1.82783E+00;
Flow.l['i35']  =      4.80828E-01;
Flow.l['i36']  =     -3.01828E-01;
Flow.l['i37']  =      1.06084E+01;
Flow.l['i38']  =      9.74452E+00;
Flow.l['i39']  =      1.77661E+00;
Flow.l['i40']  =     -2.09158E-01;
Flow.l['i41']  =     -5.12076E-01;
Flow.l['i42']  =     -5.12076E-01;
Flow.l['i43']  =     -1.16119E+00;
Flow.l['i44']  =     -1.14514E+00;
Flow.l['i45']  =     -2.31221E-01;
Flow.l['i46']  =     -2.31221E-01;
Flow.l['i47']  =      2.20035E+00;
Flow.l['i48']  =     -1.12775E+00;
Flow.l['i49']  =      1.91798E+00;
Flow.l['i50']  =      0.00000E+00;
Flow.l['i51']  =      1.15931E+01;
Flow.l['i52']  =      7.71110E+00;
Flow.l['i53']  =      1.14942E+00;
Flow.l['i54']  =      1.14942E+00;
Flow.l['i55']  =      3.17981E+00;
Flow.l['i56']  =      2.37981E+00;
Flow.l['i57']  =      2.43611E+00;
Flow.l['i58']  =      0.00000E+00;
Flow.l['i59']  =      2.20000E+00;
Flow.l['i60']  =      0.00000E+00;


Model core2 /all/;

Solve core2 using dnlp minimize cost;

display demand.l;
display supply.l;
display cost.l;
