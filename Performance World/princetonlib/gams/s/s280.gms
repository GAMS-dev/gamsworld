*  NLP written by GAMS Convert at 07/02/05 18:32:28
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         11        1       10        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         21       21        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..    2.92896825396825*x1 =G= 2.92896825396825;

e2..    2.01987734487735*x2 =G= 2.01987734487735;

e3..    1.60321067821068*x3 =G= 1.60321067821068;

e4..    1.34680042180042*x4 =G= 1.34680042180042;

e5..    1.16822899322899*x5 =G= 1.16822899322899;

e6..    1.03489565989566*x6 =G= 1.03489565989566;

e7..    0.930728993228993*x7 =G= 0.930728993228993;

e8..    0.846695379783615*x8 =G= 0.846695379783615;

e9..    0.777250935339171*x9 =G= 0.777250935339171;

e10..    0.718771403175428*x10 =G= 0.718771403175428;

e11..  - 2.92896825396825*x1 - 2.01987734487735*x2 - 1.60321067821068*x3
       - 1.34680042180042*x4 - 1.16822899322899*x5 - 1.03489565989566*x6
       - 0.930728993228993*x7 - 0.846695379783615*x8 - 0.777250935339171*x9
       - 0.718771403175428*x10 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
