*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   A production planning problem in the computer industry.
*   Source:
*   L. Escudero, private communication, 1991.
*   SIF input: A.R. Conn, March 1991.
*   classification LQR2-RY-60-29
*   Constants
*   Solution

Parameter   t ;   t =       5  ;
Parameter tm1 ; tm1 = -1 + (5) ;
Parameter ip1 ; ip1 =  1 + (4) ;

Positive Variable   x00101  , x00201  , x00301  , x00401  , x00102  ,
                    x00202  , x00302  , x00402  , x00103  , x00203  ,
                    x00303  , x00403  , x00104  , x00204  , x00304  ,
                    x00404  , x00105  , x00205  , x00305  , x00405  ,
                    i00101  , y00101  , i00201  , y00201  , i00301  ,
                    y00301  , i00401  , y00401  , i00102  , y00102  ,
                    i00202  , y00202  , i00302  , y00302  , i00402  ,
                    y00402  , i00103  , y00103  , i00203  , y00203  ,
                    i00303  , y00303  , i00403  , y00403  , i00104  ,
                    y00104  , i00204  , y00204  , i00304  , y00304  ,
                    i00404  , y00404  , i00105  , y00105  , i00205  ,
                    y00205  , i00305  , y00305  , i00405  , y00405  ;
Variable obj ;
Equation        k01 ,     k02 ,     k03 ,     k04 ,    k05 ,
             d00101 ,  d00201 ,  d00301 ,  d00401 , d00102 ,
             d00202 ,  d00302 ,  d00402 ,  d00103 , d00203 ,
             d00303 ,  d00403 ,  d00104 ,  d00204 , d00304 ,
             d00404 ,  d00105 ,  d00205 ,  d00305 , d00405 ,
            smooth1 , smooth2 , smooth3 , smooth4 , Def_obj ;

    k01..   0 =g= x00101 + x00201 + x00301 + x00401 -    3.0 ;
    k02..   0 =g= x00102 + x00202 + x00302 + x00402 -    6.0 ;
    k03..   0 =g= x00103 + x00203 + x00303 + x00403 -   10.0 ;
    k04..   0 =g= x00104 + x00204 + x00304 + x00404 - 2000.0 ;
    k05..   0 =g= x00105 + x00205 + x00305 + x00405 -   18.0 ;
 d00101..   x00101 - i00101 + y00101 - 1.0            =e=  0 ;
 d00201..   x00201 - i00201 + y00201 - 1.0            =e=  0 ;
 d00301..   x00301 - i00301 + y00301 - 1.0            =e=  0 ;
 d00401..   x00401 - i00401 + y00401 - 1.0            =e=  0 ;
 d00102..   x00102 + i00101 - i00102 + y00102 - 2.667 =e=  0 ;
 d00202..   x00202 + i00201 - i00202 + y00202 - 1.667 =e=  0 ;
 d00302..   x00302 + i00301 - i00302 + y00302 - 2.667 =e=  0 ;
 d00402..   x00402 + i00401 - i00402 + y00402 - 3.333 =e=  0 ;
 d00103..   x00103 + i00102 - i00103 + y00103 - 2.667 =e=  0 ;
 d00203..   x00203 + i00202 - i00203 + y00203 - 2.0   =e=  0 ;
 d00303..   x00303 + i00302 - i00303 + y00303 - 3.0   =e=  0 ;
 d00403..   x00403 + i00402 - i00403 + y00403 - 3.0   =e=  0 ;
 d00104..   x00104 + i00103 - i00104 + y00104 - 2.667 =e=  0 ;
 d00204..   x00204 + i00203 - i00204 + y00204 - 2.667 =e=  0 ;
 d00304..   x00304 + i00303 - i00304 + y00304 - 2.667 =e=  0 ;
 d00404..   x00404 + i00403 - i00404 + y00404 - 2.667 =e=  0 ;
 d00105..   x00105 + i00104 - i00105 + y00105 - 2.667 =e=  0 ;
 d00205..   x00205 + i00204 - i00205 + y00205 - 2.333 =e=  0 ;
 d00305..   x00305 + i00304 - i00305 + y00305 - 2.333 =e=  0 ;
 d00405..   x00405 + i00404 - i00405 + y00405 - 2.333 =e=  0 ;
smooth1.. 0 =g= sqr((x00302+x00402) -x00301+x00401) -
                                            ((0.1)*0.1) *sqr(x00301+x00401) ;
smooth2.. 0 =g= sqr((x00303+x00403) -x00302+x00402) -
                                            ((0.1)*0.1) *sqr(x00302+x00402) ;
smooth3.. 0 =g= sqr((x00304+x00404) -x00303+x00403) -
                                            ((0.1)*0.1) *sqr(x00303+x00403) ;
smooth4.. 0 =g= sqr((x00305+x00405) -x00304+x00404) -
                                            ((0.1)*0.1) *sqr(x00304+x00404) ;

Def_obj..  obj =e=     i00101 + 2.0*y00101 + 2.0*i00201 + 3.0*y00201 +
                   3.0*i00301 + 2.0*y00301 + 4.0*i00401 + 5.0*y00401 +
                       i00102 + 2.0*y00102 + 2.0*i00202 + 3.0*y00202 +
                   3.0*i00302 + 2.0*y00302 + 4.0*i00402 + 5.0*y00402 +
                       i00103 + 2.0*y00103 + 2.0*i00203 + 3.0*y00203 +
                   3.0*i00303 + 2.0*y00303 + 4.0*i00403 + 5.0*y00403 +
                       i00104 + 2.0*y00104 + 2.0*i00204 + 3.0*y00204 +
                   3.0*i00304 + 2.0*y00304 + 4.0*i00404 + 5.0*y00404 +
                       i00105 + 2.0*y00105 + 2.0*i00205 + 3.0*y00205 +
                   3.0*i00305 + 2.0*y00305 + 4.0*i00405 + 5.0*y00405 ;

Model prodpl0  /all/;

Solve prodpl0 using nlp minimazing obj ;

display x00101.l ; display x00201.l ; display x00301.l ; display x00401.l ;
display x00102.l ; display x00202.l ; display x00302.l ; display x00402.l ;
display x00103.l ; display x00203.l ; display x00303.l ; display x00403.l ;
display x00104.l ; display x00204.l ; display x00304.l ; display x00404.l ;
display x00105.l ; display x00205.l ; display x00305.l ; display x00405.l ;
display i00101.l ; display y00101.l ; display i00201.l ; display y00201.l ;
display i00301.l ; display y00301.l ; display i00401.l ; display y00401.l ;
display i00102.l ; display y00102.l ; display i00202.l ; display y00202.l ;
display i00302.l ; display y00302.l ; display i00402.l ; display y00402.l ;
display i00103.l ; display y00103.l ; display i00203.l ; display y00203.l ;
display i00303.l ; display y00303.l ; display i00403.l ; display y00403.l ;
display i00104.l ; display y00104.l ; display i00204.l ; display y00204.l ;
display i00304.l ; display y00304.l ; display i00404.l ; display y00404.l ;
display i00105.l ; display y00105.l ; display i00205.l ; display y00205.l ;
display i00305.l ; display y00305.l ; display i00405.l ; display y00405.l ;
display obj.l ;
