*  DNLP written by GAMS Convert at 10/06/06 11:33:32
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          4        1        3        0
*
*  Solve m using DNLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Equations  e1;


e1..  - (sqr((-0.01) + exp(-exp(log(abs(62.5673411864701 - x2))*x3)/x1)) + sqr(
     (-0.02) + exp(-exp(log(abs(58.6962007027177 - x2))*x3)/x1)) + sqr((-0.03)
      + exp(-exp(log(abs(56.3256923849791 - x2))*x3)/x1)) + sqr((-0.04) + exp(-
     exp(log(abs(54.5880369007321 - x2))*x3)/x1)) + sqr((-0.05) + exp(-exp(log(
     abs(53.2043006187854 - x2))*x3)/x1)) + sqr((-0.06) + exp(-exp(log(abs(
     52.0480168209509 - x2))*x3)/x1)) + sqr((-0.07) + exp(-exp(log(abs(
     51.0507685839177 - x2))*x3)/x1)) + sqr((-0.08) + exp(-exp(log(abs(
     50.1712314272176 - x2))*x3)/x1)) + sqr((-0.09) + exp(-exp(log(abs(
     49.3824748381574 - x2))*x3)/x1)) + sqr((-0.1) + exp(-exp(log(abs(
     48.6659419747082 - x2))*x3)/x1)) + sqr((-0.11) + exp(-exp(log(abs(
     48.008287093122 - x2))*x3)/x1)) + sqr((-0.12) + exp(-exp(log(abs(
     47.3995812377531 - x2))*x3)/x1)) + sqr((-0.13) + exp(-exp(log(abs(
     46.8322311525364 - x2))*x3)/x1)) + sqr((-0.14) + exp(-exp(log(abs(
     46.3002956529795 - x2))*x3)/x1)) + sqr((-0.15) + exp(-exp(log(abs(
     45.7990357915906 - x2))*x3)/x1)) + sqr((-0.16) + exp(-exp(log(abs(
     45.3246088294447 - x2))*x3)/x1)) + sqr((-0.17) + exp(-exp(log(abs(
     44.8738540529253 - x2))*x3)/x1)) + sqr((-0.18) + exp(-exp(log(abs(
     44.4441391640996 - x2))*x3)/x1)) + sqr((-0.19) + exp(-exp(log(abs(
     44.0332477451615 - x2))*x3)/x1)) + sqr((-0.2) + exp(-exp(log(abs(
     43.6392952581493 - x2))*x3)/x1)) + sqr((-0.21) + exp(-exp(log(abs(
     43.2606652970159 - x2))*x3)/x1)) + sqr((-0.22) + exp(-exp(log(abs(
     42.8959604887535 - x2))*x3)/x1)) + sqr((-0.23) + exp(-exp(log(abs(
     42.5439641718685 - x2))*x3)/x1)) + sqr((-0.24) + exp(-exp(log(abs(
     42.203610125731 - x2))*x3)/x1)) + sqr((-0.25) + exp(-exp(log(abs(
     41.8739583976686 - x2))*x3)/x1)) + sqr((-0.26) + exp(-exp(log(abs(
     41.5541758068136 - x2))*x3)/x1)) + sqr((-0.27) + exp(-exp(log(abs(
     41.2435200761656 - x2))*x3)/x1)) + sqr((-0.28) + exp(-exp(log(abs(
     40.9413268091141 - x2))*x3)/x1)) + sqr((-0.29) + exp(-exp(log(abs(
     40.6469987175967 - x2))*x3)/x1)) + sqr((-0.3) + exp(-exp(log(abs(
     40.3599966485633 - x2))*x3)/x1)) + sqr((-0.31) + exp(-exp(log(abs(
     40.0798320585662 - x2))*x3)/x1)) + sqr((-0.32) + exp(-exp(log(abs(
     39.8060606634328 - x2))*x3)/x1)) + sqr((-0.33) + exp(-exp(log(abs(
     39.5382770482545 - x2))*x3)/x1)) + sqr((-0.34) + exp(-exp(log(abs(
     39.2761100673859 - x2))*x3)/x1)) + sqr((-0.35) + exp(-exp(log(abs(
     39.0192188983745 - x2))*x3)/x1)) + sqr((-0.36) + exp(-exp(log(abs(
     38.7672896403035 - x2))*x3)/x1)) + sqr((-0.37) + exp(-exp(log(abs(
     38.5200323678215 - x2))*x3)/x1)) + sqr((-0.38) + exp(-exp(log(abs(
     38.2771785685081 - x2))*x3)/x1)) + sqr((-0.39) + exp(-exp(log(abs(
     38.0384789042332 - x2))*x3)/x1)) + sqr((-0.4) + exp(-exp(log(abs(
     37.8037012475483 - x2))*x3)/x1)) + sqr((-0.41) + exp(-exp(log(abs(
     37.5726289524971 - x2))*x3)/x1)) + sqr((-0.42) + exp(-exp(log(abs(
     37.3450593259804 - x2))*x3)/x1)) + sqr((-0.43) + exp(-exp(log(abs(
     37.1208022712895 - x2))*x3)/x1)) + sqr((-0.44) + exp(-exp(log(abs(
     36.8996790799037 - x2))*x3)/x1)) + sqr((-0.45) + exp(-exp(log(abs(
     36.6815213513167 - x2))*x3)/x1)) + sqr((-0.46) + exp(-exp(log(abs(
     36.4661700236862 - x2))*x3)/x1)) + sqr((-0.47) + exp(-exp(log(abs(
     36.2534745006026 - x2))*x3)/x1)) + sqr((-0.48) + exp(-exp(log(abs(
     36.0432918613478 - x2))*x3)/x1)) + sqr((-0.49) + exp(-exp(log(abs(
     35.8354861437448 - x2))*x3)/x1)) + sqr((-0.5) + exp(-exp(log(abs(
     35.6299276901365 - x2))*x3)/x1)) + sqr((-0.51) + exp(-exp(log(abs(
     35.4264925482357 - x2))*x3)/x1)) + sqr((-0.52) + exp(-exp(log(abs(
     35.2250619195877 - x2))*x3)/x1)) + sqr((-0.53) + exp(-exp(log(abs(
     35.025521649224 - x2))*x3)/x1)) + sqr((-0.54) + exp(-exp(log(abs(
     34.8277617507753 - x2))*x3)/x1)) + sqr((-0.55) + exp(-exp(log(abs(
     34.6316759618838 - x2))*x3)/x1)) + sqr((-0.56) + exp(-exp(log(abs(
     34.4371613252136 - x2))*x3)/x1)) + sqr((-0.57) + exp(-exp(log(abs(
     34.2441177907303 - x2))*x3)/x1)) + sqr((-0.58) + exp(-exp(log(abs(
     34.0524478351983 - x2))*x3)/x1)) + sqr((-0.59) + exp(-exp(log(abs(
     33.8620560950504 - x2))*x3)/x1)) + sqr((-0.6) + exp(-exp(log(abs(
     33.672849008909 - x2))*x3)/x1)) + sqr((-0.61) + exp(-exp(log(abs(
     33.4847344660903 - x2))*x3)/x1)) + sqr((-0.62) + exp(-exp(log(abs(
     33.2976214573988 - x2))*x3)/x1)) + sqr((-0.63) + exp(-exp(log(abs(
     33.1114197244154 - x2))*x3)/x1)) + sqr((-0.64) + exp(-exp(log(abs(
     32.9260394032886 - x2))*x3)/x1)) + sqr((-0.65) + exp(-exp(log(abs(
     32.741390658749 - x2))*x3)/x1)) + sqr((-0.66) + exp(-exp(log(abs(
     32.5573833036609 - x2))*x3)/x1)) + sqr((-0.67) + exp(-exp(log(abs(
     32.3739263988872 - x2))*x3)/x1)) + sqr((-0.68) + exp(-exp(log(abs(
     32.1909278275376 - x2))*x3)/x1)) + sqr((-0.69) + exp(-exp(log(abs(
     32.008293836772 - x2))*x3)/x1)) + sqr((-0.7) + exp(-exp(log(abs(
     31.8259285391741 - x2))*x3)/x1)) + sqr((-0.71) + exp(-exp(log(abs(
     31.6437333642475 - x2))*x3)/x1)) + sqr((-0.72) + exp(-exp(log(abs(
     31.4616064487123 - x2))*x3)/x1)) + sqr((-0.73) + exp(-exp(log(abs(
     31.279441951896 - x2))*x3)/x1)) + sqr((-0.74) + exp(-exp(log(abs(
     31.0971292794385 - x2))*x3)/x1)) + sqr((-0.75) + exp(-exp(log(abs(
     30.9145521945707 - x2))*x3)/x1)) + sqr((-0.76) + exp(-exp(log(abs(
     30.7315877910617 - x2))*x3)/x1)) + sqr((-0.77) + exp(-exp(log(abs(
     30.5481052951594 - x2))*x3)/x1)) + sqr((-0.78) + exp(-exp(log(abs(
     30.3639646548686 - x2))*x3)/x1)) + sqr((-0.79) + exp(-exp(log(abs(
     30.1790148628897 - x2))*x3)/x1)) + sqr((-0.8) + exp(-exp(log(abs(
     29.9930919432498 - x2))*x3)/x1)) + sqr((-0.81) + exp(-exp(log(abs(
     29.8060165092927 - x2))*x3)/x1)) + sqr((-0.82) + exp(-exp(log(abs(
     29.6175907695704 - x2))*x3)/x1)) + sqr((-0.83) + exp(-exp(log(abs(
     29.4275948141543 - x2))*x3)/x1)) + sqr((-0.84) + exp(-exp(log(abs(
     29.23578195057 - x2))*x3)/x1)) + sqr((-0.85) + exp(-exp(log(abs(
     29.0418727657072 - x2))*x3)/x1)) + sqr((-0.86) + exp(-exp(log(abs(
     28.8455474509928 - x2))*x3)/x1)) + sqr((-0.87) + exp(-exp(log(abs(
     28.6464357147701 - x2))*x3)/x1)) + sqr((-0.88) + exp(-exp(log(abs(
     28.444103269613 - x2))*x3)/x1)) + sqr((-0.89) + exp(-exp(log(abs(
     28.2380333359004 - x2))*x3)/x1)) + sqr((-0.9) + exp(-exp(log(abs(
     28.0276006831001 - x2))*x3)/x1)) + sqr((-0.91) + exp(-exp(log(abs(
     27.8120341167232 - x2))*x3)/x1)) + sqr((-0.92) + exp(-exp(log(abs(
     27.5903603486418 - x2))*x3)/x1)) + sqr((-0.93) + exp(-exp(log(abs(
     27.3613163946629 - x2))*x3)/x1)) + sqr((-0.94) + exp(-exp(log(abs(
     27.1232055134715 - x2))*x3)/x1)) + sqr((-0.95) + exp(-exp(log(abs(
     26.8736439496681 - x2))*x3)/x1)) + sqr((-0.96) + exp(-exp(log(abs(
     26.6090744898079 - x2))*x3)/x1)) + sqr((-0.97) + exp(-exp(log(abs(
     26.3237086364982 - x2))*x3)/x1)) + sqr((-0.98) + exp(-exp(log(abs(
     26.0067455477373 - x2))*x3)/x1)) + sqr((-0.99) + exp(-exp(log(abs(
     25.6320727288055 - x2))*x3)/x1))) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 5; 
x2.l = 2.5; 
x3.l = 0.15; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP minimizing objvar;
