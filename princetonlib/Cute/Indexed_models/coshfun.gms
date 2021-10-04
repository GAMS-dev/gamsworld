* Cute AMPL model  (translation to GAMS)
*
*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   A nonlinear minmax problem.
*   Source:
*   K. Jonasson and K. Madsen,
*   "Corrected sequential linear programming for sparse
*   minimax optimization", Technical report, Institute for Numerical
*   Analysis, Technical U. of Denmark.
*   SIF input: Nick Gould, October 1992.
*   classification LOR2-AN-V-V
*  the number of functions
*IE M                   3
*IE M                   8
*IE M                   14
*  the number of independent variables
*  other useful parameters
*  Define constants
*   The independent variables

parameter   m;    m = 20             ;
parameter   n;    n =  3 * (20)      ;
parameter nm3;  nm3 = -3 + (3 * (20));
parameter nm5;  nm5 = -5 + (3 * (20));
parameter im5;  im5 = -5 + (57)      ;
parameter ip3;  ip3 =  3 + (57)      ;
parameter id3;  id3 =  3             ;
parameter im1;  im1 = -1 + (60)      ;
parameter im2;  im2 = -2 + (60)      ;

Variable  x1, x2, x3, x4, x5, x6, x7, x8, x9,x10,
         x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,
         x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,
         x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,
         x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,
         x51,x52,x53,x54,x55,x56,x57,x58,x59,x60, f, obj ;

Equation  c1, c2, c3, c4, c5, c6, c7, c8, c9,c10,
         c11,c12,c13,c14,c15,c16,c17,c18,c19,c20, Def_obj;

 c1.. 0 =g= x3 *x3  +(exp(x2 )+exp(-x2 ))/2 +2*x1 *x1 *x3  -f     -2*x3  - x6 ;
 c2.. 0 =g= x6 *x6  +(exp(x5 )+exp(-x5 ))/2 +2*x4 *x4 *x6  -f+x1  -2*x6  - x9 ;
 c3.. 0 =g= x9 *x9  +(exp(x8 )+exp(-x8 ))/2 +2*x7 *x7 *x9  -f+x4  -2*x9  - x12;
 c4.. 0 =g= x12*x12 +(exp(x11)+exp(-x11))/2 +2*x10*x10*x12 -f+x7  -2*x12 - x15;
 c5.. 0 =g= x15*x15 +(exp(x14)+exp(-x14))/2 +2*x13*x13*x15 -f+x10 -2*x15 - x18;
 c6.. 0 =g= x18*x18 +(exp(x17)+exp(-x17))/2 +2*x16*x16*x18 -f+x13 -2*x18 - x21;
 c7.. 0 =g= x21*x21 +(exp(x20)+exp(-x20))/2 +2*x19*x19*x21 -f+x16 -2*x21 - x24;
 c8.. 0 =g= x24*x24 +(exp(x23)+exp(-x23))/2 +2*x22*x22*x24 -f+x19 -2*x24 - x27;
 c9.. 0 =g= x27*x27 +(exp(x26)+exp(-x26))/2 +2*x25*x25*x27 -f+x22 -2*x27 - x30;
c10.. 0 =g= x30*x30 +(exp(x29)+exp(-x29))/2 +2*x28*x28*x30 -f+x25 -2*x30 - x33;
c11.. 0 =g= x33*x33 +(exp(x32)+exp(-x32))/2 +2*x31*x31*x33 -f+x28 -2*x33 - x36;
c12.. 0 =g= x36*x36 +(exp(x35)+exp(-x35))/2 +2*x34*x34*x36 -f+x31 -2*x36 - x39;
c13.. 0 =g= x39*x39 +(exp(x38)+exp(-x38))/2 +2*x37*x37*x39 -f+x34 -2*x39 - x42;
c14.. 0 =g= x42*x42 +(exp(x41)+exp(-x41))/2 +2*x40*x40*x42 -f+x37 -2*x42 - x45;
c15.. 0 =g= x45*x45 +(exp(x44)+exp(-x44))/2 +2*x43*x43*x45 -f+x40 -2*x45 - x48;
c16.. 0 =g= x48*x48 +(exp(x47)+exp(-x47))/2 +2*x46*x46*x48 -f+x43 -2*x48 - x51;
c17.. 0 =g= x51*x51 +(exp(x50)+exp(-x50))/2 +2*x49*x49*x51 -f+x46 -2*x51 - x54;
c18.. 0 =g= x54*x54 +(exp(x53)+exp(-x53))/2 +2*x52*x52*x54 -f+x49 -2*x54 - x57;
c19.. 0 =g= x57*x57 +(exp(x56)+exp(-x56))/2 +2*x55*x55*x57 -f+x52 -2*x57 - x60;
c20.. 0 =g= x60*x60 +(exp(x59)+exp(-x59))/2 +2*x58*x58*x60 -f+x55 -2*x60      ;

Def_obj.. obj=e= f;

Model coshfun /all/;

Solve coshfun using nlp minimize f;

display  x1.l;display  x2.l;display  x3.l;display  x4.l;display  x5.l;
display  x6.l;display  x7.l;display  x8.l;display  x9.l;display x10.l;
display x11.l;display x12.l;display x13.l;display x14.l;display x15.l;
display x16.l;display x17.l;display x18.l;display x19.l;display x20.l;
display x21.l;display x22.l;display x23.l;display x24.l;display x25.l;
display x26.l;display x27.l;display x28.l;display x29.l;display x30.l;
display x31.l;display x32.l;display x33.l;display x34.l;display x35.l;
display x36.l;display x37.l;display x38.l;display x39.l;display x40.l;
display x41.l;display x42.l;display x43.l;display x44.l;display x45.l;
display x46.l;display x47.l;display x48.l;display x49.l;display x50.l;
display x51.l;display x52.l;display x53.l;display x54.l;display x55.l;
display x56.l;display x57.l;display x58.l;display x59.l;display x60.l;

display f.l; display obj.l;
