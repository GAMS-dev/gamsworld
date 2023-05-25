* AMPL Model by Hande Y. Benson
*
* Copyright (C) 2001 Princeton University
* All Rights Reserved
*
* Permission to use, copy, modify, and distribute this software and
* its documentation for any purpose and without fee is hereby
* granted, provided that the above copyright notice appear in all
* copies and that the copyright notice and this
* permission notice appear in all supporting documentation.

*   Source:
*   Svanberg K.,
*   "Method of moving asymptots - a new method for structural optimization",
*   Int.J. Num. Meth. Eng, 24, pp. 359--373, 1987

*   SIF input: Ph. Toint, June 1990.

*   classification OOR2-MN-V-V

$SET N 5000
$EVAL NM1 %N%-1
$EVAL NM2 %N%-2
$EVAL NM3 %N%-3
$EVAL NM4 %N%-4
$EVAL NM5 %N%-5
$EVAL NM6 %N%-6
$EVAL NM7 %N%-7

SET i /1*%N%/;

Parameter b(i), a(i);
b(i) = i.val*5/%N% + 10;

a(i) = ifThen( mod(i.val,2) = 1, i.val*2/%N% + 1, 5 - i.val*3/%N%);

variables f, x(i);
Equation cons1[i] , cons2 , cons3 , cons4 , cons5     ,
         cons6    , cons7 , cons8 , cons9 , cons10[i] , Def_obj ;

*Def_obj..  f =e=sum {i in 1..n-1 by 2} (a[i]/(1+x[i])) + sum {i in 2..n by 2} (a[i]/(1-x[i]));
Def_obj..  f =e=sum {i$(i.val <= %NM1% and mod(i.val,2)=1), (a[i]/(1+x[i]))}
                + sum {i$(i.val>=2 and mod(i.val,2)=0), (a[i]/(1-x[i]))};


x.lo(i) = -0.8 ;
x.up(i) =  0.8 ;
*x.l  =  0.0 ;


*cons1{i in 6..n-4 by 2}:1/(1-x[i-4]) + 1/(1+x[i-3]) + 1/(1+x[i-2]) + 1/(1-x[i-1]) + 1/(1+x[i]) +1/(1+x[i+1]) + 1/(1-x[i+2]) + 1/(1+x[i+3]) + 1/(1-x[i+4]) <= b[i];
cons1(i)$(i.val >= 6 and i.val <= %NM4% and mod(i.val,2)=0).. 1/(1-x[i-4]) + 1/(1+x[i-3]) + 1/(1+x[i-2]) + 1/(1-x[i-1]) + 1/(1+x[i]) +1/(1+x[i+1]) + 1/(1-x[i+2]) + 1/(1+x[i+3]) + 1/(1-x[i+4]) =l= b[i];


*cons10{i in 5..n-5 by 2}: 1/(1+x[i-4]) + 1/(1-x[i+3]) + 1/(1-x[i-2]) + 1/(1+x[i-1]) + 1/(1-x[i]) +1/(1-x[i+1]) + 1/(1+x[i+2]) + 1/(1-x[i+3]) + 1/(1+x[i+4]) <= b[i];
cons10[i]$(i.val >= 5 and i.val <= %NM5% and mod(i.val,2)=1)..
  1/(1+x[i-4]) + 1/(1-x[i+3]) + 1/(1-x[i-2]) + 1/(1+x[i-1]) + 1/(1-x[i]) +1/(1-x[i+1]) + 1/(1+x[i+2]) + 1/(1-x[i+3]) + 1/(1+x[i+4]) =l= b[i];
cons2.. 1/(1-x['1']) + 1/(1-x['2'])   + 1/(1+x['3'])   + 1/(1-x['4'])   + 
        1/(1+x['5']) + 1/(1+x['%NM3%']) + 1/(1-x['%NM2%']) + 1/(1-x['%NM1%']) +
        1/(1+x['%N%']) =l= b['1'];
cons3.. 1/(1-x['1']) + 1/(1+x['2']) + 1/(1+x['3']) + 1/(1-x['4']) + 1/(1+x['5']) + 1/(1-x['6']) + 1/(1-x['%NM2%']) + 1/(1+x['%NM1%']) + 1/(1+x['%N%']) =l= b['2'];
cons4.. 1/(1-x['1']) + 1/(1+x['2']) + 1/(1-x['3']) + 1/(1-x['4']) + 1/(1+x['5']) + 1/(1-x['6']) + 1/(1+x['7']) + 1/(1+x['%NM1%']) + 1/(1-x['%N%']) =l= b['3'];
cons5.. 1/(1+x['1']) + 1/(1+x['2']) + 1/(1-x['3']) + 1/(1+x['4']) + 1/(1+x['5']) + 1/(1-x['6']) + 1/(1+x['7']) + 1/(1-x['8']) + 1/(1-x['%N%']) =l= b['4'];

cons6.. 1/(1+x['1']) + 1/(1+x['%NM7%']) + 1/(1-x['%NM6%']) + 1/(1-x['%NM5%']) + 1/(1+x['%NM4%']) +1/(1-x['%NM3%']) + 1/(1-x['%NM2%']) + 1/(1+x['%NM1%']) + 1/(1-x['%N%']) =l= b['%NM3%'];

cons7.. 1/(1+x['1']) + 1/(1-x['2']) +  1/(1-x['%NM6%']) + 1/(1+x['%NM5%']) + 1/(1+x['%NM4%']) +1/(1-x['%NM3%']) + 1/(1+x['%NM2%']) + 1/(1+x['%NM1%']) + 1/(1-x['%N%']) =l= b['%NM2%'];
cons8.. 1/(1+x['1']) + 1/(1-x['2']) +  1/(1+x['3']) + 1/(1+x['%NM5%']) + 1/(1-x['%NM4%']) +1/(1-x['%NM3%']) + 1/(1+x['%NM2%']) + 1/(1-x['%NM1%']) + 1/(1-x['%N%']) =l= b['%NM1%'];
cons9.. 1/(1+x['1']) + 1/(1-x['2']) +  1/(1+x['3']) + 1/(1-x['4']) + 1/(1-x['%NM4%']) +1/(1+x['%NM3%']) + 1/(1+x['%NM2%']) + 1/(1-x['%NM1%']) + 1/(1+x['%N%']) =l= b['%N%'];

Model svanberg /all/ ;
Solve svanberg  using nlp minimazing f ;

display f.l; display x.l;
