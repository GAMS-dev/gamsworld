*****************************************************************
*   CP example problems
*   ===================
*
*   file cycle_ive.mos
*   ``````````````````
*   Cycle constraint example, solving a small TSP problem.
*
*   (c) 2007 Artelys SA and Dash Associates
*
******************************************************************

*model "TSP"
* uses "kalis", "mmive"
* Number of cities to visit
$Set S  14

* Set of cities
Set CITIES / c1 * c%S% /

Set I / i1*i43 /



Alias(CITIES,CITIES1) ;

Parameter TC[I] ;
 TC['i1']  =   1 ; TC['i2']  = 1647 ; TC['i3']  = 9610 ;
 TC['i4']  =   2 ; TC['i5']  = 1647 ; TC['i6']  = 9444 ;
 TC['i7']  =   3 ; TC['i8']  = 2009 ; TC['i9']  = 9254 ;
 TC['i10'] =   4 ; TC['i11'] = 2239 ; TC['i12'] = 9337 ;
 TC['i13'] =   5 ; TC['i14'] = 2523 ; TC['i15'] = 9724 ;
 TC['i16'] =   6 ; TC['i17'] = 2200 ; TC['i18'] = 9605 ;
 TC['i19'] =   7 ; TC['i20'] = 2047 ; TC['i21'] = 9702 ;
 TC['i22'] =   8 ; TC['i23'] = 1720 ; TC['i24'] = 9629 ;
 TC['i25'] =   9 ; TC['i26'] = 1630 ; TC['i27'] = 9738 ;
 TC['i28'] =  10 ; TC['i29'] = 1405 ; TC['i30'] = 9812 ;
 TC['i31'] =  11 ; TC['i32'] = 1653 ; TC['i33'] = 9738 ;
 TC['i34'] =  12 ; TC['i35'] = 2152 ; TC['i36'] = 9559 ;
 TC['i37'] =  13 ; TC['i38'] = 1941 ; TC['i39'] = 9713 ;
 TC['i40'] =  14 ; TC['i41'] = 2009 ; TC['i42'] = 9455 ;

Parameter dist_matrix(CITIES,CITIES1) ;
* Build the distance matrix
 Loop{(CITIES,CITIES1)$(ord(CITIES) ne ord(CITIES1)),
   dist_matrix(CITIES,CITIES1) =  round(sqrt(
    (Sum{I$(ord(I)-1 eq (3*(ord(CITIES1)- 1 ) + 1 )) , TC[I]} -
     Sum{I$(ord(I)-1 eq (3*(ord(CITIES) - 1 ) + 1 )) , TC[I]}   )*
    (Sum{I$(ord(I)-1 eq (3*(ord(CITIES1)- 1 ) + 1 )) , TC[I]} -
     Sum{I$(ord(I)-1 eq (3*(ord(CITIES) - 1 ) + 1 )) , TC[I]}   )+
    (Sum{I$(ord(I)-1 eq (3*(ord(CITIES1)- 1 ) + 2 )) , TC[I]} -
     Sum{I$(ord(I)-1 eq (3*(ord(CITIES) - 1 ) + 2 )) , TC[I]}   )*
    (Sum{I$(ord(I)-1 eq (3*(ord(CITIES1)- 1 ) + 2 )) , TC[I]} -
     Sum{I$(ord(I)-1 eq (3*(ord(CITIES) - 1 ) + 2 )) , TC[I]}   )
                                            )    ) ;
      } ;

Binary Variable
         Short_path[CITIES,CITIES1] ;

Variable
* Total distance of the tour
         totaldist ;
Equation
         Eq_1(CITIES) ,
         Eq_2(CITIES) ,
         Def_Obj      ;

Eq_1(CITIES)..
         Sum{CITIES1,Short_path[CITIES,CITIES1]} =e= 1 ;

Eq_2(CITIES)..
         Sum{CITIES1,Short_path[CITIES1,CITIES]} =e= 1 ;
Def_Obj..
         totaldist =e= Sum{(CITIES,CITIES1),Short_path[CITIES,CITIES1] *
                                            dist_matrix[CITIES,CITIES1] } ;


Short_path.fx[CITIES,CITIES1]$(ord(CITIES) eq ord(CITIES1)) = 0 ;

Model TSP / all / ;

Solve TSP using MIP minimazing totaldist ;

Display totaldist.l ;

