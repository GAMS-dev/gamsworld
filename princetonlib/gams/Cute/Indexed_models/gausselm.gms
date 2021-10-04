* Cute AMPL model  (translation to GAMS)
*
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

*   classification LOR2-AN-V-V

$Set N 16
$Set N_1 15
Set i /i1*i%N%/;
Alias(i,j);
Alias(i,k);
Set  inside_k(k) /i2*i%N_1%/;
Set  right_k(k) /i1*i%N_1%/;
Variable x(i,j,k) , f ;

Equation conse{k,i,j}   ,
         consmikk{k,i}  ,
         consmkik{k,i}  ,
         consmijk{k,i,j},
         conspikk{k,i}  ,
         conspkik{k,i}  ,
         conspijk{k,i,j}, Def_obj ;

conse{k,i,j}$((ord(i) gt ord(k)) and (ord(j) gt ord(k)) and (right_k(k)) )..
 x[k,i,k]*x[k,k,j]/x[k,k,k] + x[k+1,i,j] - x[k,i,j] =e= 0;

consmikk{k,i}$((ord(i) gt ord(k)) and (inside_k(k)))..
                x[k,i,k] - x[k,k,k] =l= 0;

consmkik{k,i}$((ord(i) gt ord(k)) and (inside_k(k)))..
                x[k,k,i] - x[k,k,k] =l= 0;

consmijk{k,i,j}$((ord(i) gt ord(k)) and (ord(j) gt ord(k)) and (inside_k(k)))..
                x[k,i,j] - x[k,k,k] =l= 0;

conspikk{k,i}$((ord(i) gt ord(k)) and (inside_k(k)))..
                x[k,i,k] + x[k,k,k] =g= 0;

conspkik{k,i}$((ord(i) gt ord(k)) and (inside_k(k)))..
                x[k,k,i] + x[k,k,k] =g= 0;

conspijk{k,i,j}$((ord(i) gt ord(k)) and (ord(j) gt ord(k)) and (inside_k(k)))..
                x[k,i,j] + x[k,k,k] =g= 0;

Def_obj..  f=e= -x['i%n%','i%n%','i%n%'] ;


x.l(i,j,k) = 0.1 ;
x.l(i,j,k)$(ord(j) = ord(k)) = 1.0 ;

x.lo['i1',j,k] = -1.0 ;
x.up['i1',j,k] =  1.0 ;
x.lo[i,j,k]$((ord(i) = ord(j)) and (ord(j) = ord(k)))    =  0.0 ;


x.fx('i1','i1','i1')         = 1.0 ;


Model gausselm  /all/;

Solve gausselm using nlp minimize f;

display x.l         ;
display f.l         ;
