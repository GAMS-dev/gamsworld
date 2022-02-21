*  NLP written by GAMS Convert at 10/06/06 11:32:04
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*        102        1      101        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        357      352        5        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98,e99,e100,e101,e102;


e1..    x1 + 5*x4 - 25*x5 =G= 1;

e2..    x1 + 0.1*x2 + 0.01*x3 + 5.41533749857067*x4 - 26.5351537429963*x5
      =G= 1.10517091807565;

e3..    x1 + 0.2*x2 + 0.04*x3 + 5.86273323916881*x4 - 28.1411195480103*x5
      =G= 1.22140275816017;

e4..    x1 + 0.3*x2 + 0.09*x3 + 6.34433639560722*x4 - 29.8183810593539*x5
      =G= 1.349858807576;

e5..    x1 + 0.4*x2 + 0.16*x3 + 6.86239360914984*x4 - 31.5670106020893*x5
      =G= 1.49182469764127;

e6..    x1 + 0.5*x2 + 0.25*x3 + 7.41924571815058*x4 - 33.3866057316776*x5
      =G= 1.64872127070013;

e7..    x1 + 0.6*x2 + 0.36*x3 + 8.01732272171824*x4 - 35.2762199755603*x5
      =G= 1.82211880039051;

e8..    x1 + 0.7*x2 + 0.49*x3 + 8.65913664212305*x4 - 37.2342875611291*x5
      =G= 2.01375270747048;

e9..    x1 + 0.8*x2 + 0.64*x3 + 9.34727189966837*x4 - 39.2585419786071*x5
      =G= 2.22554092849247;

e10..    x1 + 0.9*x2 + 0.81*x3 + 10.0843727557435*x4 - 41.3459282985483*x5
       =G= 2.45960311115695;

e11..    x1 + x2 + x3 + 10.8731273138362*x4 - 43.4925092553447*x5
       =G= 2.71828182845905;

e12..    x1 + 1.1*x2 + 1.21*x3 + 11.7162474933911*x4 - 45.6933652242252*x5
       =G= 3.00416602394643;

e13..    x1 + 1.2*x2 + 1.44*x3 + 12.6164443063989*x4 - 47.9424883643157*x5
       =G= 3.32011692273655;

e14..    x1 + 1.3*x2 + 1.69*x3 + 13.5763976701912*x4 - 50.2326713797075*x5
       =G= 3.66929666761924;

e15..    x1 + 1.4*x2 + 1.96*x3 + 14.5987198806408*x4 - 52.555391570307*x5
       =G= 4.05519996684467;

e16..    x1 + 1.5*x2 + 2.25*x3 + 15.6859117461832*x4 - 54.9006911116413*x5
       =G= 4.48168907033806;

e17..    x1 + 1.6*x2 + 2.56*x3 + 16.8403102429434*x4 - 57.2570548260075*x5
       =G= 4.95303242439511;

e18..    x1 + 1.7*x2 + 2.89*x3 + 18.0640263926998*x4 - 59.6112870959092*x5
       =G= 5.4739473917272;

e19..    x1 + 1.8*x2 + 3.24*x3 + 19.3588718861214*x4 - 61.9483900355886*x5
       =G= 6.04964746441295;

e20..    x1 + 1.9*x2 + 3.61*x3 + 20.7262727710657*x4 - 64.2514455903038*x5
       =G= 6.68589444227927;

e21..    x1 + 2*x2 + 4*x3 + 22.1671682967919*x4 - 66.5015048903759*x5
       =G= 7.38905609893065;

e22..    x1 + 2.1*x2 + 4.41*x3 + 23.6818927464462*x4 - 68.6774889646939*x5
       =G= 8.16616991256765;

e23..    x1 + 2.2*x2 + 4.84*x3 + 25.2700377984155*x4 - 70.7561058355635*x5
       =G= 9.02501349943412;

e24..    x1 + 2.3*x2 + 5.29*x3 + 26.9302926279997*x4 - 72.7117900955993*x5
       =G= 9.97418245481472;

e25..    x1 + 2.4*x2 + 5.76*x3 + 28.6602585896682*x4 - 74.5166723331372*x5
       =G= 11.0231763806416;

e26..    x1 + 2.5*x2 + 6.25*x3 + 30.4562349017587*x4 - 76.1405872543967*x5
       =G= 12.1824939607035;

e27..    x1 + 2.6*x2 + 6.76*x3 + 32.3129712840041*x4 - 77.5511310816097*x5
       =G= 13.4637380350017;

e28..    x1 + 2.7*x2 + 7.29*x3 + 34.2233829672075*x4 - 78.7137808245773*x5
       =G= 14.8797317248728;

e29..    x1 + 2.8*x2 + 7.84*x3 + 36.1782228964135*x4 - 79.5920903721097*x5
       =G= 16.444646771097;

e30..    x1 + 2.9*x2 + 8.41*x3 + 38.1657052758304*x4 - 80.1479810792439*x5
       =G= 18.1741453694431;

e31..    x1 + 3*x2 + 9*x3 + 40.1710738463753*x4 - 80.3421476927507*x5
       =G= 20.0855369231877;

e32..    x1 + 3.1*x2 + 9.61*x3 + 42.1761074347391*x4 - 80.1346041260043*x5
       =G= 22.1979512814416;

e33..    x1 + 3.2*x2 + 10.24*x3 + 44.1585543547968*x4 - 79.4853978386343*x5
       =G= 24.5325301971094;

e34..    x1 + 3.3*x2 + 10.89*x3 + 46.0914861651184*x4 - 78.3555264807013*x5
       =G= 27.1126389206579;

e35..    x1 + 3.4*x2 + 11.56*x3 + 47.9425600758352*x4 - 76.7080961213364*x5
       =G= 29.964100047397;

e36..    x1 + 3.5*x2 + 12.25*x3 + 49.6731779380385*x4 - 74.5097669070577*x5
       =G= 33.1154519586923;

e37..    x1 + 3.6*x2 + 12.96*x3 + 51.2375282211492*x4 - 71.7325395096088*x5
       =G= 36.598234443678;

e38..    x1 + 3.7*x2 + 13.69*x3 + 52.5814956680876*x4 - 68.3559443685139*x5
       =G= 40.4473043600674;

e39..    x1 + 3.8*x2 + 14.44*x3 + 53.641421391961*x4 - 64.3697056703532*x5
       =G= 44.7011844933008;

e40..    x1 + 3.9*x2 + 15.21*x3 + 54.3426940160832*x4 - 59.7769634176915*x5
       =G= 49.4024491055302;

e41..    x1 + 4*x2 + 16*x3 + 54.5981500331442*x4 - 54.5981500331442*x5
       =G= 54.5981500331442;

e42..    x1 + 4.1*x2 + 16.81*x3 + 54.3062588376258*x4 - 48.8756329538632*x5
       =G= 60.340287597362;

e43..    x1 + 4.2*x2 + 17.64*x3 + 53.3490648327401*x4 - 42.6792518661921*x5
       =G= 66.6863310409252;

e44..    x1 + 4.3*x2 + 18.49*x3 + 51.5898555897171*x4 - 36.112898912802*x5
       =G= 73.6997936995958;

e45..    x1 + 4.4*x2 + 19.36*x3 + 48.8705211989809*x4 - 29.3223127193885*x5
       =G= 81.4508686649681;

e46..    x1 + 4.5*x2 + 20.25*x3 + 45.0085656502609*x4 - 22.5042828251305*x5
       =G= 90.0171313005218;

e47..    x1 + 4.6*x2 + 21.16*x3 + 39.7937262567735*x4 - 15.9174905027094*x5
       =G= 99.4843156419338;

e48..    x1 + 4.7*x2 + 22.09*x3 + 32.984151735637*x4 - 9.89524552069111*x5
       =G= 109.947172452124;

e49..    x1 + 4.8*x2 + 23.04*x3 + 24.302083503747*x4 - 4.8604167007494*x5
       =G= 121.510417518735;

e50..    x1 + 4.9*x2 + 24.01*x3 + 13.4289779684935*x4 - 1.34289779684935*x5
       =G= 134.289779684936;

e51..    x1 + 5*x2 + 25*x3 =G= 148.413159102577;

e52..  - 5*x4 + 25*x5 =G= -0.99999;

e53..  - 4.9*x4 + 24.01*x5 =G= -0.99999;

e54..  - 4.8*x4 + 23.04*x5 =G= -0.99999;

e55..  - 4.7*x4 + 22.09*x5 =G= -0.99999;

e56..  - 4.6*x4 + 21.16*x5 =G= -0.99999;

e57..  - 4.5*x4 + 20.25*x5 =G= -0.99999;

e58..  - 4.4*x4 + 19.36*x5 =G= -0.99999;

e59..  - 4.3*x4 + 18.49*x5 =G= -0.99999;

e60..  - 4.2*x4 + 17.64*x5 =G= -0.99999;

e61..  - 4.1*x4 + 16.81*x5 =G= -0.99999;

e62..  - 4*x4 + 16*x5 =G= -0.99999;

e63..  - 3.9*x4 + 15.21*x5 =G= -0.99999;

e64..  - 3.8*x4 + 14.44*x5 =G= -0.99999;

e65..  - 3.7*x4 + 13.69*x5 =G= -0.99999;

e66..  - 3.6*x4 + 12.96*x5 =G= -0.99999;

e67..  - 3.5*x4 + 12.25*x5 =G= -0.99999;

e68..  - 3.4*x4 + 11.56*x5 =G= -0.99999;

e69..  - 3.3*x4 + 10.89*x5 =G= -0.99999;

e70..  - 3.2*x4 + 10.24*x5 =G= -0.99999;

e71..  - 3.1*x4 + 9.61*x5 =G= -0.99999;

e72..  - 3*x4 + 9*x5 =G= -0.99999;

e73..  - 2.9*x4 + 8.41*x5 =G= -0.99999;

e74..  - 2.8*x4 + 7.84*x5 =G= -0.99999;

e75..  - 2.7*x4 + 7.29*x5 =G= -0.99999;

e76..  - 2.6*x4 + 6.76*x5 =G= -0.99999;

e77..  - 2.5*x4 + 6.25*x5 =G= -0.99999;

e78..  - 2.4*x4 + 5.76*x5 =G= -0.99999;

e79..  - 2.3*x4 + 5.29*x5 =G= -0.99999;

e80..  - 2.2*x4 + 4.84*x5 =G= -0.99999;

e81..  - 2.1*x4 + 4.41*x5 =G= -0.99999;

e82..  - 2*x4 + 4*x5 =G= -0.99999;

e83..  - 1.9*x4 + 3.61*x5 =G= -0.99999;

e84..  - 1.8*x4 + 3.24*x5 =G= -0.99999;

e85..  - 1.7*x4 + 2.89*x5 =G= -0.99999;

e86..  - 1.6*x4 + 2.56*x5 =G= -0.99999;

e87..  - 1.5*x4 + 2.25*x5 =G= -0.99999;

e88..  - 1.4*x4 + 1.96*x5 =G= -0.99999;

e89..  - 1.3*x4 + 1.69*x5 =G= -0.99999;

e90..  - 1.2*x4 + 1.44*x5 =G= -0.99999;

e91..  - 1.1*x4 + 1.21*x5 =G= -0.99999;

e92..  - x4 + x5 =G= -0.99999;

e93..  - 0.9*x4 + 0.810000000000001*x5 =G= -0.99999;

e94..  - 0.8*x4 + 0.64*x5 =G= -0.99999;

e95..  - 0.7*x4 + 0.49*x5 =G= -0.99999;

e96..  - 0.6*x4 + 0.36*x5 =G= -0.99999;

e97..  - 0.5*x4 + 0.25*x5 =G= -0.99999;

e98..  - 0.4*x4 + 0.16*x5 =G= -0.99999;

e99..  - 0.3*x4 + 0.0899999999999999*x5 =G= -0.99999;

e100..  - 0.2*x4 + 0.0400000000000001*x5 =G= -0.99999;

e101..  - 0.0999999999999996*x4 + 0.00999999999999993*x5 =G= -0.99999;

e102..  - (sqr((-1) + x1/(1 - 5*x4 + 25*x5)) + sqr((-1) + (x1 + 0.1*x2 + 0.01*
       x3)/(1.10517091807565 - 5.41533749857067*x4 + 26.5351537429963*x5)) + 
       sqr((-1) + (x1 + 0.2*x2 + 0.04*x3)/(1.22140275816017 - 5.86273323916881*
       x4 + 28.1411195480103*x5)) + sqr((-1) + (x1 + 0.3*x2 + 0.09*x3)/(
       1.349858807576 - 6.34433639560722*x4 + 29.8183810593539*x5)) + sqr((-1)
        + (x1 + 0.4*x2 + 0.16*x3)/(1.49182469764127 - 6.86239360914984*x4 + 
       31.5670106020893*x5)) + sqr((-1) + (x1 + 0.5*x2 + 0.25*x3)/(
       1.64872127070013 - 7.41924571815058*x4 + 33.3866057316776*x5)) + sqr((-1
       ) + (x1 + 0.6*x2 + 0.36*x3)/(1.82211880039051 - 8.01732272171824*x4 + 
       35.2762199755603*x5)) + sqr((-1) + (x1 + 0.7*x2 + 0.49*x3)/(
       2.01375270747048 - 8.65913664212305*x4 + 37.2342875611291*x5)) + sqr((-1
       ) + (x1 + 0.8*x2 + 0.64*x3)/(2.22554092849247 - 9.34727189966837*x4 + 
       39.2585419786071*x5)) + sqr((-1) + (x1 + 0.9*x2 + 0.81*x3)/(
       2.45960311115695 - 10.0843727557435*x4 + 41.3459282985483*x5)) + sqr((-1
       ) + (x1 + x2 + x3)/(2.71828182845905 - 10.8731273138362*x4 + 
       43.4925092553447*x5)) + sqr((-1) + (x1 + 1.1*x2 + 1.21*x3)/(
       3.00416602394643 - 11.7162474933911*x4 + 45.6933652242252*x5)) + sqr((-1
       ) + (x1 + 1.2*x2 + 1.44*x3)/(3.32011692273655 - 12.6164443063989*x4 + 
       47.9424883643157*x5)) + sqr((-1) + (x1 + 1.3*x2 + 1.69*x3)/(
       3.66929666761924 - 13.5763976701912*x4 + 50.2326713797075*x5)) + sqr((-1
       ) + (x1 + 1.4*x2 + 1.96*x3)/(4.05519996684467 - 14.5987198806408*x4 + 
       52.555391570307*x5)) + sqr((-1) + (x1 + 1.5*x2 + 2.25*x3)/(
       4.48168907033806 - 15.6859117461832*x4 + 54.9006911116413*x5)) + sqr((-1
       ) + (x1 + 1.6*x2 + 2.56*x3)/(4.95303242439511 - 16.8403102429434*x4 + 
       57.2570548260075*x5)) + sqr((-1) + (x1 + 1.7*x2 + 2.89*x3)/(
       5.4739473917272 - 18.0640263926998*x4 + 59.6112870959092*x5)) + sqr((-1)
        + (x1 + 1.8*x2 + 3.24*x3)/(6.04964746441295 - 19.3588718861214*x4 + 
       61.9483900355886*x5)) + sqr((-1) + (x1 + 1.9*x2 + 3.61*x3)/(
       6.68589444227927 - 20.7262727710657*x4 + 64.2514455903038*x5)) + sqr((-1
       ) + (x1 + 2*x2 + 4*x3)/(7.38905609893065 - 22.1671682967919*x4 + 
       66.5015048903759*x5)) + sqr((-1) + (x1 + 2.1*x2 + 4.41*x3)/(
       8.16616991256765 - 23.6818927464462*x4 + 68.6774889646939*x5)) + sqr((-1
       ) + (x1 + 2.2*x2 + 4.84*x3)/(9.02501349943412 - 25.2700377984155*x4 + 
       70.7561058355635*x5)) + sqr((-1) + (x1 + 2.3*x2 + 5.29*x3)/(
       9.97418245481472 - 26.9302926279997*x4 + 72.7117900955993*x5)) + sqr((-1
       ) + (x1 + 2.4*x2 + 5.76*x3)/(11.0231763806416 - 28.6602585896682*x4 + 
       74.5166723331372*x5)) + sqr((-1) + (x1 + 2.5*x2 + 6.25*x3)/(
       12.1824939607035 - 30.4562349017587*x4 + 76.1405872543967*x5)) + sqr((-1
       ) + (x1 + 2.6*x2 + 6.76*x3)/(13.4637380350017 - 32.3129712840041*x4 + 
       77.5511310816097*x5)) + sqr((-1) + (x1 + 2.7*x2 + 7.29*x3)/(
       14.8797317248728 - 34.2233829672075*x4 + 78.7137808245773*x5)) + sqr((-1
       ) + (x1 + 2.8*x2 + 7.84*x3)/(16.444646771097 - 36.1782228964135*x4 + 
       79.5920903721097*x5)) + sqr((-1) + (x1 + 2.9*x2 + 8.41*x3)/(
       18.1741453694431 - 38.1657052758304*x4 + 80.1479810792439*x5)) + sqr((-1
       ) + (x1 + 3*x2 + 9*x3)/(20.0855369231877 - 40.1710738463753*x4 + 
       80.3421476927507*x5)) + sqr((-1) + (x1 + 3.1*x2 + 9.61*x3)/(
       22.1979512814416 - 42.1761074347391*x4 + 80.1346041260043*x5)) + sqr((-1
       ) + (x1 + 3.2*x2 + 10.24*x3)/(24.5325301971094 - 44.1585543547968*x4 + 
       79.4853978386343*x5)) + sqr((-1) + (x1 + 3.3*x2 + 10.89*x3)/(
       27.1126389206579 - 46.0914861651184*x4 + 78.3555264807013*x5)) + sqr((-1
       ) + (x1 + 3.4*x2 + 11.56*x3)/(29.964100047397 - 47.9425600758352*x4 + 
       76.7080961213364*x5)) + sqr((-1) + (x1 + 3.5*x2 + 12.25*x3)/(
       33.1154519586923 - 49.6731779380385*x4 + 74.5097669070577*x5)) + sqr((-1
       ) + (x1 + 3.6*x2 + 12.96*x3)/(36.598234443678 - 51.2375282211492*x4 + 
       71.7325395096088*x5)) + sqr((-1) + (x1 + 3.7*x2 + 13.69*x3)/(
       40.4473043600674 - 52.5814956680876*x4 + 68.3559443685139*x5)) + sqr((-1
       ) + (x1 + 3.8*x2 + 14.44*x3)/(44.7011844933008 - 53.641421391961*x4 + 
       64.3697056703532*x5)) + sqr((-1) + (x1 + 3.9*x2 + 15.21*x3)/(
       49.4024491055302 - 54.3426940160832*x4 + 59.7769634176915*x5)) + sqr((-1
       ) + (x1 + 4*x2 + 16*x3)/(54.5981500331442 - 54.5981500331442*x4 + 
       54.5981500331442*x5)) + sqr((-1) + (x1 + 4.1*x2 + 16.81*x3)/(
       60.340287597362 - 54.3062588376258*x4 + 48.8756329538632*x5)) + sqr((-1)
        + (x1 + 4.2*x2 + 17.64*x3)/(66.6863310409252 - 53.3490648327401*x4 + 
       42.6792518661921*x5)) + sqr((-1) + (x1 + 4.3*x2 + 18.49*x3)/(
       73.6997936995958 - 51.5898555897171*x4 + 36.112898912802*x5)) + sqr((-1)
        + (x1 + 4.4*x2 + 19.36*x3)/(81.4508686649681 - 48.8705211989809*x4 + 
       29.3223127193885*x5)) + sqr((-1) + (x1 + 4.5*x2 + 20.25*x3)/(
       90.0171313005218 - 45.0085656502609*x4 + 22.5042828251305*x5)) + sqr((-1
       ) + (x1 + 4.6*x2 + 21.16*x3)/(99.4843156419338 - 39.7937262567735*x4 + 
       15.9174905027094*x5)) + sqr((-1) + (x1 + 4.7*x2 + 22.09*x3)/(
       109.947172452124 - 32.984151735637*x4 + 9.89524552069111*x5)) + sqr((-1)
        + (x1 + 4.8*x2 + 23.04*x3)/(121.510417518735 - 24.302083503747*x4 + 
       4.8604167007494*x5)) + sqr((-1) + (x1 + 4.9*x2 + 24.01*x3)/(
       134.289779684936 - 13.4289779684935*x4 + 1.34289779684935*x5)) + sqr((-1
       ) + 0.00673794699908547*x1 + 0.0336897349954273*x2 + 0.168448674977137*
       x3)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 6; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
