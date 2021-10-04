* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 6
Set j /1*%N%/;
$Set M 30
Set i /1*%M%/;
Set inside_i(i) /2*%M%/;
Set inside_j1(j) /2*%N%/;
Set inside_j2(j) /1*%N%/;
Variable x[j], f   ;

Equation Def_obj;
Def_obj.. f=e= sqr(x['1'])+sqr(x['2']-sqr(x['1'])-1)+

 sum{i$inside_i(i),
                sqr(
    sum{j$inside_j1(j),((ord(j)-1)*x[j]* power(((ord(i)-1)/29),(ord(j)-2)))
       }-
sqr(sum{j$inside_j2(j),(           x[j]* power(((ord(i)-1)/29),(ord(j)-1)))
       }
   )-1
                   )

    };

x.l[j]  =    0    ;


Model s370 /all/;
Solve s370 using nlp minimize f;

display x.l;
display f.l;
