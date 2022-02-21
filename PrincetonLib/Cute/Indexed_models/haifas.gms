* Cute AMPL model  (translation to GAMS)
*
*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*  Truss Topology Design (t6-9)
*  Source: M. Tsibulevsky, Optimization Laboratory,
*          Faculty of Industrial Engineering, Technion,
*          Haifa, 32000, Israel.
*  SIF input: Conn, Gould and Toint, May, 1992
*             minor correction by Ph. Shott, Jan 1995.
*   classification LQR2-AN-13-9
*  2 * Number of nodes
*  Number of potential bars
*   Define constants

        parameter  n;  n = 12;
        parameter  m;  m  = 9;
        parameter  j;  j  = 9;
        parameter i1; i1  = 6;
        parameter i2; i2  = 6;
        parameter  l;  l = 21;

Variable z,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,obj;

Equation g1,g2,g3,g4,g5,g6,g7,g8,g9,Def_obj ;


g1.. 0 =g= 10.0*0.5* x4* x4                                   -z-x10;
g2.. 0 =g=  6.4*0.5* x5* x5+ 6.4*0.5* x5*x11+ 1.6*0.5*x11*x11 -z-x10;
g3.. 0 =g= 40.0*0.5*x10*x10-80.0*0.5*x10*x11+40.0*0.5*x11*x11 -z-x10;
g4.. 0 =g=  6.4*0.5* x4* x4- 6.4*0.5* x4*x10+ 1.6*0.5*x10*x10 -z-x10;
g5.. 0 =g= 10.0*0.5* x5* x5                                   -z-x10;
g6.. 0 =g=  6.4*0.5* x6* x6+ 6.4*0.5* x6*x12+ 1.6*0.5*x12*x12 -z-x10;
g7.. 0 =g= 40.0*0.5*x11*x11-80.0*0.5*x11*x12+40.0*0.5*x12*x12 -z-x10;
g8.. 0 =g=  6.4*0.5* x5* x5- 6.4*0.5* x5*x11+ 1.6*0.5*x11*x11 -z-x10;
g9.. 0 =g= 10.0*0.5* x6* x6                                   -z-x10;

Def_obj.. obj =e=z;

Model haifas /all/;

Solve haifas using nlp minimize obj;
        display  z.l;
*       display x1.l;
*       display x2.l;
*       display x3.l;
        display x4.l;
        display x5.l;
        display x6.l;
*       display x7.l;
*       display x8.l;
*       display x9.l;
        display x10.l;
        display x11.l;
        display x12.l;
        display obj.l;
