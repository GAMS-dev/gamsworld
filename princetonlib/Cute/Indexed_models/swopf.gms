*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem:
*   ********
*   An optimal electrical powerflow system design problem from Switzerland.
*   Source:
*   a contribution to fullfill the LANCELOT academic licence agreement.
*   SIF input: R. Bacher, Dept of Electrical Engineering, ETH Zurich,
*              November 1994.
*   classification LQR2-RN-83-92
*   Number of nodes       =   7
*   Number of branches    =   7
*   Number of generators  =   3
*   Bus oriented data
*   Branch oriented data (including transformers)
*   Generator oriented data
*   Individual generator oriented data
* Bus oriented data
*   Branch oriented data (including transformers)
* Generator oriented data
* Individual generator oriented data
*   Bus oriented data
*   Branch oriented data (including transformers)
*   Bus oriented data
*   Generator oriented data
*   Bus oriented data
*   Branch oriented data (including transformers)
*   Generator oriented data
*   Individual generator oriented data
*    Bus oriented data
*   Branch oriented data (including transformers)
*   Bus oriented data
*   Branch oriented data (including transformers)
*   Solutions
*LO SOLTN               6.78605619D-2

Parameter       first;      first = 1 ;
Parameter  nobranches; nobranches = 7 ;
Parameter    noshunts;   noshunts = 0 ;
Parameter    notrafos;   notrafos = 3 ;
Parameter    nobusses;   nobusses = 7 ;
Parameter       nogen;      nogen = 3 ;
Parameter     nogenbk;    nogenbk = 3 ;
Parameter     noareas;    noareas = 0 ;

Variable   ve0001 , vf0001 , v20001 , ve0002 , vf0002 ,
           v20002 , ve0003 , vf0003 , v20003 , ve0004 ,
           vf0004 , v20004 , ve0005 , vf0005 , v20005 ,
           ve0006 , vf0006 , v20006 , ve0007 , vf0007 ,
           v20007 , ei0001 , fi0001 , ej0001 , fj0001 ,
           pi0001 , qi0001 , pj0001 , qj0001 , ei0002 ,
           fi0002 , ej0002 , fj0002 , pi0002 , qi0002 ,
           pj0002 , qj0002 , ei0003 , fi0003 , ej0003 ,
           fj0003 , pi0003 , qi0003 , pj0003 , qj0003 ,
           ei0004 , fi0004 , ej0004 , fj0004 , pi0004 ,
           qi0004 , pj0004 , qj0004 , ei0005 , fi0005 ,
           ej0005 , fj0005 , pi0005 , qi0005 , pj0005 ,
           qj0005 , ei0006 , fi0006 , ej0006 , fj0006 ,
           pi0006 , qi0006 , pj0006 , qj0006 , ei0007 ,
           fi0007 , ej0007 , fj0007 , pi0007 , qi0007 ,
           pj0007 , qj0007 , pg0001 , pg0002 , pg0003 ,
           qg0001 , qg0002 , qg0003 ,  obj ;

Equation   gv20001 ,  slf0000 ,  gv20002 ,  gv20003 ,  gv20004 ,
           gv20005 ,  gv20006 ,  gv20007 ,  gei0001 ,  gfi0001 ,
           gej0001 ,  gfj0001 ,  gpi0001 ,  gqi0001 ,  gpj0001 ,
           gqj0001 , gpni0001 , gpni0002 , gqni0001 , gqni0002 ,
          gmxi0001 , gmxj0001 ,  gei0002 ,  gfi0002 ,  gej0002 ,
           gfj0002 ,  gpi0002 ,  gqi0002 ,  gpj0002 ,  gqj0002 ,
          gpni0006 , gqni0006 , gmxi0002 , gmxj0002 ,  gei0003 ,
           gfi0003 ,  gej0003 ,  gfj0003 ,  gpi0003 ,  gqi0003 ,
           gpj0003 ,  gqj0003 , gpni0004 , gqni0004 , gmxi0003 ,
          gmxj0003 ,  gei0004 ,  gfi0004 ,  gej0004 ,  gfj0004 ,
           gpi0004 ,  gqi0004 ,  gpj0004 ,  gqj0004 , gpni0003 ,
          gqni0003 , gmxi0004 , gmxj0004 ,  gei0005 ,  gfi0005 ,
           gej0005 ,  gfj0005 ,  gpi0005 ,  gqi0005 ,  gpj0005 ,
           gqj0005 , gpni0007 , gqni0007 , gmxi0005 , gmxj0005 ,
           gei0006 ,  gfi0006 ,  gej0006 ,  gfj0006 ,  gpi0006 ,
           gqi0006 ,  gpj0006 ,  gqj0006 , gpni0005 , gqni0005 ,
          gmxi0006 , gmxj0006 ,  gei0007 ,  gfi0007 ,  gej0007 ,
           gfj0007 ,  gpi0007 ,  gqi0007 ,  gpj0007 ,  gqj0007 ,
          gmxi0007 , gmxj0007 ,  Def_obj ;

gv20001..   -ve0001 * ve0001 - vf0001 * vf0001 + v20001 =e= 0;
slf0000..    vf0001 =e= 0;
gv20002..   -ve0002 * ve0002 - vf0002 * vf0002 + v20002 =e= 0;
gv20003..   -ve0003 * ve0003 - vf0003 * vf0003 + v20003 =e= 0;
gv20004..   -ve0004 * ve0004 - vf0004 * vf0004 + v20004 =e= 0;
gv20005..   -ve0005 * ve0005 - vf0005 * vf0005 + v20005 =e= 0;
gv20006..   -ve0006 * ve0006 - vf0006 * vf0006 + v20006 =e= 0;
gv20007..   -ve0007 * ve0007 - vf0007 * vf0007 + v20007 =e= 0;
gei0001..    ei0001 - 5.299*ve0001 - 66.243*vf0001 + 5.299*ve0002 + 66.243*vf0002 =e= 0;
gfi0001..    fi0001 + 66.243*ve0001 - 5.299*vf0001 - 66.243*ve0002 + 5.299*vf0002 =e= 0;
gej0001..    ej0001 - 5.299*ve0002 - 66.243*vf0002 + 5.299*ve0001 + 66.243*vf0001 =e= 0;
gfj0001..    fj0001 + 66.243*ve0002 - 5.299*vf0002 - 66.243*ve0001 + 5.299*vf0001 =e= 0;
gpi0001..   -ei0001 * ve0001 - fi0001 * vf0001 + pi0001 =e= 0;
gqi0001..   -ei0001 * vf0001 + fi0001 * ve0001 + qi0001 =e= 0;
gpj0001..   -ej0001 * ve0002 - fj0001 * vf0002 + pj0001 =e= 0;
gqj0001..   -ej0001 * vf0002 + fj0001 * ve0002 + qj0001 =e= 0;
gpni0001..  -pi0001 + pg0001 =e= 0;
gpni0002..  -pj0001 - pi0002 - pi0003 - 2.0 =e= 0;
gqni0001..  -qi0001 + qg0001 =e= 0;
gqni0002..  -qj0001 - qi0002 - qi0003 - 3.0 =e= 0;
gmxi0001..   0 =g= pi0001 * pi0001 + qi0001 * qi0001 - 16.0;
gmxj0001..   0 =g= pj0001 * pj0001 + qj0001 * qj0001 - 16.0;
gei0002..    ei0002 - 1.175*ve0002 - 6.915*vf0002 + 1.175*ve0006 + 7.051*vf0006 =e= 0;
gfi0002..    fi0002 + 6.915*ve0002 - 1.175*vf0002 - 7.051*ve0006 + 1.175*vf0006 =e= 0;
gej0002..    ej0002 - 1.175*ve0006 - 6.915*vf0006 + 1.175*ve0002 + 7.051*vf0002 =e= 0;
gfj0002..    fj0002 + 6.915*ve0006 - 1.175*vf0006 - 7.051*ve0002 + 1.175*vf0002 =e= 0;
gpi0002..   -ei0002 * ve0002 - fi0002 * vf0002 + pi0002 =e= 0;
gqi0002..   -ei0002 * vf0002 + fi0002 * ve0002 + qi0002 =e= 0;
gpj0002..   -ej0002 * ve0006 - fj0002 * vf0006 + pj0002 =e= 0;
gqj0002..   -ej0002 * vf0006 + fj0002 * ve0006 + qj0002 =e= 0;
gpni0006..  -pj0002 - pj0006 - pi0007 - 1.0 =e= 0;
gqni0006..  -qj0002 - qj0006 - qi0007 - 0.3 =e= 0;
gmxi0002..   0 =g= pi0002 * pi0002 + qi0002 * qi0002 - 4.0;
gmxj0002..   0 =g= pj0002 * pj0002 + qj0002 * qj0002 - 4.0;
gei0003..    ei0003 - 1.726*ve0002 - 10.498*vf0002 + 1.726*ve0004 + 10.588*vf0004 =e= 0;
gfi0003..    fi0003 + 10.498*ve0002 - 1.726*vf0002 - 10.588*ve0004 + 1.726*vf0004 =e= 0;
gej0003..    ej0003 - 1.726*ve0004 - 10.498*vf0004 + 1.726*ve0002 + 10.588*vf0002 =e= 0;
gfj0003..    fj0003 + 10.498*ve0004 - 1.726*vf0004 - 10.588*ve0002 + 1.726*vf0002 =e= 0;
gpi0003..   -ei0003 * ve0002 - fi0003 * vf0002 + pi0003 =e= 0;
gqi0003..   -ei0003 * vf0002 + fi0003 * ve0002 + qi0003 =e= 0;
gpj0003..   -ej0003 * ve0004 - fj0003 * vf0004 + pj0003 =e= 0;
gqj0003..   -ej0003 * vf0004 + fj0003 * ve0004 + qj0003 =e= 0;
gpni0004..  -pj0003 - pj0004 - pi0005 - 2.0 =e= 0;
gqni0004..  -qj0003 - qj0004 - qi0005 - 0.2 =e= 0;
gmxi0003..   0 =g= pi0003 * pi0003 + qi0003 * qi0003 - 4.0;
gmxj0003..   0 =g= pj0003 * pj0003 + qj0003 * qj0003 - 4.0;
gei0004..    ei0004 - 6.897*ve0003 - 82.759*vf0003 + 6.897*ve0004 + 82.759*vf0004 =e= 0;
gfi0004..    fi0004 + 82.759*ve0003 - 6.897*vf0003 - 82.759*ve0004 + 6.897*vf0004 =e= 0;
gej0004..    ej0004 - 6.897*ve0004 - 82.759*vf0004 + 6.897*ve0003 + 82.759*vf0003 =e= 0;
gfj0004..    fj0004 + 82.759*ve0004 - 6.897*vf0004 - 82.759*ve0003 + 6.897*vf0003 =e= 0;
gpi0004..   -ei0004 * ve0003 - fi0004 * vf0003 + pi0004 =e= 0;
gqi0004..   -ei0004 * vf0003 + fi0004 * ve0003 + qi0004 =e= 0;
gpj0004..   -ej0004 * ve0004 - fj0004 * vf0004 + pj0004 =e= 0;
gqj0004..   -ej0004 * vf0004 + fj0004 * ve0004 + qj0004 =e= 0;
gpni0003..  -pi0004 + pg0002 - 0.6 =e= 0;
gqni0003..  -qi0004 + qg0002 - 0.08 =e= 0;
gmxi0004..   0 =g= pi0004 * pi0004 + qi0004 * qi0004 - 25.0;
gmxj0004..   0 =g= pj0004 * pj0004 + qj0004 * qj0004 - 25.0;
gei0005..    ei0005 - 1.175*ve0004 - 6.915*vf0004 + 1.175*ve0007 + 7.051*vf0007 =e= 0;
gfi0005..    fi0005 + 6.915*ve0004 - 1.175*vf0004 - 7.051*ve0007 + 1.175*vf0007 =e= 0;
gej0005..    ej0005 - 1.175*ve0007 - 6.915*vf0007 + 1.175*ve0004 + 7.051*vf0004 =e= 0;
gfj0005..    fj0005 + 6.915*ve0007 - 1.175*vf0007 - 7.051*ve0004 + 1.175*vf0004 =e= 0;
gpi0005..   -ei0005 * ve0004 - fi0005 * vf0004 + pi0005 =e= 0;
gqi0005..   -ei0005 * vf0004 + fi0005 * ve0004 + qi0005 =e= 0;
gpj0005..   -ej0005 * ve0007 - fj0005 * vf0007 + pj0005 =e= 0;
gqj0005..   -ej0005 * vf0007 + fj0005 * ve0007 + qj0005 =e= 0;
gpni0007..  -pj0005 - pj0007 - 2.0 =e= 0;
gqni0007..  -qj0005 - qj0007 - 1.0 =e= 0;
gmxi0005..   0 =g= pi0005 * pi0005 + qi0005 * qi0005 - 4.0;
gmxj0005..   0 =g= pj0005 * pj0005 + qj0005 * qj0005 - 4.0;
gei0006..    ei0006 - 3.448*ve0005 - 41.379*vf0005 + 3.448*ve0006 + 41.379*vf0006 =e= 0;
gfi0006..    fi0006 + 41.379*ve0005 - 3.448*vf0005 - 41.379*ve0006 + 3.448*vf0006 =e= 0;
gej0006..    ej0006 - 3.448*ve0006 - 41.379*vf0006 + 3.448*ve0005 + 41.379*vf0005 =e= 0;
gfj0006..    fj0006 + 41.379*ve0006 - 3.448*vf0006 - 41.379*ve0005 + 3.448*vf0005 =e= 0;
gpi0006..   -ei0006 * ve0005 - fi0006 * vf0005 + pi0006 =e= 0;
gqi0006..   -ei0006 * vf0005 + fi0006 * ve0005 + qi0006 =e= 0;
gpj0006..   -ej0006 * ve0006 - fj0006 * vf0006 + pj0006 =e= 0;
gqj0006..   -ej0006 * vf0006 + fj0006 * ve0006 + qj0006 =e= 0;
gpni0005..  -pi0006 + pg0003 - 0.5 =e= 0;
gqni0005..  -qi0006 + qg0003 - 0.05 =e= 0;
gmxi0006..   0 =g= pi0006 * pi0006 + qi0006 * qi0006 - 6.25;
gmxj0006..   0 =g= pj0006 * pj0006 + qj0006 * qj0006 - 6.25;
gei0007..    ei0007 - 1.726*ve0006 - 10.498*vf0006 + 1.726*ve0007 + 10.588*vf0007 =e= 0;
gfi0007..    fi0007 + 10.498*ve0006 - 1.726*vf0006 - 10.588*ve0007 + 1.726*vf0007 =e= 0;
gej0007..    ej0007 - 1.726*ve0007 - 10.498*vf0007 + 1.726*ve0006 + 10.588*vf0006 =e= 0;
gfj0007..    fj0007 + 10.498*ve0007 - 1.726*vf0007 - 10.588*ve0006 + 1.726*vf0006 =e= 0;
gpi0007..   -ei0007 * ve0006 - fi0007 * vf0006 + pi0007 =e= 0;
gqi0007..   -ei0007 * vf0006 + fi0007 * ve0006 + qi0007 =e= 0;
gpj0007..   -ej0007 * ve0007 - fj0007 * vf0007 + pj0007 =e= 0;
gqj0007..   -ej0007 * vf0007 + fj0007 * ve0007 + qj0007 =e= 0;
gmxi0007..   0 =g= pi0007 * pi0007 + qi0007 * qi0007 - 4.0;
gmxj0007..   0 =g= pj0007 * pj0007 + qj0007 * qj0007 - 4.0;

Def_obj..  obj =e= pi0001 + pj0001 + pi0002 + pj0002 + pi0003 +
                   pj0003 + pi0004 + pj0004 + pi0005 + pj0005 +
                   pi0006 + pj0006 + pi0007 + pj0007;

v20001.lo = 0.81  ; v20001.up =   1.21 ;
v20002.lo = 0.81  ; v20002.up =   1.21 ;
v20003.lo = 0.941 ; v20003.up =   1.21 ;
v20004.lo = 0.941 ; v20004.up =   1.21 ;
v20005.lo = 0.941 ; v20005.up =   1.21 ;
v20006.lo = 0.941 ; v20006.up =   1.21 ;
v20007.lo = 0.941 ; v20007.up =   1.21 ;
pg0001.lo = 0.5   ; pg0001.up =  10.00 ;
pg0002.lo = 0.5   ; pg0002.up =  10.00 ;
pg0003.lo = 0.2   ; pg0003.up =   4.00 ;

ve0001.l =  1.0    ;  v20001.l =  1.0      ;
ve0002.l =  1.001  ;  v20002.l =  1.002    ;
ve0003.l =  1.05   ;  v20003.l =  1.102    ;
ve0004.l =  1.001  ;  v20004.l =  1.002    ;
ve0005.l =  1.05   ;  v20005.l =  1.102    ;
ve0006.l =  1.001  ;  v20006.l =  1.002    ;
ve0007.l =  1.001  ;  v20007.l =  1.002    ;
ei0001.l = -0.0050 ;  fi0001.l =  0.066    ;
ej0001.l =  0.0050 ;  fj0001.l = -0.066    ;
pi0001.l = -0.0050 ;  qi0001.l = -0.066    ;
pj0001.l =  0.0050 ;  qj0001.l =  0.066    ;
fi0002.l =  0.136  ;  fj0002.l =  0.136    ;
qi0002.l = -0.136  ;  qj0002.l = -0.136    ;
fi0003.l =  0.091  ;  fj0003.l =  0.091    ;
qi0003.l = -0.091  ;  qj0003.l = -0.091    ;
ei0004.l =  0.338  ;  fi0004.l = -4.055    ;
ej0004.l = -0.338  ;  fj0004.l =  4.055    ;
pi0004.l =  0.355  ;  qi0004.l =  4.258    ;
pj0004.l = -0.338  ;  qj0004.l = -4.059    ;
fi0005.l =  0.136  ;  fj0005.l =  0.136    ;
qi0005.l = -0.136  ;  qj0005.l = -0.136    ;
ei0006.l =  0.169  ;  fi0006.l = -2.028    ;
ej0006.l = -0.169  ;  fj0006.l =  2.028    ;
pi0006.l =  0.177  ;  qi0006.l =  2.129    ;
pj0006.l = -0.169  ;  qj0006.l = -2.03     ;
fi0007.l =  0.091  ;  fj0007.l =  0.091    ;
qi0007.l = -0.091  ;  qj0007.l = -0.091    ;
pg0001.l =  3.0    ;  pg0002.l =  5.0      ;
pg0003.l =  2.0    ;

Model swopf /all/ ;

Solve swopf using nlp minimazing obj ;

display ve0001.l ; display vf0001.l ; display v20001.l ;
display ve0002.l ; display vf0002.l ; display v20002.l ;
display ve0003.l ; display vf0003.l ; display v20003.l ;
display ve0004.l ; display vf0004.l ; display v20004.l ;
display ve0005.l ; display vf0005.l ; display v20005.l ;
display ve0006.l ; display vf0006.l ; display v20006.l ;
display ve0007.l ; display vf0007.l ; display v20007.l ;
display ei0001.l ; display fi0001.l ; display ej0001.l ;
display fj0001.l ; display pi0001.l ; display qi0001.l ;
display pj0001.l ; display qj0001.l ; display ei0002.l ;
display fi0002.l ; display ej0002.l ; display fj0002.l ;
display pi0002.l ; display qi0002.l ; display pj0002.l ;
display qj0002.l ; display ei0003.l ; display fi0003.l ;
display ej0003.l ; display fj0003.l ; display pi0003.l ;
display qi0003.l ; display pj0003.l ; display qj0003.l ;
display ei0004.l ; display fi0004.l ; display ej0004.l ;
display fj0004.l ; display pi0004.l ; display qi0004.l ;
display pj0004.l ; display qj0004.l ; display ei0005.l ;
display fi0005.l ; display ej0005.l ; display fj0005.l ;
display pi0005.l ; display qi0005.l ; display pj0005.l ;
display qj0005.l ; display ei0006.l ; display fi0006.l ;
display ej0006.l ; display fj0006.l ; display pi0006.l ;
display qi0006.l ; display pj0006.l ; display qj0006.l ;
display ei0007.l ; display fi0007.l ; display ej0007.l ;
display fj0007.l ; display pi0007.l ; display qi0007.l ;
display pj0007.l ; display qj0007.l ; display pg0001.l ;
display pg0002.l ; display pg0003.l ; display qg0001.l ;
display qg0002.l ; display qg0003.l ; display obj.l ;

