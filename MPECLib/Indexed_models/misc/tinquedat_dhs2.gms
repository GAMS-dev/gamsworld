* Dataset : dhs2.gms

* Danish High Strength 3PB (Olsen)
* Specimen (High Strength Concrete)
* Dimension       = 800L x 100H x 100W mm
* Notch Length    = 10 mm
* Young's Modulus = 42070 MPa
* Poisson's Ratio = 0.20

* Discretization
* # of elements on each zone     = 121
* # of elements on the interface = 18

sets    i     / i1*i37 /
        s     / s1*s32 /
        ss(s) / s1, s2, s3, s4, s5, s6, s7, s8,
                s9,s10,s11,s12,s13,s14,s15,s16,
                s17,s18,s19,s20,s21,s22,s23,s24,
                s25,s26,s27,s28,s29,s30,s31,s32 /;

$include tinquedh1.dat
$include tinquedh2.dat

* BOUNDS
* ------

tc.lo = 0.1;
tc.up = 15;
tb.lo = 0.1;
tb.up = 15;
h1.lo = 0.1;
h1.up = 800;
h2.lo = 0.1;
h2.up = 500;

* STARTING POINTS
* ---------------

tc_0 = 1;
tb_0 = 1;
h1_0 = 1;
h2_0 = 1;

obj_0 = 1e4;
Qerr_0 = 0.5;
lw_0 = 0.01;
phi_0 = 0.01;
