$Set N 5
Set I /i1*i%N%/;
$Set M 12
Set J /j1*j%M%/;

Parameter l(i) / i1  78 ,i2  33 ,i3  27 ,i4  27 ,i5  27 /;
Parameter u(i) / i1  102,i2  45 ,i3  45 ,i4  45 ,i5  45 /;
Parameter a(j) / j1   85.334407  ,  j2   0.0056858 ,  j3   0.0006262 ,
                 j4    0.0022053 ,  j5  80.51249   ,  j6   0.0071317 ,
                 j7    0.0029955 ,  j8   0.0021813 ,  j9   9.300961  ,
                j10    0.0047026 , j11   0.0012547 , j12   0.0019085 /;

Variable x(i) , obj ;
Equation constr1a , constr2a , constr3a ,
         constr1b , constr2b , constr3b , Def_obj ;


constr1a.. 0 =l= a['j1'] +  a['j2']*x['i2']*x['i5'] +  a['j3']*x['i1']*x['i4'] -
                 a['j4']*x['i3']*x['i5']          ;
constr1b..       a['j1'] +  a['j2']*x['i2']*x['i5'] +  a['j3']*x['i1']*x['i4'] -
                 a['j4']*x['i3']*x['i5'] =l= 92     ;
constr2a.. 0 =l= a['j5'] +  a['j6']*x['i2']*x['i5'] +  a['j7']*x['i1']*x['i2'] +
                 a['j8']*sqr(x['i3']) - 90        ;
constr2b..       a['j5'] +  a['j6']*x['i2']*x['i5'] +  a['j7']*x['i1']*x['i2'] +
                 a['j8']*sqr(x['i3']) - 90 =l= 20   ;
constr3a.. 0 =l= a['j9'] + a['j10']*x['i3']*x['i5'] + a['j11']*x['i1']*x['i3'] +
                 a['j12']*x['i3']*x['i4'] -20      ;
constr3b..       a['j9'] + a['j10']*x['i3']*x['i5'] + a['j11']*x['i1']*x['i3'] +
                 a['j12']*x['i3']*x['i4'] -20 =l= 5 ;
Def_obj..  obj=e=  5.3578547*sqr(x['i3']) + 0.8356891*x['i1']*x['i5'] +
                  37.293239*x['i1'] -40792.141   ;

x.lo[i] = l(i);
x.up[i] = u(i);

x.l['i1'] = 78;
x.l['i2'] = 33;
x.l['i3'] = 27;
x.l['i4'] = 27;
x.l['i5'] = 27;

*"optimal solution as starting point ";
*x.l['i1'] = 78;
*x.l['i2'] = 33;
*x.l['i3'] = 29.99526;
*x.l['i4'] = 45;
*x.l['i5'] = 36.77581;

Model hs083 /all/;

Solve hs083 using nlp minimazing obj ;

obj.l = obj.l + 30665.53867;
display x.l;
display obj.l;
