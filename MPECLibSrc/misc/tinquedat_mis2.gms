* Dataset : mis2.gms

* Milan 3PB data
* Specimen (Polymeric Composite)
* Dimension       = 107.1L x 30H x 15W mm
* Notch Length    = 15 mm
* Young's Modulus = 3707 MPa
* Poisson's Ratio = 0.39

* Discretization
* # of elements on each zone       = 79
* # of elements on the interface   = 15

sets    i     / i1*i31 /
        s     / s1*s32 /
        ss(s) / s1, s2, s3, s4, s5, s6, s7, s8,
                s9,s10,s11,s12,s13,s14,s15,s16,
                s17,s18,s19,s20,s21,s22,s23,s24,
                s25,s26,s27,s28,s29,s30,s31,s32 /;

$include tinquemi1.dat
$include tinquemi2.dat

* BOUNDS
* ------

tc.lo = 0.1;
tc.up = 20;
tb.lo = 0.1;
tb.up = 20;
h1.lo = 0.1;
h1.up = 500;
h2.lo = 0.1;
h2.up = 500;

* STARTING POINTS
* ---------------

tc_0 = 1;
tb_0 = 1;
h1_0 = 1;
h2_0 = 1;

obj_0  = 1e4;
Qerr_0 = 0.5;
lw_0   = 0.01;
phi_0  = 0.01;
