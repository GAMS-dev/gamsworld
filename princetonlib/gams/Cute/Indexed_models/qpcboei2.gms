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

*   Source: a variant on the BOEING2 linear programming problem
*   with an additional CONVEX diagonal Hessian matrix as given by
*   N. I. M. Gould, "An algorithm for large-scale quadratic programming",
*   IMA J. Num. Anal (1991), 11, 299-324, problem class 4.

*   SIF input: Nick Gould, January 1993

*   classification QLR2-MN-143-166

*
*   Problem :
*   *********
*   Source: a variant on the BOEING2 linear programming problem
*   with an additional CONVEX diagonal Hessian matrix as given by
*   N. I. M. Gould, "An algorithm for large-scale quadratic programming",
*   IMA J. Num. Anal (1991), 11, 299-324, problem class 4.
*   SIF input: Nick Gould, January 1993
$offdigit;
Parameter n ; n = 143;

Positive Variable  pbosord0, pbosord1, pbosord2, pbosord3,
                   pbosord4, pboslga0, pboslga1, pboslga2,
                   pboslga3, pboscle0, pboscle1, pboscle2,
                   pboscle3, pordbos0, pordbos1, pordbos2,
                   pordbos3, pordbos4, pordlga0, pordlga1,
                   pordlga2, pordlga3, pordcle0, pordcle1,
                   pordcle2, pordcle3, plgabos0, plgabos1,
                   plgabos2, plgabos3, plgabos4, plgabos5,
                   plgaord0, plgaord1, plgaord2, plgaord3,
                   plgacle0, plgacle1, plgacle2, pclebos0,
                   pclebos1, pclebos2, pclebos3, pclebos4,
                   pcleord0, pcleord1, pcleord2, pcleord3,
                   pcleord4, pclelga0, pclelga1, pclelga2,
                   pclelga3, bbosord0, bbosord1, bboscle0,
                   bboscle1, bordbos0, cbosord0, cbosord1,
                   cbosord2, cbosord3, cbosord4, cboscle0,
                   cboscle1, cboscle2, cboscle3, cordbos0,
                   cordbos1, cordbos2, cordbos3, cordbos4,
                   cordlga0, cordlga1, cordlga2, cordlga3,
                   clgaord0, clgaord1, clgaord2, clgaord3,
                   clgacle0, clgacle1, clgacle2, cclelga0,
                   cclelga1, cclelga2, cclelga3, grdtimo1,
                   n1003ac1, n1003ac2, n1003ac3, n1003ac4,
                   n1005ac1, n1005ac2, n1005ac3, n1005ac4,
                   n1011ac1, n1011ac2, n1011ac3, n1011ac4,
                   n1013ac2, n1013ac4, n1015ac2, n1015ac4,
                   n1017ac2, n1017ac4, n1019ac2, n1019ac4,
                   n1021ac1, n1021ac2, n1021ac3, n1021ac4,
                   n1002ac1, n1002ac2, n1002ac3, n1002ac4,
                   n1004ac2, n1004ac4, n1006ac1, n1006ac2,
                   n1006ac3, n1006ac4, n1008ac2, n1008ac4,
                   n1010ac2, n1010ac4, n1012ac2, n1012ac4,
                   n1014ac2, n1014ac4, n1100ac2, n1100ac4,
                   n1102ac2, n1102ac4, n1200ac2, n1200ac4,
                   n1201ac2, n1201ac4;

Variable grdtimn1 , grdtimo2 , grdtimn2 , grdtimn3 ,
         grdtimn4 , obj ;

Equation  revenues, acocosts, fuelaval, systdept,
          acmiles, asmiles, passngrs, rpmiles,
          lfrpmasm, atonmile, rtonmile, lftnmile,
          flav1, flav2, flav3, flav4, lf1003s1,
          lf1003b1, lf1003c1, lf1005s1, lf1005b1,
          lf1005c1, lf1011s1, lf1011s2, lf1011b1,
          lf1011b2, lf1011c1, lf1011c2, lf1013s1,
          lf1013s2, lf1013c1, lf1013c2, lf1015s1,
          lf1015c1, lf1017s1, lf1017c1, lf1019s1,
          lf1019s2, lf1019c1, lf1019c2, lf1021s1,
          lf1021b1, lf1021c1, lf1002s1, lf1002b1,
          lf1002c1, lf1004s1, lf1004c1, lf1006s1,
          lf1006s2, lf1006b1, lf1006b2, lf1006c1,
          lf1006c2, lf1008s1, lf1008s2, lf1008c1,
          lf1008c2, lf1010s1, lf1010s2, lf1010s3,
          lf1010c1, lf1010c2, lf1010c3, lf1012s1,
          lf1012c1, lf1014s1, lf1014s2, lf1014c1,
          lf1014c2, lf1100s1, lf1100s2, lf1100s3,
          lf1100s4, lf1100s5, lf1100c1, lf1100c2,
          lf1100c3, lf1100c4, lf1100c5, lf1102s1,
          lf1102s2, lf1102s3, lf1102s4, lf1102c1,
          lf1102c2, lf1102c3, lf1102c4, lf1200s1,
          lf1200c1, lf1201s1, lf1201c1, noptcle0,
          contbos1, contbos2, contbos3, contbos4,
          contord1, contord2, contord3, contord4,
          contlga2, contlga4, contcle1, contcle2,
          contcle3, contcle4, dmbosord1, dmboslga1,
          dmboscle1, dmordbos1, dmordlga1,
          dmordcle1, dmlgabos1, dmlgaord1,
          dmlgacle1, dmclebos1, dmcleord1,
          dmclelga1, dmbosord2, dmboslga2,
          dmboscle2, dmordbos2, dmordlga2,
          dmordcle2, dmlgabos2, dmlgaord2,
          dmlgacle2, dmclebos2, dmcleord2,
          dmclelga2, msbosord, msboslga, msboscle,
          msordbos, msordlga, msordcle, mslgabos,
          mslgaord, mslgacle, msclebos, mscleord,
          msclelga,

          dcbosord1, dcboscle1, dcordbos1,
          dcordlga1, dclgaord1, dclgacle1, dcclelga1,
          dcbosord2, dcboscle2, dcordbos2,
          dcordlga2, dclgaord2, dclgacle2, dcclelga2,

          mcordbos, mclgaord, Def_obj ;


revenues..  0 =l=  0.075*pbosord0 +
                   0.075*pbosord1 + 0.075*pbosord2 + 0.075*pbosord3 +
                   0.075*pbosord4 + 0.027*pboslga0 + 0.027*pboslga1 +
                   0.027*pboslga2 + 0.027*pboslga3 + 0.053*pboscle0 +
                   0.053*pboscle1 + 0.053*pboscle2 + 0.053*pboscle3 +
                   0.075*pordbos0 + 0.075*pordbos1 + 0.075*pordbos2 +
                   0.075*pordbos3 + 0.075*pordbos4 + 0.068*pordlga0 +
                   0.068*pordlga1 + 0.068*pordlga2 + 0.068*pordlga3 +
                   0.035*pordcle0 + 0.035*pordcle1 + 0.035*pordcle2 +
                   0.035*pordcle3 + 0.027*plgabos0 + 0.027*plgabos1 +
                   0.027*plgabos2 + 0.027*plgabos3 + 0.027*plgabos4 +
                   0.027*plgabos5 + 0.068*plgaord0 + 0.068*plgaord1 +
                   0.068*plgaord2 + 0.068*plgaord3 + 0.037*plgacle0 +
                   0.037*plgacle1 + 0.037*plgacle2 + 0.053*pclebos0 +
                   0.053*pclebos1 + 0.053*pclebos2 + 0.053*pclebos3 +
                   0.053*pclebos4 + 0.035*pcleord0 + 0.035*pcleord1 +
                   0.035*pcleord2 + 0.035*pcleord3 + 0.035*pcleord4 +
                   0.037*pclelga0 + 0.037*pclelga1 + 0.037*pclelga2 +
                   0.037*pclelga3 + 0.75*bbosord0  + 0.75*bbosord1  +
                   0.53*bboscle0  + 0.53*bboscle1  + 0.75*bordbos0  +
                   0.75*cbosord0  + 0.75*cbosord1  + 0.75*cbosord2  +
                   0.75*cbosord3  + 0.75*cbosord4  + 0.53*cboscle0  +
                   0.53*cboscle1  + 0.53*cboscle2  + 0.53*cboscle3  +
                   0.75*cordbos0  + 0.75*cordbos1  + 0.75*cordbos2  +
                   0.75*cordbos3  + 0.75*cordbos4  + 0.68*cordlga0  +
                   0.68*cordlga1  + 0.68*cordlga2  + 0.68*cordlga3  +
                   0.68*clgaord0  + 0.68*clgaord1  + 0.68*clgaord2  +
                   0.68*clgaord3  + 0.37*clgacle0  + 0.37*clgacle1  +
                   0.37*clgacle2  + 0.37*cclelga0  + 0.37*cclelga1  +
                   0.37*cclelga2  + 0.37*cclelga3 ;

acocosts..  0 =l=  0.65*grdtimo1 - 0.05*grdtimn1 +      0.275*grdtimo2 -
                   0.02889*grdtimn2 - 0.03611*grdtimn3 -
                   0.01333*grdtimn4 + 0.01*n1003ac1 + 0.02*n1003ac2 +
                   0.03*n1003ac3 + 0.04*n1003ac4 + 4.04337*n1005ac1 +
                   1.60964*n1005ac2 + 1.93119*n1005ac3 + 1.34618*n1005ac4 +
                   1.1*n1011ac1 + 1.2*n1011ac2 + 1.3*n1011ac3 +
                   2.34647*n1011ac4 + 2.36783*n1013ac2 + 1.90292*n1013ac4 +
                   1.36416*n1015ac2 + 1.14401*n1015ac4 + 1.64736*n1017ac2 +
                   1.33312*n1017ac4 + 2.55381*n1019ac2 + 2.14431*n1019ac4 +
                   3.12679*n1021ac1 + 1.18965*n1021ac2 + 1.42472*n1021ac3 +
                   1.0003*n1021ac4 + 3.12679*n1002ac1 + 1.18965*n1002ac2 +
                   1.42472*n1002ac3 + 1.0003*n1002ac4 + 1.64736*n1004ac2 +
                   1.33312*n1004ac4 + 7.17016*n1006ac1 + 2.79929*n1006ac2 +
                   3.35591*n1006ac3 + 2.34647*n1006ac4 + 2.36783*n1008ac2 +
                   1.90292*n1008ac4 + 3.27428*n1010ac2 + 2.71411*n1010ac4 +
                   1.36416*n1012ac2 + 1.14401*n1012ac4 + 2.08463*n1014ac2 +
                   1.71382*n1014ac4 + 6.07357*n1100ac2 + 5.06059*n1100ac4 +
                   5.16712*n1102ac2 + 4.24939*n1102ac4 + 0.72047*n1200ac2 +
                   0.5698*n1200ac4 + 0.72047*n1201ac2 + 0.5698*n1201ac4;

fuelaval..  0 =g=  7.98429*n1003ac1 +
                   2.51914*n1003ac2 + 3.15178*n1003ac3 + 1.99337*n1003ac4 +
                   5.83404*n1005ac1 + 1.82258*n1005ac2 + 2.27351*n1005ac3 +
                   1.41795*n1005ac4 + 9.91398*n1011ac1 + 3.07692*n1011ac2 +
                   3.83055*n1011ac3 + 2.3665*n1011ac4 + 3.16965*n1013ac2 +
                   2.4431*n1013ac4 + 1.49045*n1015ac2 + 1.14359*n1015ac4 +
                   2.21183*n1017ac2 + 1.73951*n1017ac4 + 2.7448*n1019ac2 +
                   2.09214*n1019ac4 + 4.07994*n1021ac1 + 1.25435*n1021ac2 +
                   1.55704*n1021ac3 + 0.94855*n1021ac4 + 4.07994*n1002ac1 +
                   1.25435*n1002ac2 + 1.55704*n1002ac3 + 0.94855*n1002ac4 +
                   2.21183*n1004ac2 + 1.73951*n1004ac4 + 9.91398*n1006ac1 +
                   3.07692*n1006ac2 + 3.83055*n1006ac3 + 2.3665*n1006ac4 +
                   3.16965*n1008ac2 + 2.4431*n1008ac4 + 3.70262*n1010ac2 +
                   2.79573*n1010ac4 + 1.49045*n1012ac2 + 1.14359*n1012ac4 +
                   2.44827*n1014ac2 + 1.84718*n1014ac4 + 6.77953*n1100ac2 +
                   5.16223*n1100ac4 + 6.24657*n1102ac2 + 4.8096*n1102ac4 +
                   0.95782*n1200ac2 + 0.70359*n1200ac4 + 0.95782*n1201ac2 +
                   0.70359*n1201ac4 + 100000.0*(-1);

systdept..  0 =l=  n1003ac1 + n1003ac2 +
                   n1003ac3 + n1003ac4 + n1005ac1 + n1005ac2 + n1005ac3 +
                   n1005ac4 + 2.0*n1011ac1 + 2.0*n1011ac2 + 2.0*n1011ac3 +
                   2.0*n1011ac4 + 2.0*n1013ac2 + 2.0*n1013ac4 + n1015ac2 +
                   n1015ac4 + n1017ac2 + n1017ac4 + 2.0*n1019ac2 +
                   2.0*n1019ac4 + n1021ac1 + n1021ac2 + n1021ac3 + n1021ac4
                   + n1002ac1 + n1002ac2 + n1002ac3 + n1002ac4 + n1004ac2 +
                   n1004ac4 + 2.0*n1006ac1 + 2.0*n1006ac2 + 2.0*n1006ac3 +
                   2.0*n1006ac4 + 2.0*n1008ac2 + 2.0*n1008ac4 +
                   3.0*n1010ac2 + 3.0*n1010ac4 + n1012ac2 + n1012ac4 +
                   2.0*n1014ac2 + 2.0*n1014ac4 + 5.0*n1100ac2 +
                   5.0*n1100ac4 + 4.0*n1102ac2 + 4.0*n1102ac4 + n1200ac2 +
                   n1200ac4 + n1201ac2 + n1201ac4 +
                   50.0*(-1);

acmiles..  0 =l=  0.86441*n1003ac1 +
                   0.86441*n1003ac2 + 0.86441*n1003ac3 + 0.86441*n1003ac4 +
                   0.56156*n1005ac1 + 0.56156*n1005ac2 + 0.56156*n1005ac3 +
                   0.56156*n1005ac4 + 0.87605*n1011ac1 + 0.87605*n1011ac2 +
                   0.87605*n1011ac3 + 0.87605*n1011ac4 + 0.91637*n1013ac2 +
                   0.91637*n1013ac4 + 0.41715*n1015ac2 + 0.41715*n1015ac4 +
                   0.7308*n1017ac2  + 0.7308*n1017ac4  + 0.73165*n1019ac2 +
                   0.73165*n1019ac4 + 0.3145*n1021ac1  + 0.3145*n1021ac2  +
                   0.3145*n1021ac3  + 0.3145*n1021ac4  + 0.3145*n1002ac1  +
                   0.3145*n1002ac2  + 0.3145*n1002ac3  + 0.3145*n1002ac4  +
                   0.7308*n1004ac2  + 0.7308*n1004ac4  + 0.87605*n1006ac1 +
                   0.87605*n1006ac2 + 0.87605*n1006ac3 + 0.87605*n1006ac4 +
                   0.91637*n1008ac2 + 0.91637*n1008ac4 + 0.91722*n1010ac2 +
                   0.91722*n1010ac4 + 0.41715*n1012ac2 + 0.41715*n1012ac4 +
                   0.60273*n1014ac2 + 0.60273*n1014ac4 + 1.79328*n1100ac2 +
                   1.79328*n1100ac4 + 1.79242*n1102ac2 + 1.79242*n1102ac4 +
                   0.18557*n1200ac2 + 0.18557*n1200ac4 + 0.18557*n1201ac2 +
                   0.18557*n1201ac4;

asmiles..  0 =l=  351.81396*n1003ac1 +
                   113.23743*n1003ac2 + 228.55299*n1005ac1 +
                   73.56374*n1005ac2 + 356.55371*n1011ac1 +
                   114.76299*n1011ac2 + 120.04449*n1013ac2 +
                   54.64705*n1015ac2 + 95.73444*n1017ac2 + 95.8463*n1019ac2
                   + 128.00075*n1021ac1 + 41.19926*n1021ac2 +
                   128.00075*n1002ac1 + 41.19926*n1002ac2 +
                   95.73444*n1004ac2 + 356.55371*n1006ac1 +
                   114.76299*n1006ac2 + 120.04449*n1008ac2 +
                   120.15637*n1010ac2 + 54.64705*n1012ac2 +
                   78.95706*n1014ac2 + 234.91937*n1100ac2 +
                   234.80756*n1102ac2 + 24.31007*n1200ac2 +
                   24.31007*n1201ac2;

passngrs..  0 =l=  pbosord0 + pbosord1 +
                   pbosord2 + pbosord3 + pbosord4 + pboslga0 + pboslga1 +
                   pboslga2 + pboslga3 + pboscle0 + pboscle1 + pboscle2 +
                   pboscle3 + pordbos0 + pordbos1 + pordbos2 + pordbos3 +
                   pordbos4 + pordlga0 + pordlga1 + pordlga2 + pordlga3 +
                   pordcle0 + pordcle1 + pordcle2 + pordcle3 + plgabos0 +
                   plgabos1 + plgabos2 + plgabos3 + plgabos4 + plgabos5 +
                   plgaord0 + plgaord1 + plgaord2 + plgaord3 + plgacle0 +
                   plgacle1 + plgacle2 + pclebos0 + pclebos1 + pclebos2 +
                   pclebos3 + pclebos4 + pcleord0 + pcleord1 + pcleord2 +
                   pcleord3 + pcleord4 + pclelga0 + pclelga1 + pclelga2 +
                   pclelga3 + 9431.0*(-1);

rpmiles..  0 =l=   0.86441*pbosord0 +
                   0.87605*pbosord1 + 0.91637*pbosord2 + 0.91722*pbosord3 +
                   0.87605*pbosord4 + 0.18557*pboslga0 + 0.18557*pboslga1 +
                   1.60685*pboslga2 + 0.18557*pboslga3 + 0.56156*pboscle0 +
                   0.56156*pboscle1 + 0.60273*pboscle2 + 0.56156*pboscle3 +
                   0.87605*pordbos0 + 0.91637*pordbos1 + 0.91722*pordbos2 +
                   0.87605*pordbos3 + 0.91637*pordbos4 + 0.7308*pordlga0  +
                   0.7308*pordlga1  + 0.73165*pordlga2 + 0.7308*pordlga3  +
                   0.3145*pordcle0  + 0.3145*pordcle1  + 0.3145*pordcle2  +
                   0.3145*pordcle3  + 0.18557*plgabos0 + 0.18557*plgabos1 +
                   0.18557*plgabos2 + 1.6077*plgabos3  + 0.18557*plgabos4 +
                   0.18557*plgabos5 + 0.7308*plgaord0  + 0.7308*plgaord1  +
                   0.73165*plgaord2 + 0.73165*plgaord3 + 0.41715*plgacle0 +
                   0.41715*plgacle1 + 0.41715*plgacle2 + 0.56156*pclebos0 +
                   0.60273*pclebos1 + 0.60273*pclebos2 + 0.56156*pclebos3 +
                   1.23087*pclebos4 + 0.3145*pcleord0  + 0.3145*pcleord1  +
                   0.3145*pcleord2  + 0.3145*pcleord3  + 0.3145*pcleord4  +
                   0.41715*pclelga0 + 0.41715*pclelga1 + 0.41715*pclelga2 +
                   1.0453*pclelga3;

lfrpmasm..  0 =l= -0.86441*pbosord0 - 0.87605*pbosord1 -
                   0.91637*pbosord2 - 0.91722*pbosord3 -
                   0.87605*pbosord4 - 0.18557*pboslga0 -
                   0.18557*pboslga1 - 1.60685*pboslga2 -
                   0.18557*pboslga3 - 0.56156*pboscle0 -
                   0.56156*pboscle1 - 0.60273*pboscle2 -
                   0.56156*pboscle3 - 0.87605*pordbos0 -
                   0.91637*pordbos1 - 0.91722*pordbos2 -
                   0.87605*pordbos3 - 0.91637*pordbos4 -
                   0.7308*pordlga0  - 0.7308*pordlga1  -
                   0.73165*pordlga2 - 0.7308*pordlga3  -
                   0.3145*pordcle0  - 0.3145*pordcle1  -
                   0.3145*pordcle2  - 0.3145*pordcle3  -
                   0.18557*plgabos0 - 0.18557*plgabos1 -
                   0.18557*plgabos2 - 1.6077*plgabos3  -
                   0.18557*plgabos4 - 0.18557*plgabos5 -
                   0.7308*plgaord0  - 0.7308*plgaord1  -
                   0.73165*plgaord2 - 0.73165*plgaord3 -
                   0.41715*plgacle0 - 0.41715*plgacle1 -
                   0.41715*plgacle2 - 0.56156*pclebos0 -
                   0.60273*pclebos1 - 0.60273*pclebos2 -
                   0.56156*pclebos3 - 1.23087*pclebos4 -
                   0.3145*pcleord0  - 0.3145*pcleord1  -
                   0.3145*pcleord2  - 0.3145*pcleord3  -
                   0.3145*pcleord4  - 0.41715*pclelga0 -
                   0.41715*pclelga1 - 0.41715*pclelga2 -
                   1.0453*pclelga3  + 211.088376*n1003ac1 +
                   67.942458*n1003ac2 + 137.131794*n1005ac1+
                   44.138244*n1005ac2 +213.93222599999999*n1011ac1 +
                   68.857794*n1011ac2 + 72.026694*n1013ac2 +
                   32.78823*n1015ac2  + 57.440664*n1017ac2 +
                   57.50778*n1019ac2  + 76.80045*n1021ac1 +
                   24.719556*n1021ac2 + 76.80045*n1002ac1 +
                   24.719556*n1002ac2 + 57.440664*n1004ac2 +
                   213.93222599999999*n1006ac1+68.857794*n1006ac2 +
                   72.026694*n1008ac2 +72.093822*n1010ac2 +
                   32.78823*n1012ac2 + 47.374236*n1014ac2 +
                   140.951622*n1100ac2+ 140.884536*n1102ac2 +
                   14.586042*n1200ac2 + 14.586042*n1201ac2;

atonmile..  0 =l=  25.93224*n1003ac1 + 34.57631*n1003ac3 +
                   12.96612*n1003ac4 + 16.84665*n1005ac1 +
                   22.4622*n1005ac3  + 8.42333*n1005ac4  +
                   26.2816*n1011ac1  + 35.04214*n1011ac3 +
                   13.1408*n1011ac4  + 13.74556*n1013ac4 +
                   6.25729*n1015ac4  + 10.96196*n1017ac4 +
                   10.97477*n1019ac4 + 9.43495*n1021ac1  +
                   12.57993*n1021ac3 + 4.71747*n1021ac4  +
                   9.43495*n1002ac1  + 12.57993*n1002ac3 +
                   4.71747*n1002ac4  + 10.96196*n1004ac4 +
                   26.2816*n1006ac1  + 35.04214*n1006ac3 +
                   13.1408*n1006ac4  + 13.74556*n1008ac4 +
                   13.75836*n1010ac4 + 6.25729*n1012ac4  +
                   9.04089*n1014ac4  + 26.89915*n1100ac4 +
                   26.88635*n1102ac4 + 2.7836*n1200ac4   +
                   2.7836*n1201ac4;

rtonmile..  0 =l=  0.86441*bbosord0 + 0.87605*bbosord1 +
                   0.56156*bboscle0 + 0.56156*bboscle1 +
                   0.87605*bordbos0 + 0.86441*cbosord0 +
                   0.87605*cbosord1 + 0.91637*cbosord2 +
                   0.91722*cbosord3 + 0.87605*cbosord4 +
                   0.56156*cboscle0 + 0.56156*cboscle1 +
                   0.60273*cboscle2 + 0.56156*cboscle3 +
                   0.87605*cordbos0 + 0.91637*cordbos1 +
                   0.91722*cordbos2 + 0.87605*cordbos3 +
                   0.91637*cordbos4 + 0.7308*cordlga0  +
                   0.7308*cordlga1  + 0.73165*cordlga2 +
                   0.7308*cordlga3  + 0.7308*clgaord0  +
                   0.7308*clgaord1  + 0.73165*clgaord2 +
                   0.73165*clgaord3 + 0.41715*clgacle0 +
                   0.41715*clgacle1 + 0.41715*clgacle2 +
                   0.41715*cclelga0 + 0.41715*cclelga1 +
                   0.41715*cclelga2 + 1.0453*cclelga3;

lftnmile..  0 =l= -0.86441*bbosord0  - 0.87605*bbosord1 -
                   0.56156*bboscle0  - 0.56156*bboscle1 -
                   0.87605*bordbos0  - 0.86441*cbosord0 -
                   0.87605*cbosord1  - 0.91637*cbosord2 -
                   0.91722*cbosord3  - 0.87605*cbosord4 -
                   0.56156*cboscle0  - 0.56156*cboscle1 -
                   0.60273*cboscle2  - 0.56156*cboscle3 -
                   0.87605*cordbos0  - 0.91637*cordbos1 -
                   0.91722*cordbos2  - 0.87605*cordbos3 -
                   0.91637*cordbos4  - 0.7308*cordlga0 -
                   0.7308*cordlga1   - 0.73165*cordlga2 -
                   0.7308*cordlga3   - 0.7308*clgaord0 -
                   0.7308*clgaord1   - 0.73165*clgaord2 -
                   0.73165*clgaord3  - 0.41715*clgacle0 -
                   0.41715*clgacle1  - 0.41715*clgacle2 -
                   0.41715*cclelga0  - 0.41715*cclelga1 -
                   0.41715*cclelga2  - 1.0453*cclelga3 +
                   12.96612*n1003ac1 + 17.288155*n1003ac3 +
                   6.48306*n1003ac4  + 8.423325*n1005ac1 +
                   11.2311*n1005ac3  + 4.211665*n1005ac4 +
                   13.1408*n1011ac1  + 17.52107*n1011ac3 +
                   6.5704*n1011ac4   + 6.87278*n1013ac4 +
                   3.128645*n1015ac4 + 5.48098*n1017ac4 +
                   5.487385*n1019ac4 + 4.717475*n1021ac1 +
                   6.289965*n1021ac3 + 2.358735*n1021ac4 +
                   4.717475*n1002ac1 + 6.289965*n1002ac3 +
                   2.358735*n1002ac4 + 5.48098*n1004ac4 +
                   13.1408*n1006ac1  + 17.52107*n1006ac3 +
                   6.5704*n1006ac4   + 6.87278*n1008ac4 +
                   6.87918*n1010ac4  + 3.128645*n1012ac4 +
                   4.520445*n1014ac4 + 13.449575*n1100ac4 +
                   13.443175*n1102ac4+ 1.3918*n1200ac4 +
                   1.3918*n1201ac4;

flav1..  grdtimo1 + grdtimn1 + 2.32729*n1003ac1 +
                   1000.0*n1005ac1 + 25.0*n1011ac1 +
                   1.34295*n1021ac1 + 1.34295*n1002ac1 +
                   3.12813*n1006ac1 + 30.0*(-1)=e= 0;

flav2..  grdtimo2 + grdtimn2 + 2.10966*n1003ac2 +
                   2000.0*n1005ac2 + 25.0*n1011ac2 +
                   2.65943*n1013ac2 + 1.25093*n1015ac2 +
                   1.85313*n1017ac2 + 2.30477*n1019ac2 +
                   1.05384*n1021ac2 + 1.05384*n1002ac2 +
                   1.85313*n1004ac2 + 2.58202*n1006ac2 +
                   2.65943*n1008ac2 + 3.11107*n1010ac2 +
                   1.25093*n1012ac2 + 2.05723*n1014ac2 +
                   5.69309*n1100ac2 + 5.24145*n1102ac2 +
                   0.8063*n1200ac2 + 0.8063*n1201ac2 +
                   45.0*(-1)=e=  0;

flav3..  grdtimn3 + 2.10966*n1003ac3 + 3000.0*n1005ac3 +
                   26.0*n1011ac3 + 1.05384*n1021ac3 +
                   1.05384*n1002ac3 + 2.58202*n1006ac3 =e=  0;

flav4..  grdtimn4 + 2.10966*n1003ac4 + 1500.0*n1005ac4 +
                   27.0*n1011ac4 + 2.65943*n1013ac4 +
                   1.25093*n1015ac4 + 1.85313*n1017ac4 +
                   2.30477*n1019ac4 + 1.05384*n1021ac4 +
                   1.05384*n1002ac4 + 1.85313*n1004ac4 +
                   2.58202*n1006ac4 + 2.65943*n1008ac4 +
                   3.11107*n1010ac4 + 1.25093*n1012ac4 +
                   2.05723*n1014ac4 + 5.69309*n1100ac4 +
                   5.24145*n1102ac4 + 0.8063*n1200ac4 +
                   0.8063*n1201ac4 =e=  0;

lf1003s1..  0 =l= -pbosord0 + 305.0*n1003ac1 +
                   98.0*n1003ac2;

lf1003b1..  0 =l= -bbosord0 + 12.0*n1003ac1;

lf1003c1..  0 =l= -cbosord0 + 30.0*n1003ac3 +
                   11.25*n1003ac4;

lf1005s1..  0 =l= -pboscle0 + 305.0*n1005ac1 +
                   98.0*n1005ac2;

lf1005b1..  0 =l= -bboscle0 + 12.0*n1005ac1;

lf1005c1..  0 =l= -cboscle0 + 30.0*n1005ac3 +
                   11.25*n1005ac4;

lf1011s1..  0 =l= -pbosord1 - pboscle1 + 305.0*n1011ac1 +
                   98.0*n1011ac2;

lf1011s2..  0 =l= -pbosord1 - pcleord0 + 305.0*n1011ac1 +
                   98.0*n1011ac2;

lf1011b1..  0 =l= -bbosord1 - bboscle1 + 12.0*n1011ac1;

lf1011b2..  0 =l= -bbosord1 + 12.0*n1011ac1;

lf1011c1..  0 =l= -cbosord1 - cboscle1 + 30.0*n1011ac3 +
                   11.25*n1011ac4;

lf1011c2..  0 =l= -cbosord1 + 30.0*n1011ac3 +
                   11.25*n1011ac4;

lf1013s1..  0 =l= -pbosord2 - pboslga0 + 98.0*n1013ac2;

lf1013s2..  0 =l= -pbosord2 - plgaord0 + 98.0*n1013ac2;

lf1013c1..  0 =l= -cbosord2 + 11.25*n1013ac4;

lf1013c2..  0 =l= -cbosord2 - clgaord0 + 11.25*n1013ac4;

lf1015s1..  0 =l= -plgacle0 + 98.0*n1015ac2;

lf1015c1..  0 =l= -clgacle0 + 11.25*n1015ac4;

lf1017s1..  0 =l= -plgaord1 + 98.0*n1017ac2;

lf1017c1..  0 =l= -clgaord1 + 11.25*n1017ac4;

lf1019s1..  0 =l= -plgaord2 - plgacle1 + 98.0*n1019ac2;

lf1019s2..  0 =l= -plgaord2 - pcleord1 + 98.0*n1019ac2;

lf1019c1..  0 =l= -clgaord2 - clgacle1 + 11.25*n1019ac4;

lf1019c2..  0 =l= -clgaord2 + 11.25*n1019ac4;

lf1021s1..  0 =l= -pcleord2 + 305.0*n1021ac1 +
                   98.0*n1021ac2;

lf1021b1..  0 =l= 12.0*n1021ac1;

lf1021c1..  0 =l= 30.0*n1021ac3 + 11.25*n1021ac4;

lf1002s1..  0 =l= -pordcle0 + 305.0*n1002ac1 +
                   98.0*n1002ac2;

lf1002b1..  0 =l= 12.0*n1002ac1;

lf1002c1..  0 =l= 30.0*n1002ac3 + 11.25*n1002ac4;

lf1004s1..  0 =l= -pordlga0 + 98.0*n1004ac2;

lf1004c1..  0 =l= -cordlga0 + 11.25*n1004ac4;

lf1006s1..  0 =l= -pordbos0 - pordcle1 + 305.0*n1006ac1 +
                   98.0*n1006ac2;

lf1006s2..  0 =l= -pordbos0 - pclebos0 + 305.0*n1006ac1 +
                   98.0*n1006ac2;

lf1006b1..  0 =l= -bordbos0 + 12.0*n1006ac1;

lf1006b2..  0 =l= -bordbos0 + 12.0*n1006ac1;

lf1006c1..  0 =l= -cordbos0 + 30.0*n1006ac3 +
                   11.25*n1006ac4;

lf1006c2..  0 =l= -cordbos0 + 30.0*n1006ac3 +
                   11.25*n1006ac4;

lf1008s1..  0 =l= -pordbos1 - pordlga1 + 98.0*n1008ac2;

lf1008s2..  0 =l= -pordbos1 - plgabos0 + 98.0*n1008ac2;

lf1008c1..  0 =l= -cordbos1 - cordlga1 + 11.25*n1008ac4;

lf1008c2..  0 =l= -cordbos1 + 11.25*n1008ac4;

lf1010s1..  0 =l= -pordbos2 - pordlga2 - pordcle2 +
                   98.0*n1010ac2;

lf1010s2..  0 =l= -pordbos2 - pordlga2 - pclebos1 - pclelga0
                   + 98.0*n1010ac2;

lf1010s3..  0 =l= -pordbos2 - plgabos1 - pclebos1 +
                   98.0*n1010ac2;

lf1010c1..  0 =l= -cordbos2 - cordlga2 + 11.25*n1010ac4;

lf1010c2..  0 =l= -cordbos2 - cordlga2 - cclelga0 +
                   11.25*n1010ac4;

lf1010c3..  0 =l= -cordbos2 + 11.25*n1010ac4;

lf1012s1..  0 =l= -pclelga1 + 98.0*n1012ac2;

lf1012c1..  0 =l= -cclelga1 + 11.25*n1012ac4;

lf1014s1..  0 =l= -pclebos2 - pclelga2 + 98.0*n1014ac2;

lf1014s2..  0 =l= -plgabos2 - pclebos2 + 98.0*n1014ac2;

lf1014c1..  0 =l= -cclelga2 + 11.25*n1014ac4;

lf1014c2..  0 =l= 11.25*n1014ac4;

lf1100s1..  0 =l= -pbosord3 - pboslga1 - pboscle2 +
                   98.0*n1100ac2;

lf1100s2..  0 =l= -pbosord3 - pboscle2 - plgabos3 - plgaord3
                   - plgacle2 + 98.0*n1100ac2;

lf1100s3..  0 =l= -pbosord3 - plgabos3 - plgaord3 - pcleord3
                   + 98.0*n1100ac2;

lf1100s4..  0 =l= -pordbos3 - pordcle3 - plgabos3 +
                   98.0*n1100ac2;

lf1100s5..  0 =l= -pordbos3 - plgabos3 - pclebos3 +
                   98.0*n1100ac2;

lf1100c1..  0 =l= -cbosord3 - cboscle2 + 11.25*n1100ac4;

lf1100c2..  0 =l= -cbosord3 - cboscle2 - clgaord3 - clgacle2
                   + 11.25*n1100ac4;

lf1100c3..  0 =l= -cbosord3 - clgaord3 + 11.25*n1100ac4;

lf1100c4..  0 =l= -cordbos3 + 11.25*n1100ac4;

lf1100c5..  0 =l= -cordbos3 + 11.25*n1100ac4;

lf1102s1..  0 =l= -pbosord4 - pboslga2 - pboscle3 +
                   98.0*n1102ac2;

lf1102s2..  0 =l= -pbosord4 - pboslga2 - pclebos4 - pcleord4
                   - pclelga3 + 98.0*n1102ac2;

lf1102s3..  0 =l= -pboslga2 - pordbos4 - pordlga3 - pclebos4
                   - pclelga3 + 98.0*n1102ac2;

lf1102s4..  0 =l= -pordbos4 - plgabos4 - pclebos4 +
                   98.0*n1102ac2;

lf1102c1..  0 =l= -cbosord4 - cboscle3 + 11.25*n1102ac4;

lf1102c2..  0 =l= -cbosord4 - cclelga3 + 11.25*n1102ac4;

lf1102c3..  0 =l= -cordbos4 - cordlga3 - cclelga3 +
                   11.25*n1102ac4;

lf1102c4..  0 =l= -cordbos4 + 11.25*n1102ac4;

lf1200s1..  0 =l= -pboslga3 + 98.0*n1200ac2;

lf1200c1..  0 =l= 11.25*n1200ac4;

lf1201s1..  0 =l= -plgabos5 + 98.0*n1201ac2;

lf1201c1..  0 =l= 11.25*n1201ac4;

noptcle0..  0 =l=  n1005ac1 +     n1005ac2 +     n1005ac3 +
                   n1005ac4 + 2.0*n1011ac1 + 2.0*n1011ac2 +
               2.0*n1011ac3 + 2.0*n1011ac4 +     n1015ac2 +
                   n1015ac4 + 2.0*n1019ac2 + 2.0*n1019ac4 +
                   n1021ac1 +     n1021ac2 +     n1021ac3 +
                   n1021ac4 +     n1002ac1 +     n1002ac2 +
                   n1002ac3 +     n1002ac4 + 2.0*n1006ac1 +
               2.0*n1006ac2 + 2.0*n1006ac3 + 2.0*n1006ac4 +
               2.0*n1010ac2 + 2.0*n1010ac4 +     n1012ac2 +
                   n1012ac4 +     n1014ac2 +     n1014ac4 +
               4.0*n1100ac2 + 4.0*n1100ac4 + 2.0*n1102ac2 +
               2.0*n1102ac4 + 24.0*(-1);

contbos1..  0 =l= n1003ac1 + n1005ac1 + n1011ac1 - n1006ac1;

contbos2..  0 =l= n1003ac2 + n1005ac2 + n1011ac2 + n1013ac2
                   - n1006ac2 - n1008ac2 - n1010ac2 -
                   n1014ac2 + n1200ac2 - n1201ac2;

contbos3..  0 =l= n1003ac3 + n1005ac3 + n1011ac3 - n1006ac3;

contbos4..  0 =l= n1003ac4 + n1005ac4 + n1011ac4 + n1013ac4
                   - n1006ac4 - n1008ac4 - n1010ac4 -
                   n1014ac4 + n1200ac4 - n1201ac4;

contord1..  0 =l= -n1003ac1 - n1011ac1 - n1021ac1 + n1002ac1
                   + n1006ac1;

contord2..  0 =l= -n1003ac2 - n1011ac2 - n1013ac2 - n1017ac2
                   - n1019ac2 - n1021ac2 + n1002ac2 +
                   n1004ac2 + n1006ac2 + n1008ac2 +
                   n1010ac2;

contord3..  0 =l= -n1003ac3 - n1011ac3 - n1021ac3 + n1002ac3
                   + n1006ac3;

contord4..  0 =l= -n1003ac4 - n1011ac4 - n1013ac4 - n1017ac4
                   - n1019ac4 - n1021ac4 + n1002ac4 +
                   n1004ac4 + n1006ac4 + n1008ac4 +
                   n1010ac4;

contlga2..  0 =l= n1015ac2 + n1017ac2 + n1019ac2 - n1004ac2
                   - n1012ac2 - n1200ac2 + n1201ac2;

contlga4..  0 =l= n1015ac4 + n1017ac4 + n1019ac4 - n1004ac4
                   - n1012ac4 - n1200ac4 + n1201ac4;

contcle1..  0 =l= -n1005ac1 + n1021ac1 - n1002ac1;

contcle2..  0 =l= -n1005ac2 - n1015ac2 + n1021ac2 - n1002ac2
                   + n1012ac2 + n1014ac2;

contcle3..  0 =l= -n1005ac3 + n1021ac3 - n1002ac3;

contcle4..  0 =l= -n1005ac4 - n1015ac4 + n1021ac4 - n1002ac4
                   + n1012ac4 + n1014ac4;

dmbosord1..  0 =l=  pbosord0 + pbosord1 + pbosord2 +
                   pbosord3 + pbosord4 + 302.0*(-1);
dmboslga1..  0 =l=  pboslga0 + pboslga1 + pboslga2 +
                   pboslga3 + 2352.0*(-1);
dmboscle1..  0 =l=  pboscle0 + pboscle1 + pboscle2 +
                   pboscle3 + 142.0*(-1);
dmordbos1..  0 =l=  pordbos0 + pordbos1 + pordbos2 +
                   pordbos3 + pordbos4 + 302.0*(-1);
dmordlga1..  0 =l=  pordlga0 + pordlga1 + pordlga2 +
                   pordlga3 + 515.0*(-1);
dmordcle1..  0 =l=  pordcle0 + pordcle1 + pordcle2 +
                   pordcle3 + 619.0*(-1);
dmlgabos1..  0 =l=  plgabos0 + plgabos1 + plgabos2 +
                   plgabos3 + plgabos4 + plgabos5 + 2743.0*(-1);
dmlgaord1..  0 =l=  plgaord0 + plgaord1 + plgaord2 +
                   plgaord3 + 712.0*(-1);
dmlgacle1..  0 =l=  plgacle0 + plgacle1 + plgacle2 +
                   517.0*(-1);
dmclebos1..  0 =l=  pclebos0 + pclebos1 + pclebos2 +
                   pclebos3 + pclebos4 + 131.0*(-1);
dmcleord1..  0 =l=  pcleord0 + pcleord1 + pcleord2 +
                   pcleord3 + pcleord4 + 712.0*(-1);
dmclelga1..  0 =l=  pclelga0 + pclelga1 + pclelga2 +
                   pclelga3 + 409.0*(-1);


dmbosord2..         pbosord0 + pbosord1 + pbosord2 +
                   pbosord3 + pbosord4 + 302.0*(-1)=l=  61.0;
dmboslga2..         pboslga0 + pboslga1 + pboslga2 +
                   pboslga3 + 2352.0*(-1)=l=  471.0;
dmboscle2..         pboscle0 + pboscle1 + pboscle2 +
                   pboscle3 + 142.0*(-1)=l=  29.0;
dmordbos2..         pordbos0 + pordbos1 + pordbos2 +
                   pordbos3 + pordbos4 + 302.0*(-1)=l=  61.0;
dmordlga2..         pordlga0 + pordlga1 + pordlga2 +
                   pordlga3 + 515.0*(-1)=l=  103.0;
dmordcle2..         pordcle0 + pordcle1 + pordcle2 +
                   pordcle3 + 619.0*(-1)=l=  124.0;
dmlgabos2..         plgabos0 + plgabos1 + plgabos2 +
                   plgabos3 + plgabos4 + plgabos5 + 2743.0*(-1)=l=  549.0;
dmlgaord2..         plgaord0 + plgaord1 + plgaord2 +
                   plgaord3 + 712.0*(-1)=l=  143.0;
dmlgacle2..         plgacle0 + plgacle1 + plgacle2 +
                   517.0*(-1)=l=  104.0;
dmclebos2..         pclebos0 + pclebos1 + pclebos2 +
                   pclebos3 + pclebos4 + 131.0*(-1)=l=  27.0;
dmcleord2..         pcleord0 + pcleord1 + pcleord2 +
                   pcleord3 + pcleord4 + 712.0*(-1)=l=  143.0;
dmclelga2..         pclelga0 + pclelga1 + pclelga2 +
                   pclelga3 + 409.0*(-1)=l=  82.0;

msbosord..  0 =l= n1003ac1 + n1003ac2 + n1011ac1 + n1011ac2
                   + n1013ac2 + n1100ac2 + n1102ac2 +
                   3.0*(-1);

msboslga..  0 =l= n1013ac2 + n1100ac2 + n1102ac2 + n1200ac2
                   + 7.0*(-1);

msboscle..  0 =l= n1005ac1 + n1005ac2 + n1011ac1 + n1011ac2
                   + n1100ac2 + n1102ac2 + (-1);

msordbos..  0 =l= n1006ac1 + n1006ac2 + n1008ac2 + n1010ac2
                   + n1100ac2 + n1102ac2 + 3.0*(-1);

msordlga..  0 =l= n1004ac2 + n1008ac2 + n1010ac2 + n1102ac2
                   + 4.0*(-1);

msordcle..  0 =l= n1002ac1 + n1002ac2 + n1006ac1 + n1006ac2
                   + n1010ac2 + n1100ac2 + 5.0*(-1);

mslgabos..  0 =l= n1008ac2 + n1010ac2 + n1014ac2 + n1100ac2
                   + n1102ac2 + n1201ac2 + 7.0*(-1);

mslgaord..  0 =l= n1013ac2 + n1017ac2 + n1019ac2 + n1100ac2
                   + 5.0*(-1);

mslgacle..  0 =l= n1015ac2 + n1019ac2 + n1100ac2 + 4.0*(-1);

msclebos..  0 =l= n1006ac1 + n1006ac2 + n1010ac2 + n1014ac2
                   + n1100ac2 + n1102ac2 + (-1);

mscleord..  0 =l= n1011ac1 + n1011ac2 + n1019ac2 + n1021ac1
                   + n1021ac2 + n1100ac2 + n1102ac2 +
                   6.0*(-1);

msclelga..  0 =l= n1010ac2 + n1012ac2 + n1014ac2 + n1102ac2
                   + 3.0*(-1);

dcbosord1..  0 =l= bbosord0 + bbosord1 + cbosord0 + cbosord1
                   + cbosord2 + cbosord3 + cbosord4 +
                   12.0*(-1);
dcbosord2..        bbosord0 + bbosord1 + cbosord0 + cbosord1
                   + cbosord2 + cbosord3 + cbosord4 +
                   12.0*(-1)=l= 12.0;


dcboscle1..  0 =l= bboscle0 + bboscle1 + cboscle0 + cboscle1
                   + cboscle2 + cboscle3 + 16.0*(-1);
dcboscle2..        bboscle0 + bboscle1 + cboscle0 + cboscle1
                   + cboscle2 + cboscle3 + 16.0*(-1)=l= 3.2;

dcordbos1..  0 =l= bordbos0 + cordbos0 + cordbos1 + cordbos2
                   + cordbos3 + cordbos4 + 24.0*(-1);
dcordbos2..        bordbos0 + cordbos0 + cordbos1 + cordbos2
                   + cordbos3 + cordbos4 + 24.0*(-1)=l= 4.8;


dcordlga1..  0 =l= cordlga0 + cordlga1 + cordlga2 + cordlga3
                   + 13.0*(-1);
dcordlga2..        cordlga0 + cordlga1 + cordlga2 + cordlga3
                   + 13.0*(-1)=l= 2.6;


dclgaord1..  0 =l= clgaord0 + clgaord1 + clgaord2 + clgaord3
                   + 45.0*(-1);
dclgaord2..        clgaord0 + clgaord1 + clgaord2 + clgaord3
                   + 45.0*(-1)=l= 9.0;


dclgacle1..  0 =l= clgacle0 + clgacle1 + clgacle2 + 16.0*(-1);
dclgacle2..  clgacle0 + clgacle1 + clgacle2 + 16.0*(-1)=l= 3.2;


dcclelga1..  0 =l= cclelga0 + cclelga1 + cclelga2 + cclelga3
                   + 5.0*(-1);
dcclelga2..        cclelga0 + cclelga1 + cclelga2 + cclelga3
                   + 5.0*(-1)=l= 5.0;


mcordbos..  0 =l= n1006ac3 + n1006ac4 + n1008ac4 + n1010ac4
                   + n1100ac4 + n1102ac4 + (-1);

mclgaord..  0 =l= n1013ac4 + n1017ac4 + n1019ac4 + n1100ac4
                   + 2.0*(-1);


Def_obj..  obj =e= 1.0 * pbosord0 * pbosord0 + 1.063380241 *
                         pbosord1 * pbosord1 + 1.126760602 *
                         pbosord2 * pbosord2 + 1.190140843 *
                         pbosord3 * pbosord3 + 1.253521085 *
                         pbosord4 * pbosord4 + 1.316901445 *
                         pboslga0 * pboslga0 + 1.380281687 *
                         pboslga1 * pboslga1 + 1.443661928 *
                         pboslga2 * pboslga2 + 1.507042289 *
                         pboslga3 * pboslga3 + 1.570422530 *
                         pboscle0 * pboscle0 + 1.633802772 *
                         pboscle1 * pboscle1 + 1.697183132 *
                         pboscle2 * pboscle2 + 1.760563374 *
                         pboscle3 * pboscle3 + 1.823943615 *
                         pordbos0 * pordbos0 + 1.887323976 *
                         pordbos1 * pordbos1 + 1.950704217 *
                         pordbos2 * pordbos2 + 2.014084578 *
                         pordbos3 * pordbos3 + 2.077464819 *
                         pordbos4 * pordbos4 + 2.140845060 *
                         pordlga0 * pordlga0 + 2.204225302 *
                         pordlga1 * pordlga1 + 2.267605543 *
                         pordlga2 * pordlga2 + 2.330986023 *
                         pordlga3 * pordlga3 + 2.394366264 *
                         pordcle0 * pordcle0 + 2.457746506 *
                         pordcle1 * pordcle1 + 2.521126747 *
                         pordcle2 * pordcle2 + 2.584506989 *
                         pordcle3 * pordcle3 + 2.647887230 *
                         plgabos0 * plgabos0 + 2.711267710 *
                         plgabos1 * plgabos1 + 2.774647951 *
                         plgabos2 * plgabos2 + 2.838028193 *
                         plgabos3 * plgabos3 + 2.901408434 *
                         plgabos4 * plgabos4 + 2.964788675 *
                         plgabos5 * plgabos5 + 3.028168917 *
                         plgaord0 * plgaord0 + 3.091549397 *
                         plgaord1 * plgaord1 + 3.154929638 *
                         plgaord2 * plgaord2 + 3.218309879 *
                         plgaord3 * plgaord3 + 3.281690121 *
                         plgacle0 * plgacle0 + 3.345070362 *
                         plgacle1 * plgacle1 + 3.408450603 *
                         plgacle2 * plgacle2 + 3.471831083 *
                         pclebos0 * pclebos0 + 3.535211325 *
                         pclebos1 * pclebos1 + 3.598591566 *
                         pclebos2 * pclebos2 + 3.661971807 *
                         pclebos3 * pclebos3 + 3.725352049 *
                         pclebos4 * pclebos4 + 3.788732290 *
                         pcleord0 * pcleord0 + 3.852112770 *
                         pcleord1 * pcleord1 + 3.915493011 *
                         pcleord2 * pcleord2 + 3.978873253 *
                         pcleord3 * pcleord3 + 4.042253494 *
                         pcleord4 * pcleord4 + 4.105633736 *
                         pclelga0 * pclelga0 + 4.169013977 *
                         pclelga1 * pclelga1 + 4.232394218 *
                         pclelga2 * pclelga2 + 4.295774460 *
                         pclelga3 * pclelga3 + 4.359154701 *
                         bbosord0 * bbosord0 + 4.422535419 *
                         bbosord1 * bbosord1 + 4.485915661 *
                         bboscle0 * bboscle0 + 4.549295902 *
                         bboscle1 * bboscle1 + 4.612676144 *
                         bordbos0 * bordbos0 + 4.676056385 *
                         cbosord0 * cbosord0 + 4.739436626 *
                         cbosord1 * cbosord1 + 4.802816868 *
                         cbosord2 * cbosord2 + 4.866197109 *
                         cbosord3 * cbosord3 + 4.929577351 *
                         cbosord4 * cbosord4 + 4.992957592 *
                         cboscle0 * cboscle0 + 5.056337833 *
                         cboscle1 * cboscle1 + 5.119718075 *
                         cboscle2 * cboscle2 + 5.183098793 *
                         cboscle3 * cboscle3 + 5.246479034 *
                         cordbos0 * cordbos0 + 5.309859276 *
                         cordbos1 * cordbos1 + 5.373239517 *
                         cordbos2 * cordbos2 + 5.436619759 *
                         cordbos3 * cordbos3 + 5.5         *
                         cordbos4 * cordbos4 + 5.563380241 *
                         cordlga0 * cordlga0 + 5.626760483 *
                         cordlga1 * cordlga1 + 5.690140724 *
                         cordlga2 * cordlga2 + 5.753520966 *
                         cordlga3 * cordlga3 + 5.816901207 *
                         clgaord0 * clgaord0 + 5.880281925 *
                         clgaord1 * clgaord1 + 5.943662167 *
                         clgaord2 * clgaord2 + 6.007042408 *
                         clgaord3 * clgaord3 + 6.070422649 *
                         clgacle0 * clgacle0 + 6.133802891 *
                         clgacle1 * clgacle1 + 6.197183132 *
                         clgacle2 * clgacle2 + 6.260563374 *
                         cclelga0 * cclelga0 + 6.323943615 *
                         cclelga1 * cclelga1 + 6.387323856 *
                         cclelga2 * cclelga2 + 6.450704098 *
                         cclelga3 * cclelga3 + 6.514084339 *
                         grdtimo1 * grdtimo1 + 6.577464581 *
                         grdtimn1 * grdtimn1 + 6.640845299 *
                         grdtimo2 * grdtimo2 + 6.704225540 *
                         grdtimn2 * grdtimn2 + 6.767605782 *
                         grdtimn3 * grdtimn3 + 6.830986023 *
                         grdtimn4 * grdtimn4 + 6.894366264 *
                         n1003ac1 * n1003ac1 + 6.957746506 *
                         n1003ac2 * n1003ac2 + 7.021126747 *
                         n1003ac3 * n1003ac3 + 7.084506989 *
                         n1003ac4 * n1003ac4 + 7.147887230 *
                         n1005ac1 * n1005ac1 + 7.211267471 *
                         n1005ac2 * n1005ac2 + 7.274647713 *
                         n1005ac3 * n1005ac3 + 7.338027954 *
                         n1005ac4 * n1005ac4 + 7.401408672 *
                         n1011ac1 * n1011ac1 + 7.464788914 *
                         n1011ac2 * n1011ac2 + 7.528169155 *
                         n1011ac3 * n1011ac3 + 7.591549397 *
                         n1011ac4 * n1011ac4 + 7.654929638 *
                         n1013ac2 * n1013ac2 + 7.718309879 *
                         n1013ac4 * n1013ac4 + 7.781690121 *
                         n1015ac2 * n1015ac2 + 7.845070362 *
                         n1015ac4 * n1015ac4 + 7.908450603 *
                         n1017ac2 * n1017ac2 + 7.971830845 *
                         n1017ac4 * n1017ac4 + 8.035211563 *
                         n1019ac2 * n1019ac2 + 8.098591805 *
                         n1019ac4 * n1019ac4 + 8.161972046 *
                         n1021ac1 * n1021ac1 + 8.225352287 *
                         n1021ac2 * n1021ac2 + 8.288732529 *
                         n1021ac3 * n1021ac3 + 8.352112770 *
                         n1021ac4 * n1021ac4 + 8.415493011 *
                         n1002ac1 * n1002ac1 + 8.478873253 *
                         n1002ac2 * n1002ac2 + 8.542253494 *
                         n1002ac3 * n1002ac3 + 8.605633736 *
                         n1002ac4 * n1002ac4 + 8.669013977 *
                         n1004ac2 * n1004ac2 + 8.732394218 *
                         n1004ac4 * n1004ac4 + 8.795774460 *
                         n1006ac1 * n1006ac1 + 8.859154701 *
                         n1006ac2 * n1006ac2 + 8.922534943 *
                         n1006ac3 * n1006ac3 + 8.985915184 *
                         n1006ac4 * n1006ac4 + 9.049295425 *
                         n1008ac2 * n1008ac2 + 9.112675667 *
                         n1008ac4 * n1008ac4 + 9.176055908 *
                         n1010ac2 * n1010ac2 + 9.239436150 *
                         n1010ac4 * n1010ac4 + 9.302817345 *
                         n1012ac2 * n1012ac2 + 9.366197586 *
                         n1012ac4 * n1012ac4 + 9.429577827 *
                         n1014ac2 * n1014ac2 + 9.492958069 *
                         n1014ac4 * n1014ac4 + 9.556338310 *
                         n1100ac2 * n1100ac2 + 9.619718552 *
                         n1100ac4 * n1100ac4 + 9.683098793 *
                         n1102ac2 * n1102ac2 + 9.746479034 *
                         n1102ac4 * n1102ac4 + 9.809859276 *
                         n1200ac2 * n1200ac2 + 9.873239517 *
                         n1200ac4 * n1200ac4 + 9.936619759 *
                         n1201ac2 * n1201ac2 + 10.0        *
                         n1201ac4 * n1201ac4 -
                         0.075*pbosord0 - 0.075*pbosord1     -
                         0.075*pbosord2 - 0.075*pbosord3     -
                         0.075*pbosord4 - 0.027*pboslga0     -
                         0.027*pboslga1 - 0.027*pboslga2     -
                         0.027*pboslga3 - 0.053*pboscle0     -
                         0.053*pboscle1 - 0.053*pboscle2     -
                         0.053*pboscle3 - 0.075*pordbos0     -
                         0.075*pordbos1 - 0.075*pordbos2     -
                         0.075*pordbos3 - 0.075*pordbos4     -
                         0.068*pordlga0 - 0.068*pordlga1     -
                         0.068*pordlga2 - 0.068*pordlga3     -
                         0.035*pordcle0 - 0.035*pordcle1     -
                         0.035*pordcle2 - 0.035*pordcle3     -
                         0.027*plgabos0 - 0.027*plgabos1     -
                         0.027*plgabos2 - 0.027*plgabos3     -
                         0.027*plgabos4 - 0.027*plgabos5     -
                         0.068*plgaord0 - 0.068*plgaord1     -
                         0.068*plgaord2 - 0.068*plgaord3     -
                         0.037*plgacle0 - 0.037*plgacle1     -
                         0.037*plgacle2 - 0.053*pclebos0     -
                         0.053*pclebos1 - 0.053*pclebos2     -
                         0.053*pclebos3 - 0.053*pclebos4     -
                         0.035*pcleord0 - 0.035*pcleord1     -
                         0.035*pcleord2 - 0.035*pcleord3     -
                         0.035*pcleord4 - 0.037*pclelga0     -
                         0.037*pclelga1 - 0.037*pclelga2     -
                         0.037*pclelga3 - 0.75*bbosord0      -
                         0.75*bbosord1  - 0.53*bboscle0      -
                         0.53*bboscle1  - 0.75*bordbos0      -
                         0.75*cbosord0  - 0.75*cbosord1      -
                         0.75*cbosord2  - 0.75*cbosord3      -
                         0.75*cbosord4  - 0.53*cboscle0      -
                         0.53*cboscle1  - 0.53*cboscle2      -
                         0.53*cboscle3  - 0.75*cordbos0      -
                         0.75*cordbos1  - 0.75*cordbos2      -
                         0.75*cordbos3  - 0.75*cordbos4      -
                         0.68*cordlga0  - 0.68*cordlga1      -
                         0.68*cordlga2  - 0.68*cordlga3      -
                         0.68*clgaord0  - 0.68*clgaord1      -
                         0.68*clgaord2  - 0.68*clgaord3      -
                         0.37*clgacle0  - 0.37*clgacle1      -
                         0.37*clgacle2  - 0.37*cclelga0      -
                         0.37*cclelga1  - 0.37*cclelga2      -
                         0.37*cclelga3  + 0.65*grdtimo1      -
                         0.05*grdtimn1  + 0.275*grdtimo2     -
                         0.02889*grdtimn2 - 0.03611*grdtimn3 -
                         0.01333*grdtimn4 + 0.01*n1003ac1    +
                         0.02*n1003ac2    + 0.03*n1003ac3    +
                         0.04*n1003ac4    + 4.04337*n1005ac1 +
                         1.60964*n1005ac2 + 1.93119*n1005ac3 +
                         1.34618*n1005ac4 + 1.1*n1011ac1     +
                         1.2*n1011ac2     + 1.3*n1011ac3     +
                         2.34647*n1011ac4 + 2.36783*n1013ac2 +
                         1.90292*n1013ac4 + 1.36416*n1015ac2 +
                         1.14401*n1015ac4 + 1.64736*n1017ac2 +
                         1.33312*n1017ac4 + 2.55381*n1019ac2 +
                         2.14431*n1019ac4 + 3.12679*n1021ac1 +
                         1.18965*n1021ac2 + 1.42472*n1021ac3 +
                         1.0003*n1021ac4  + 3.12679*n1002ac1 +
                         1.18965*n1002ac2 + 1.42472*n1002ac3 +
                         1.0003*n1002ac4  + 1.64736*n1004ac2 +
                         1.33312*n1004ac4 + 7.17016*n1006ac1 +
                         2.79929*n1006ac2 + 3.35591*n1006ac3 +
                         2.34647*n1006ac4 + 2.36783*n1008ac2 +
                         1.90292*n1008ac4 + 3.27428*n1010ac2 +
                         2.71411*n1010ac4 + 1.36416*n1012ac2 +
                         1.14401*n1012ac4 + 2.08463*n1014ac2 +
                         1.71382*n1014ac4 + 6.07357*n1100ac2 +
                         5.06059*n1100ac4 + 5.16712*n1102ac2 +
                         4.24939*n1102ac4 + 0.72047*n1200ac2 +
                         0.5698*n1200ac4  + 0.72047*n1201ac2 +
                         0.5698*n1201ac4;


pbosord0.l = 0.0 ;
pbosord1.l = 0.0 ;
pbosord2.l = 0.0 ;
pbosord3.l = 0.0 ;
pbosord4.l = 0.0 ;
pboslga0.l = 0.0 ;
pboslga1.l = 0.0 ;
pboslga2.l = 0.0 ;
pboslga3.l = 0.0 ;
pboscle0.l = 0.0 ;
pboscle1.l = 0.0 ;
pboscle2.l = 0.0 ;
pboscle3.l = 0.0 ;
pordbos0.l = 0.0 ;
pordbos1.l = 0.0 ;
pordbos2.l = 0.0 ;
pordbos3.l = 0.0 ;
pordbos4.l = 0.0 ;
pordlga0.l = 0.0 ;
pordlga1.l = 0.0 ;
pordlga2.l = 0.0 ;
pordlga3.l = 0.0 ;
pordcle0.l = 0.0 ;
pordcle1.l = 0.0 ;
pordcle2.l = 0.0 ;
pordcle3.l = 0.0 ;
plgabos0.l = 0.0 ;
plgabos1.l = 0.0 ;
plgabos2.l = 0.0 ;
plgabos3.l = 0.0 ;
plgabos4.l = 0.0 ;
plgabos5.l = 0.0 ;
plgaord0.l = 0.0 ;
plgaord1.l = 0.0 ;
plgaord2.l = 0.0 ;
plgaord3.l = 0.0 ;
plgacle0.l = 0.0 ;
plgacle1.l = 0.0 ;
plgacle2.l = 0.0 ;
pclebos0.l = 0.0 ;
pclebos1.l = 0.0 ;
pclebos2.l = 0.0 ;
pclebos3.l = 0.0 ;
pclebos4.l = 0.0 ;
pcleord0.l = 0.0 ;
pcleord1.l = 0.0 ;
pcleord2.l = 0.0 ;
pcleord3.l = 0.0 ;
pcleord4.l = 0.0 ;
pclelga0.l = 0.0 ;
pclelga1.l = 0.0 ;
pclelga2.l = 0.0 ;
pclelga3.l = 0.0 ;
bbosord0.l = 0.0 ;
bbosord1.l = 0.0 ;
bboscle0.l = 0.0 ;
bboscle1.l = 0.0 ;
bordbos0.l = 0.0 ;
cbosord0.l = 0.0 ;
cbosord1.l = 0.0 ;
cbosord2.l = 0.0 ;
cbosord3.l = 0.0 ;
cbosord4.l = 0.0 ;
cboscle0.l = 0.0 ;
cboscle1.l = 0.0 ;
cboscle2.l = 0.0 ;
cboscle3.l = 0.0 ;
cordbos0.l = 0.0 ;
cordbos1.l = 0.0 ;
cordbos2.l = 0.0 ;
cordbos3.l = 0.0 ;
cordbos4.l = 0.0 ;
cordlga0.l = 0.0 ;
cordlga1.l = 0.0 ;
cordlga2.l = 0.0 ;
cordlga3.l = 0.0 ;
clgaord0.l = 0.0 ;
clgaord1.l = 0.0 ;
clgaord2.l = 0.0 ;
clgaord3.l = 0.0 ;
clgacle0.l = 0.0 ;
clgacle1.l = 0.0 ;
clgacle2.l = 0.0 ;
cclelga0.l = 0.0 ;
cclelga1.l = 0.0 ;
cclelga2.l = 0.0 ;
cclelga3.l = 0.0 ;
grdtimo1.l = 0.0 ;
n1003ac1.l = 0.0 ; n1003ac1.up =   7.0 ;
n1003ac2.l = 0.0 ; n1003ac2.up =   7.0 ;
n1003ac3.l = 0.0 ; n1003ac3.up =   2.0 ;
n1003ac4.l = 0.0 ; n1003ac4.up =   2.0 ;
n1005ac1.l = 0.0 ; n1005ac1.up =   7.0 ;
n1005ac2.l = 0.0 ; n1005ac2.up =   7.0 ;
n1005ac3.l = 0.0 ; n1005ac3.up =   2.0 ;
n1005ac4.l = 0.0 ; n1005ac4.up =   2.0 ;
n1011ac1.l = 0.0 ; n1011ac1.up =   7.0 ;
n1011ac2.l = 0.0 ; n1011ac2.up =   7.0 ;
n1011ac3.l = 0.0 ; n1011ac3.up =   2.0 ;
n1011ac4.l = 0.0 ; n1011ac4.up =   2.0 ;
n1013ac2.l = 0.0 ; n1013ac2.up =  14.0 ;
n1013ac4.l = 0.0 ; n1013ac4.up =   2.0 ;
n1015ac2.l = 0.0 ; n1015ac2.up =   7.0 ;
n1015ac4.l = 0.0 ; n1015ac4.up =   2.0 ;
n1017ac2.l = 0.0 ; n1017ac2.up =   7.0 ;
n1017ac4.l = 0.0 ; n1017ac4.up =   2.0 ;
n1019ac2.l = 0.0 ; n1019ac2.up =   7.0 ;
n1019ac4.l = 0.0 ; n1019ac4.up =   2.0 ;
n1021ac1.l = 0.0 ; n1021ac1.up =   7.0 ;
n1021ac2.l = 0.0 ; n1021ac2.up =   7.0 ;
n1021ac3.l = 0.0 ; n1021ac3.up =   2.0 ;
n1021ac4.l = 0.0 ; n1021ac4.up =   2.0 ;
n1002ac1.l = 0.0 ; n1002ac1.up =   7.0 ;
n1002ac2.l = 0.0 ; n1002ac2.up =   7.0 ;
n1002ac3.l = 0.0 ; n1002ac3.up =   2.0 ;
n1002ac4.l = 0.0 ; n1002ac4.up =   2.0 ;
n1004ac2.l = 0.0 ; n1004ac2.up =   7.0 ;
n1004ac4.l = 0.0 ; n1004ac4.up =   2.0 ;
n1006ac1.l = 0.0 ; n1006ac1.up =   7.0 ;
n1006ac2.l = 0.0 ; n1006ac2.up =   7.0 ;
n1006ac3.l = 0.0 ; n1006ac3.up =   2.0 ;
n1006ac4.l = 0.0 ; n1006ac4.up =   2.0 ;
n1008ac2.l = 0.0 ; n1008ac2.up =  14.0 ;
n1008ac4.l = 0.0 ; n1008ac4.up =   2.0 ;
n1010ac2.l = 0.0 ; n1010ac2.up =  14.0 ;
n1010ac4.l = 0.0 ; n1010ac4.up =   2.0 ;
n1012ac2.l = 0.0 ; n1012ac2.up =   7.0 ;
n1012ac4.l = 0.0 ; n1012ac4.up =   2.0 ;
n1014ac2.l = 0.0 ; n1014ac2.up =  14.0 ;
n1014ac4.l = 0.0 ; n1014ac4.up =   2.0 ;
n1100ac2.l = 0.0 ; n1100ac2.up =   7.0 ;
n1100ac4.l = 0.0 ; n1100ac4.up =   7.0 ;
n1102ac2.l = 0.0 ; n1102ac2.up =   7.0 ;
n1102ac4.l = 0.0 ; n1102ac4.up =   7.0 ;
n1200ac2.l = 0.0 ; n1200ac2.up =  14.0 ;
n1200ac4.l = 0.0 ; n1200ac4.up =   7.0 ;
n1201ac2.l = 0.0 ; n1201ac2.up =  14.0 ;
n1201ac4.l = 0.0 ; n1201ac4.up =   7.0 ;

grdtimn1.lo = -100.0 ; grdtimn1.l = -1.0 ; grdtimn1.l = 0.0;
grdtimo2.lo =    0.0 ;                   ; grdtimo2.l = 0.0;
grdtimn2.lo =  -90.0 ; grdtimn2.l = -1.0 ; grdtimn2.l = 0.0;
grdtimn3.lo =  -45.0 ; grdtimn3.l = -1.0 ; grdtimn3.l = 0.0;
grdtimn4.lo =  -45.0 ; grdtimn4.l = -1.0 ; grdtimn4.l = 0.0;

Model qpcboei2  /all/;

Solve qpcboei2  using nlp minimazing obj ;

display pbosord0.l; display pbosord1.l; display pbosord2.l;
display pbosord3.l; display pbosord4.l; display pboslga0.l;
display pboslga1.l; display pboslga2.l; display pboslga3.l;
display pboscle0.l; display pboscle1.l; display pboscle2.l;
display pboscle3.l; display pordbos0.l; display pordbos1.l;
display pordbos2.l; display pordbos3.l; display pordbos4.l;
display pordlga0.l; display pordlga1.l; display pordlga2.l;
display pordlga3.l; display pordcle0.l; display pordcle1.l;
display pordcle2.l; display pordcle3.l; display plgabos0.l;
display plgabos1.l; display plgabos2.l; display plgabos3.l;
display plgabos4.l; display plgabos5.l; display plgaord0.l;
display plgaord1.l; display plgaord2.l; display plgaord3.l;
display plgacle0.l; display plgacle1.l; display plgacle2.l;
display pclebos0.l; display pclebos1.l; display pclebos2.l;
display pclebos3.l; display pclebos4.l; display pcleord0.l;
display pcleord1.l; display pcleord2.l; display pcleord3.l;
display pcleord4.l; display pclelga0.l; display pclelga1.l;
display pclelga2.l; display pclelga3.l; display bbosord0.l;
display bbosord1.l; display bboscle0.l; display bboscle1.l;
display bordbos0.l; display cbosord0.l; display cbosord1.l;
display cbosord2.l; display cbosord3.l; display cbosord4.l;
display cboscle0.l; display cboscle1.l; display cboscle2.l;
display cboscle3.l; display cordbos0.l; display cordbos1.l;
display cordbos2.l; display cordbos3.l; display cordbos4.l;
display cordlga0.l; display cordlga1.l; display cordlga2.l;
display cordlga3.l; display clgaord0.l; display clgaord1.l;
display clgaord2.l; display clgaord3.l; display clgacle0.l;
display clgacle1.l; display clgacle2.l; display cclelga0.l;
display cclelga1.l; display cclelga2.l; display cclelga3.l;
display grdtimo1.l; display grdtimn1.l; display grdtimo2.l;
display grdtimn2.l; display grdtimn3.l; display grdtimn4.l;
display n1003ac1.l; display n1003ac2.l; display n1003ac3.l;
display n1003ac4.l; display n1005ac1.l; display n1005ac2.l;
display n1005ac3.l; display n1005ac4.l; display n1011ac1.l;
display n1011ac2.l; display n1011ac3.l; display n1011ac4.l;
display n1013ac2.l; display n1013ac4.l; display n1015ac2.l;
display n1015ac4.l; display n1017ac2.l; display n1017ac4.l;
display n1019ac2.l; display n1019ac4.l; display n1021ac1.l;
display n1021ac2.l; display n1021ac3.l; display n1021ac4.l;
display n1002ac1.l; display n1002ac2.l; display n1002ac3.l;
display n1002ac4.l; display n1004ac2.l; display n1004ac4.l;
display n1006ac1.l; display n1006ac2.l; display n1006ac3.l;
display n1006ac4.l; display n1008ac2.l; display n1008ac4.l;
display n1010ac2.l; display n1010ac4.l; display n1012ac2.l;
display n1012ac4.l; display n1014ac2.l; display n1014ac4.l;
display n1100ac2.l; display n1100ac4.l; display n1102ac2.l;
display n1102ac4.l; display n1200ac2.l; display n1200ac4.l;
display n1201ac2.l; display n1201ac4.l; display obj.l;
