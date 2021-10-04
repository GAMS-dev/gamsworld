* Cute AMPL model  (translation to GAMS)
*
*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   Source: an expanded form of problem 99 in
*   W. Hock and K. Schittkowski,
*   "Test examples for nonlinear programming codes",
*   Lectures Notes in Economics and Mathematical Systems 187, Springer
*   Verlag, Heidelberg, 1981.
*   SIF input: Ph. Toint, April 1991.
*   classification OOR2-AN-31-21
*   Problem data
*   Constants
*   Increments
*   Solution

parameter t1      ; t1      =   0.0;
parameter t2      ; t2      =  25.0;
parameter t3      ; t3      =  50.0;
parameter t4      ; t4      = 100.0;
parameter t5      ; t5      = 150.0;
parameter t6      ; t6      = 200.0;
parameter t7      ; t7      = 290.0;
parameter t8      ; t8      = 380.0;
parameter a1      ; a1      =   0.0;
parameter a2      ; a2      =  50.0;
parameter a3      ; a3      =  50.0;
parameter a4      ; a4      =  75.0;
parameter a5      ; a5      =  75.0;
parameter a6      ; a6      =  75.0;
parameter a7      ; a7      = 100.0;
parameter a8      ; a8      = 100.0;
parameter b       ; b       =  32.0;
parameter im1     ; im1     = -1 + (8);
parameter dtisq   ; dtisq   = ((380.0) - (290.0)) * ((380.0) - (290.0));
parameter dt2     ; dt2     = (25.0) - (0.0);
parameter dtsqd22 ; dtsqd22 = 0.5 * (((25.0) - (0.0)) * ((25.0) - (0.0)));
parameter dt3     ; dt3     = (50.0) - (25.0);
parameter dtsqd23 ; dtsqd23 = 0.5 * (((50.0) - (25.0)) * ((50.0) - (25.0)));
parameter dt4     ; dt4     = (100.0) - (50.0);
parameter dtsqd24 ; dtsqd24 = 0.5 * ((100.0 - (50.0)) * ((100.0) - (50.0)));
parameter dt5     ; dt5     = (150.0) - (100.0);
parameter dtsqd25 ; dtsqd25 = 0.5 * ((150.0 - 100.0) * ((150.0) - (100.0)));
parameter dt6     ; dt6     = (200.0) - (150.0);
parameter dtsqd26 ; dtsqd26 = 0.5 * ((200.0 - 150.0) * (200.0 - 150.0));
parameter dt7     ; dt7     = (290.0) - (200.0);
parameter dtsqd27 ; dtsqd27 = 0.5 * ((290.0 - 200.0) * (290.0 - 200.0));
parameter dt8     ; dt8     = (380.0) - (290.0);
parameter dtsqd28 ; dtsqd28 = 0.5 * ((380.0 - 290.0) * (380.0 - 290.0));
parameter rhs     ; rhs     = ((290.0) - (200.0)) * (32.0);
parameter w       ; w       = 100*(0.5 * ((380.0 - 290.0) * (380.0 - 290.0)));


Variable x1 , r1 , q1 , s1 , x2 , r2 , q2 , s2 , x3 , r3 , q3 ,
         s3 , x4 , r4 , q4 , s4 , x5 , r5 , q5 , s5 , x6 , r6 ,
         q6 , s6 , x7 , r7 , q7 , s7 , r8 , q8 , s8 , obj ;

Equation rdef2 , qdef2 , sdef2 , rdef3 , qdef3 , sdef3 , rdef4 , qdef4 , sdef4 ,
         rdef5 , qdef5 , sdef5 , rdef6 , qdef6 , sdef6 , rdef7 , qdef7 , sdef7 ,
         rdef8 , qdef8 , sdef8 , Def_obj  ;

rdef2..    1250.0*(cos(x1)) - r2 + r1                      =e= 0 ;
qdef2..   15625.0*(sin(x1)) - q2 + q1 + 25.0*s1 - 10000.0  =e= 0 ;
sdef2..    1250.0*(sin(x1)) - s2 + s1 - 800.0              =e= 0 ;
rdef3..    1250.0*(cos(x2)) - r3 + r2                      =e= 0 ;
qdef3..   15625.0*(sin(x2)) - q3 + q2 + 25.0*s2 - 10000.0  =e= 0 ;
sdef3..    1250.0*(sin(x2)) - s3 + s2 - 800.0              =e= 0 ;
rdef4..    3750.0*(cos(x3)) - r4 + r3                      =e= 0 ;
qdef4..   93750.0*(sin(x3)) - q4 + q3 + 50.0*s3 - 40000.0  =e= 0 ;
sdef4..    3750.0*(sin(x3)) - s4 + s3 - 1600.0             =e= 0 ;
rdef5..    3750.0*(cos(x4)) - r5 + r4                      =e= 0 ;
qdef5..   93750.0*(sin(x4)) - q5 + q4 + 50.0*s4 - 40000.0  =e= 0 ;
sdef5..    3750.0*(sin(x4)) - s5 + s4 - 1600.0             =e= 0 ;
rdef6..    3750.0*(cos(x5)) - r6 + r5                      =e= 0 ;
qdef6..   93750.0*(sin(x5)) - q6 + q5 + 50.0*s5 - 40000.0  =e= 0 ;
sdef6..    3750.0*(sin(x5)) - s6 + s5 - 1600.0             =e= 0 ;
rdef7..    9000.0*(cos(x6)) - r7 + r6                      =e= 0 ;
qdef7..  405000.0*(sin(x6)) - q7 + q6 + 90.0*s6 - 129600.0 =e= 0 ;
sdef7..    9000.0*(sin(x6)) - s7 + s6 - 2880.0             =e= 0 ;
rdef8..    9000.0*(cos(x7)) - r8 + r7                      =e= 0 ;
qdef8..  405000.0*(sin(x7)) - q8 + q7 + 90.0*s7 - 100000.0 =e= 0 ;
sdef8..    9000.0*(sin(x7)) - s8 + s7 - 1000.0             =e= 0 ;

 x1.lo = 0.0 ;  x1.up = 1.58 ;
 r1.lo = 0.0 ;  r1.up = 0.0  ;
 q1.lo = 0.0 ;  q1.up = 0.0  ;
 s1.lo = 0.0 ;  s1.up = 0.0  ;
 x2.lo = 0.0 ;  x2.up = 1.58 ;
 x3.lo = 0.0 ;  x3.up = 1.58 ;
 x4.lo = 0.0 ;  x4.up = 1.58 ;
 x5.lo = 0.0 ;  x5.up = 1.58 ;
 x6.lo = 0.0 ;  x6.up = 1.58 ;
 x7.lo = 0.0 ;  x7.up = 1.58 ;

 x1.l  = 0.5 ;
 x2.l  = 0.5 ;
 x3.l  = 0.5 ;
 x4.l  = 0.5 ;
 x5.l  = 0.5 ;
 x6.l  = 0.5 ;
 x7.l  = 0.5 ;


Def_obj..  obj =e=- (r8)*(r8);

Model hs99exp /all/;

Solve hs99exp using nlp minimize obj ;

display x1.l ; display r1.l ; display q1.l ; display s1.l ; display x2.l ;
display r2.l ; display q2.l ; display s2.l ; display x3.l ; display r3.l ;
display q3.l ; display s3.l ; display x4.l ; display r4.l ; display q4.l ;
display s4.l ; display x5.l ; display r5.l ; display q5.l ; display s5.l ;
display x6.l ; display r6.l ; display q6.l ; display s6.l ; display x7.l ;
display r7.l ; display q7.l ; display s7.l ; display r8.l ; display q8.l ;
display s8.l ; display obj.l ;
