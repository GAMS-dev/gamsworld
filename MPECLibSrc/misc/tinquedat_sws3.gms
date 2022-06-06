* Dataset : sws3.gms

* Lausanne WST (LMC/EPFL)
* Specimen (Normal Strength Concrete)
* Dimension       = 200L x 200 (170 IL) H x 97W mm
* Notch Length    = 85 mm
* Young's Modulus = 25200 MPa
* Poisson's Ratio = 0.2

* Discretization
* # of elements on each zone     = 96
* # of elements on the interface = 17

sets    i     / i1*i35 /
        s     / s1*s32 /
        ss(s) / s1, s2, s3, s4, s5, s6, s7, s8,
                s9,s10,s11,s12,s13,s14,s15,s16,
                s17,s18,s19,s20,s21,s22,s23,s24,
                s25,s26,s27,s28,s29,s30,s31,s32 /;

$include tinquesw1.dat
$include tinquesw2.dat

* BOUNDS
* ------

tc.lo = 0.1;
tc.up = 6.6;
tb.lo = 0.1;
tb.up = 6.6;
ta.lo = 0.1;
ta.up = 6.6;
h1.lo = 0.1;
h1.up = 500;
h2.lo = 0.1;
h2.up = 250;
h3.lo = 0.1;
h3.up = 250;

* STARTING POINTS
* ---------------

obj.l = 1e4;
tc.l = 1;
tb.l = 1;
ta.l = 1;
h1.l = 1;
h2.l = 1;
h3.l = 1;
lw.l(ss,i,y) = 0.01;
Qerr.l(ss) = 0.01;
