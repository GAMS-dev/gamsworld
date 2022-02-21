* Cute AMPL model  (translation to GAMS)
*
*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   The nonlinear network problem by Toint and Tuyttens,
*   Source:
*   Ph.L. Toint and D. Tuyttens,
*   "On large scale nonlinear network optimization",
*   Mathematical Programming B, vol. 48(1), pp.125-159, 1990.
*   This version has 60 variables and has bounds corresponding
*   to i = 1 and a = 1 and r = 0.1.
*   The number of variables is N = 2*NS*(NS-1), where NS = 2*L+2.
*   SIF input: Ph. Toint, May 1990.
*              minor correction by Ph. Shott, Jan 1995.
*   classification ONR2-AY-V-V
*   Problem parameters
*   Constants
*   Computed parameters
*   Define two variables per node in the grid.
*   The first corresponds to flow from the current node to the
*   node on the right; the second corresponds to that to the node
*   above.
*   Objective is nonlinear
*   Network constraints for the bottom row
*   Network constraints for the middle rows
*   Network constraints for the top row
*   Lower bound for the MOD3 arcs
*   Bottom row outside the cycles
*   Side rows outside the cycles
*   Top row outside the cycles
*   Cycles
*             Compute the cycle coefficient
*             Set starting arcs for the vertical and horizontal cycles
*             Loop on the long sides of both cycles
*             West side of the JKth vertical cycle
*             East side of the JKth vertical cycle
*             Bottom side of the JKth horizontal cycle
*             Top side of the JKth horizontal cycle
*             Increment
*             End the loop on the long sides
*             Bottom side of the JKth vertical cycle
*             Top side of the JKth vertical cycle
*             West side of the JKth horizontal cycle
*             East side of the JKth horizontal cycle
*   Non quadratic terms
*   Dense term
*   Solution

$offdigit ;

parameter     l ;     l  = 2;
parameter     c ;     c  = 2.0;
parameter     r ;     r  = 0.1;
parameter     a ;     a  = 1.0;
parameter  ln10 ;  ln10  = 2.302585093;
parameter   lm1 ;   lm1  = -1 + (2);
parameter    ns ;    ns  = 2 + (2 * (2));
parameter  nsm1 ;  nsm1  = -1 + (2 + (2 * (2)));
parameter     p ;     p  = -1 + (2 * (2 + (2 * (2))));
parameter   pm1 ;   pm1  = -1 + (-1 + (2 * (2 + (2 * (2)))));
parameter   pm2 ;   pm2  = -2 + (-1 + (2 * (2 + (2 * (2)))));
parameter  rlm1 ;  rlm1  = 1.0;
parameter cln10 ; cln10  = (2.302585093) * (2.0);
parameter  beta ;  beta  = ((2.302585093) * (2.0)) * (1.0 / (1.0));
parameter ad100 ; ad100  = 0.01 * (1.0);
parameter smalla;smalla  = 8.333333e-4 * (0.01 * (1.0));
parameter  jkm1 ;  jkm1  = -1 + (2);
parameter rjkm1 ; rjkm1  = 1.0;
parameter    ex ;    ex  = (1.0) * (((2.302585093) * (2.0)) * (1.0 / (1.0)));
parameter    ak ;    ak  = exp((1.0)*(((2.302585093)*(2.0))*(1.0/(1.0))));
parameter    as ;    as  =0.01*(exp((1.0)*(((2.302585093)*(2.0))*(1.0/(1.0)))));
parameter    vw ;    vw  = 4 * (2);
parameter  vwm1 ;  vwm1  = -1 + (4 * (2));


Variable  x1 ,x2 ,x3 ,x4 ,x5 ,x6 ,x7 ,x8 ,x9 ,x10,
          x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,
          x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,
          x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,
          x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,
          x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,x62, obj ;

Equation c1_1  , c1_2  , c1_3  , c1_4  , c1_5  , c1_6  , c2_1  , c2_2  ,
         c2_3  , c2_4  , c2_5  , c2_6  , c3_1  , c3_2  , c3_3  , c3_4  ,
         c3_5  , c3_6  , c4_1  , c4_2  , c4_3  , c4_4  , c4_5  , c4_6  ,
         c5_1  , c5_2  , c5_3  , c5_4  , c5_5  , c5_6  , c6_1  , c6_2  ,
         c6_3  , c6_4  , c6_5  , c6_6  , Def_obj ;

c1_1..    x1 +  x2 - 10.0       =e=  0;
c1_2..    x3 +  x4 -  x1        =e=  0;
c1_3..    x5 +  x6 -  x3        =e=  0;
c1_4..    x7 +  x8 -  x5        =e=  0;
c1_5..    x9 + x10 -  x7        =e=  0;
c1_6..   x11 -  x9              =e=  0;
c2_1..   x12 + x13 -  x2        =e=  0;
c2_2..   x14 + x15 - x12 -  x4  =e=  0;
c2_3..   x16 + x17 - x14 -  x6  =e=  0;
c2_4..   x18 + x19 - x16 -  x8  =e=  0;
c2_5..   x20 + x21 - x18 - x10  =e=  0;
c2_6..   x22 - x20 - x11        =e=  0;
c3_1..   x23 + x24 - x13        =e=  0;
c3_2..   x25 + x26 - x23 - x15  =e=  0;
c3_3..   x27 + x28 - x25 - x17  =e=  0;
c3_4..   x29 + x30 - x27 - x19  =e=  0;
c3_5..   x31 + x32 - x29 - x21  =e=  0;
c3_6..   x33 - x31 - x22        =e=  0;
c4_1..   x34 + x35 - x24        =e=  0;
c4_2..   x36 + x37 - x34 - x26  =e=  0;
c4_3..   x38 + x39 - x36 - x28  =e=  0;
c4_4..   x40 + x41 - x38 - x30  =e=  0;
c4_5..   x42 + x43 - x40 - x32  =e=  0;
c4_6..   x44 - x42 - x33        =e=  0;
c5_1..   x45 + x46 - x35        =e=  0;
c5_2..   x47 + x48 - x45 - x37  =e=  0;
c5_3..   x49 + x50 - x47 - x39  =e=  0;
c5_4..   x51 + x52 - x49 - x41  =e=  0;
c5_5..   x53 + x54 - x51 - x43  =e=  0;
c5_6..   x55 - x53 - x44        =e=  0;
c6_1..   x56 - x46              =e=  0;
c6_2..   x57 - x56 - x48        =e=  0;
c6_3..   x58 - x57 - x50        =e=  0;
c6_4..   x59 - x58 - x52        =e=  0;
c6_5..   x60 - x59 - x54        =e=  0;
c6_6..  -x60 - x55 + 10.0       =e=  0;

Def_obj..  obj =e=
        0.01* x1 *  x1 + 0.01* x5 *  x5 + 0.01* x9 *  x9 + 0.01*x11 * x11 +
        0.01* x2 *  x2 + 0.01*x33 * x33 + 0.01*x24 * x24 + 0.01*x55 * x55 +
        0.01*x46 * x46 + 0.01*x56 * x56 + 0.01*x58 * x58 + 0.01*x60 * x60 +
        0.01* x4 *  x4 + 0.01* x6 *  x6 + 0.01*x12*  x12 + 0.01*x23 * x23 +
        0.01*x15 * x15 + 0.01*x17 * x17 + 0.01*x14 * x14 + 0.01*x25 * x25 +
        0.01*x26 * x26 + 0.01*x28 * x28 + 0.01*x16 * x16 + 0.01*x27 * x27 +
        0.01*x37 * x37 + 0.01*x39 * x39 + 0.01*x18 * x18 + 0.01*x29 * x29 +
        0.01*x48 * x48 + 0.01*x50 * x50 + 0.01*x20 * x20 + 0.01*x31 * x31 +
        0.01* x3 *  x3 + 0.01*x57 * x57 + 0.01*x13 * x13 + 0.01*x22 * x22 +

        1.0000000000119083* x8 *  x8 + 1.0000000000119083*x10 * x10 +
        1.0000000000119083*x34 * x34 + 1.0000000000119083*x45 * x45 +
        1.0000000000119083*x19 * x19 + 1.0000000000119083*x21 * x21 +
        1.0000000000119083*x36 * x36 + 1.0000000000119083*x47 * x47 +
        1.0000000000119083*x30 * x30 + 1.0000000000119083*x32 * x32 +
        1.0000000000119083*x38 * x38 + 1.0000000000119083*x49 * x49 +
        1.0000000000119083*x41 * x41 + 1.0000000000119083*x43 * x43 +
        1.0000000000119083*x40 * x40 + 1.0000000000119083*x51 * x51 +
        1.0000000000119083*x52 * x52 + 1.0000000000119083*x54 * x54 +
        1.0000000000119083*x42 * x42 + 1.0000000000119083*x53 * x53 +
        1.0000000000119083* x7 *  x7 + 1.0000000000119083*x59 * x59 +
        1.0000000000119083*x35 * x35 + 1.0000000000119083*x44 * x44 +

        0.01*(sqrt((1.0+2.0* x1*( x1-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0* x2*( x2-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0* x3*( x3-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0* x4*( x4-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0* x5*( x5-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0* x6*( x6-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0* x7*( x7-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0* x8*( x8-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0* x9*( x9-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x10*(x10-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x11*(x11-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x12*(x12-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x13*(x13-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x14*(x14-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x15*(x15-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x16*(x16-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x17*(x17-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x18*(x18-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x19*(x19-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x20*(x20-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x21*(x21-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x22*(x22-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x23*(x23-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x24*(x24-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x25*(x25-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x26*(x26-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x27*(x27-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x28*(x28-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x29*(x29-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x30*(x30-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x31*(x31-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x32*(x32-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x33*(x33-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x34*(x34-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x35*(x35-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x36*(x36-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x37*(x37-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x38*(x38-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x39*(x39-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x40*(x40-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x41*(x41-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x42*(x42-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x43*(x43-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x44*(x44-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x45*(x45-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x46*(x46-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x47*(x47-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x48*(x48-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x49*(x49-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x50*(x50-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x51*(x51-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x52*(x52-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x53*(x53-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x54*(x54-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x55*(x55-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x56*(x56-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x57*(x57-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x58*(x58-x62)+x62*x62))) +
        0.01*(sqrt((1.0+2.0*x59*(x59-x62)+x62*x62))) +

        8.333332999999999e-6* power((10.0+(-x59)+x60),4);


 x3.lo =  0.1 ;  x6.lo =  0.1 ;  x9.lo =  0.1 ; x12.lo =  0.1 ;
x15.lo =  0.1 ; x18.lo =  0.1 ; x21.lo =  0.1 ; x24.lo =  0.1 ;
x27.lo =  0.1 ; x30.lo =  0.1 ; x33.lo =  0.1 ; x36.lo =  0.1 ;
x39.lo =  0.1 ; x42.lo =  0.1 ; x45.lo =  0.1 ; x48.lo =  0.1 ;
x51.lo =  0.1 ; x54.lo =  0.1 ; x57.lo =  0.1 ; x60.lo =  0.1 ;
x62.lo =  0.0 ;

Model gridneti  /all/;

Solve gridneti using nlp minimize obj;

 display  x1.l ;display  x2.l ;display  x3.l ;display  x4.l ;
 display  x5.l ;display  x6.l ;display  x7.l ;display  x8.l ;
 display  x9.l ;display x10.l ;display x11.l ;display x12.l ;
 display x13.l ;display x14.l ;display x15.l ;display x16.l ;
 display x17.l ;display x18.l ;display x19.l ;display x20.l ;
 display x21.l ;display x22.l ;display x23.l ;display x24.l ;
 display x25.l ;display x26.l ;display x27.l ;display x28.l ;
 display x29.l ;display x30.l ;display x31.l ;display x32.l ;
 display x33.l ;display x34.l ;display x35.l ;display x36.l ;
 display x37.l ;display x38.l ;display x39.l ;display x40.l ;
 display x41.l ;display x42.l ;display x43.l ;display x44.l ;
 display x45.l ;display x46.l ;display x47.l ;display x48.l ;
 display x49.l ;display x50.l ;display x51.l ;display x52.l ;
 display x53.l ;display x54.l ;display x55.l ;display x56.l ;
 display x57.l ;display x58.l ;display x59.l ;display x60.l ;
 display x62.l ;display obj.l ;
