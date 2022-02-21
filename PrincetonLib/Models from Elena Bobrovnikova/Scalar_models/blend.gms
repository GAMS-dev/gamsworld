*  NLP written by GAMS Convert at 06/26/06 16:29:34
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         15       15        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         25       25        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        361       73      288        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15;


e1.. x13/(x13 + 0.758671713695802*x14 + 0.758671713695802*x15 + 
     0.320917030567686*x16 + 0.364714640198511*x17 + 0.258010532475132*x18 + 
     0.705492712116606*x19 + 0.519119378384742*x20 + 0.330477796514896*x21 + 
     0.53442738191911*x22 + 0.957108747558064*x23 + 0.733713829309283*x24) - 
     123.7*x1/(40*x1 + 30.3468685478321*x2 + 30.3468685478321*x3 + 
     12.8366812227074*x4 + 14.5885856079404*x5 + 10.3204212990053*x6 + 
     28.2197084846642*x7 + 20.7647751353897*x8 + 13.2191118605958*x9 + 
     21.3770952767644*x10 + 38.2843499023226*x11 + 29.3485531723713*x12) =E= 0;

e2.. x14/(1.31809316460289*x13 + 1*x14 + 1*x15 + 0.422998544395924*x16 + 
     0.480727874276261*x17 + 0.340081919251024*x18 + 0.929905121518056*x19 + 
     0.684247704261832*x20 + 0.43560052463931*x21 + 0.704425079084199*x22 + 
     1.26155849793792*x23 + 0.967103183187181*x24) - 31.7*x2/(52.7237265841158*
     x1 + 40*x2 + 40*x3 + 16.919941775837*x4 + 19.2291149710505*x5 + 
     13.603276770041*x6 + 37.1962048607222*x7 + 27.3699081704733*x8 + 
     17.4240209855724*x9 + 28.177003163368*x10 + 50.4623399175168*x11 + 
     38.6841273274872*x12) =E= 0;

e3.. x15/(1.31809316460289*x13 + 1*x14 + 1*x15 + 0.422998544395924*x16 + 
     0.480727874276261*x17 + 0.340081919251024*x18 + 0.929905121518056*x19 + 
     0.684247704261832*x20 + 0.43560052463931*x21 + 0.704425079084199*x22 + 
     1.26155849793792*x23 + 0.967103183187181*x24) - 45.7*x3/(52.7237265841158*
     x1 + 40*x2 + 40*x3 + 16.919941775837*x4 + 19.2291149710505*x5 + 
     13.603276770041*x6 + 37.1962048607222*x7 + 27.3699081704733*x8 + 
     17.4240209855724*x9 + 28.177003163368*x10 + 50.4623399175168*x11 + 
     38.6841273274872*x12) =E= 0;

e4.. x16/(3.11607021363451*x13 + 2.36407432897454*x14 + 2.36407432897454*x15 + 
     x16 + 1.13647642679901*x17 + 0.803978935049737*x18 + 2.19836482616278*x19
      + 1.61761243230516*x20 + 1.02979201798763*x21 + 1.66531324614881*x22 + 
     2.98241805947471*x23 + 2.28630380884237*x24) - 14.7*x4/(124.64280854538*x1
      + 94.5629731589814*x2 + 94.5629731589814*x3 + 40*x4 + 45.4590570719603*x5
      + 32.1591574019895*x6 + 87.9345930465113*x7 + 64.7044972922063*x8 + 
     41.1916807195053*x9 + 66.6125298459525*x10 + 119.296722378988*x11 + 
     91.4521523536949*x12) =E= 0;

e5.. x17/(2.74186964212818*x13 + 2.08017894012388*x14 + 2.08017894012388*x15 + 
     0.879912663755459*x16 + x17 + 0.707431246342891*x18 + 1.9343690500952*x19
      + 1.42335766423358*x20 + 0.906127037661608*x21 + 1.46533021440605*x22 + 
     2.62426741914478*x23 + 2.01174767459274*x24) - 84.7*x5/(109.674785685127*
     x1 + 83.2071576049553*x2 + 83.2071576049553*x3 + 35.1965065502183*x4 + 40*
     x5 + 28.2972498537156*x6 + 77.3747620038079*x7 + 56.9343065693431*x8 + 
     36.2450815064643*x9 + 58.613208576242*x10 + 104.970696765791*x11 + 
     80.4699069837097*x12) =E= 0;

e6.. x18/(3.87581076790493*x13 + 2.94046799724708*x14 + 2.94046799724708*x15 + 
     1.24381368267831*x16 + 1.41356492969396*x17 + x18 + 2.7343562503*x19 + 
     2.0120084765717*x20 + 1.28086940228593*x21 + 2.07133940150533*x22 + 
     3.70957238984155*x23 + 2.84373596019768*x24) - 27.7*x6/(155.032430716197*
     x1 + 117.618719889883*x2 + 117.618719889883*x3 + 49.7525473071325*x4 + 
     56.5425971877585*x5 + 40*x6 + 109.374250012*x7 + 80.4803390628679*x8 + 
     51.2347760914371*x9 + 82.8535760602131*x10 + 148.382895593662*x11 + 
     113.749438407907*x12) =E= 0;

e7.. x19/(1.41744908604345*x13 + 1.07537852718513*x14 + 1.07537852718513*x15 + 
     0.454883551673945*x16 + 0.516964433416046*x17 + 0.36571679344646*x18 + x19
      + 0.735825288438898*x20 + 0.468435450627693*x21 + 0.757523604057837*x22
      + 1.35665291947037*x23 + 1.04000199677189*x24) - 49.7*x7/(
     56.6979634417381*x1 + 43.0151410874054*x2 + 43.0151410874054*x3 + 
     18.1953420669578*x4 + 20.6785773366419*x5 + 14.6286717378584*x6 + 40*x7 + 
     29.4330115375559*x8 + 18.7374180251077*x9 + 30.3009441623135*x10 + 
     54.2661167788148*x11 + 41.6000798708754*x12) =E= 0;

e8.. x20/(1.92633918446954*x13 + 1.46145905024088*x14 + 1.46145905024088*x15 + 
     0.618195050946143*x16 + 0.702564102564103*x17 + 0.497015798712697*x18 + 
     1.35901825570791*x19 + x20 + 0.636612329023796*x21 + 1.02948840704425*x22
      + 1.84371608421967*x23 + 1.41338169958567*x24) - 7.1*x8/(77.0535673787817
     *x1 + 58.4583620096352*x2 + 58.4583620096352*x3 + 24.7278020378457*x4 + 
     28.1025641025641*x5 + 19.8806319485079*x6 + 54.3607302283163*x7 + 40*x8 + 
     25.4644931609518*x9 + 41.17953628177*x10 + 73.7486433687866*x11 + 
     56.5352679834268*x12) =E= 0;

e9.. x21/(3.02592189413526*x13 + 2.29568134893324*x14 + 2.29568134893324*x15 + 
     0.971069868995633*x16 + 1.10359801488834*x17 + 0.780719719133997*x18 + 
     2.1347658437465*x19 + 1.57081469272428*x20 + x21 + 1.61713551577442*x22 + 
     2.89613631430432*x23 + 2.22016074013678*x24) - 2.1*x9/(121.03687576541*x1
      + 91.8272539573297*x2 + 91.8272539573297*x3 + 38.8427947598253*x4 + 
     44.1439205955335*x5 + 31.2287887653599*x6 + 85.39063374986*x7 + 
     62.832587708971*x8 + 40*x9 + 64.6854206309768*x10 + 115.845452572173*x11
      + 88.8064296054712*x12) =E= 0;

e10.. x22/(1.87116160928925*x13 + 1.41959738472127*x14 + 1.41959738472127*x15
       + 0.600487627365357*x16 + 0.682440033085194*x17 + 0.482779403159743*x18
       + 1.32009087854594*x19 + 0.971356251471627*x20 + 0.618377365561177*x21
       + x22 + 1.79090514434556*x23 + 1.37289714960813*x24) - 17.7*x10/(
      74.8464643715698*x1 + 56.7838953888507*x2 + 56.7838953888507*x3 + 
      24.0195050946143*x4 + 27.2976013234078*x5 + 19.3111761263897*x6 + 
      52.8036351418377*x7 + 38.8542500588651*x8 + 24.7350946224471*x9 + 40*x10
       + 71.6362057738225*x11 + 54.9158859843253*x12) =E= 0;

e11.. x23/(1.0448133532907*x13 + 0.79267033723331*x14 + 0.79267033723331*x15 + 
      0.335298398835517*x16 + 0.381058726220017*x17 + 0.269572849619661*x18 + 
      0.7371082062687*x19 + 0.542382858488345*x20 + 0.345287614764849*x21 + 
      0.558376864993273*x22 + x23 + 0.766594006356391*x24) - 0.85*x11/(
      41.7925341316279*x1 + 31.7068134893324*x2 + 31.7068134893324*x3 + 
      13.4119359534207*x4 + 15.2423490488007*x5 + 10.7829139847864*x6 + 
      29.484328250748*x7 + 21.6953143395338*x8 + 13.811504590594*x9 + 
      22.3350745997309*x10 + 40*x11 + 30.6637602542556*x12) =E= 0;

e12.. x24/(1.36292919671611*x13 + 1.03401582931865*x14 + 1.03401582931865*x15
       + 0.437387190684134*x16 + 0.497080231596361*x17 + 0.351650087770626*x18
       + 0.961536615414153*x19 + 0.707522957381681*x20 + 0.450417837736556*x21
       + 0.728386682342104*x22 + 1.30447145647927*x23 + x24) - 0.64*x12/(
      54.5171678686443*x1 + 41.360633172746*x2 + 41.360633172746*x3 + 
      17.4954876273654*x4 + 19.8832092638544*x5 + 14.066003510825*x6 + 
      38.4614646165661*x7 + 28.3009182952672*x8 + 18.0167135094622*x9 + 
      29.1354672936842*x10 + 52.1788582591708*x11 + 40*x12) =E= 0;

e13..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 =E= 1;

e14..    0.0320266461696131*x1 + 0.0276854928017719*x2 + 0.0287488500459982*x3
       + 0.0107874865156419*x4 + 0.0120918984280532*x5 + 0.0109170305676856*x6
       + 0.0170334537030728*x7 + 0.0120918984280532*x8 + 0.0123762376237624*x9
       + 0.0154997907528248*x10 + 0.0202429149797571*x11
       + 0.0203665987780041*x12 + 3.22548884201932*x13 + 2.44708714728149*x14
       + 2.44708714728149*x15 + 1.03511430131004*x16 + 1.17638300248139*x17
       + 0.832210093622001*x18 + 2.27555887105806*x19 + 1.67441376265599*x20
       + 1.06595244519393*x21 + 1.72378955724969*x22 + 3.08714358584762*x23
       + 2.36658576967236*x24 =E= 1.671;

e15..  - 0.0693*x1 - 0.0577*x2 - 0.05*x3 - 0.2*x4 - 0.26*x5 - 0.55*x6 - 0.06*x7
       - 0.1*x8 - 0.12*x9 - 0.18*x10 - 0.1*x11 - 0.09*x12 - 0.0693*x13
       - 0.0577*x14 - 0.05*x15 - 0.2*x16 - 0.26*x17 - 0.55*x18 - 0.06*x19
       - 0.1*x20 - 0.12*x21 - 0.18*x22 - 0.1*x23 - 0.09*x24 + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 0.04; 
x2.l = 0.04; 
x3.l = 0.04; 
x4.l = 0.04; 
x5.l = 0.04; 
x6.l = 0.04; 
x7.l = 0.04; 
x8.l = 0.04; 
x9.l = 0.04; 
x10.l = 0.04; 
x11.l = 0.04; 
x12.l = 0.04; 
x13.l = 0.04; 
x14.l = 0.04; 
x15.l = 0.04; 
x16.l = 0.04; 
x17.l = 0.04; 
x18.l = 0.04; 
x19.l = 0.04; 
x20.l = 0.04; 
x21.l = 0.04; 
x22.l = 0.04; 
x23.l = 0.04; 
x24.l = 0.04; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
