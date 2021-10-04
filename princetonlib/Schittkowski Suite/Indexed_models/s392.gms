* Cute AMPL model  (translation to GAMS)
*
$Set N 3
$Set M 5

Set I /i1*i%n%/;
Set J /j0*j%m%/;
Alias(i,k);
Alias(j,l);
Set Right(j)  /j1*j%m%/;
Set Right1(l) /j1*j%m%/;

table r1(i,j)
        j1      j2         j3     j4     j5
i1    1000    1000       1000    1100   1100
i2     520     520        520     600    600
i3     910     910       1000    1000   1000  ;

table r2(i,j)
        j1      j2         j3     j4     j5
i1     0.3     0.3        0.3    0.3    0.3
i2     0.1     0.1        0.1    0.1    0.1
i3     0.2     0.2        0.2    0.2    0.2 ;

table kA(i,j)
        j1      j2         j3     j4     j5
i1     120     150        150    170    170
i2      65      65         80     80     80
i3     105     105        120    120    120 ;

table k1(i,j)
        j1      j2         j3     j4     j5
i1     150     150        150    170    170
i2      75      75         75     90     90
i3     140     140        140    150    150 ;

table kp(i,j)
        j1      j2         j3     j4     j5
i1     160     160        160    180    180
i2      75      75         75     90     90
i3     140     140        140    150    150 ;

table kz(i,j)
        j1      j2         j3     j4     j5
i1      0.02    0.2        0.25   0.25   0.25
i2      0.01    0.1        0.1    0.15   0.15
i3      0.015   0.15       0.15   0.15   0.15 ;

table kL1(i,j)
        j1      j2         j3     j4     j5
i1      0.005   0.05       0.06   0.06   0.06
i2      0.005   0.05       0.06   0.06   0.06
i3      0.005   0.05       0.06   0.06   0.06 ;

table kL2(i,j)
        j1      j2         j3     j4     j5
i1      80      80        100    100    100
i2      45      45         45     50     50
i3      75      75         90     90     90 ;

table h(i,j)
        j1      j2         j3     j4     j5
i1     100     180        220    150    100
i2     280     400        450    450    400
i3     520     400        500    630    600  ;

table t(i,j)
       j1       j2         j3
i1    0.6       0.3       0.36
i2    0.4       0.1       0.12
i3    0.36      0.08      0.06 ;


table b(i,j)
        j1      j2         j3     j4     j5
i1     170     170        170    170    170
i2     170     170        170    170    170
i3     180     180        180    180    180 ;

Positive Variable xA(i,j) , xp(i,j)  ;
         Variable f ;
Equation  cons2(i,j) , cons3(i,j) , Def_obj ;

cons2(i,j)$Right(j).. b[i,j]  - sum{k,(sum{l$(ord(l) eq ord(k)+1),t[i,l]} *xp[k,j])} =g= 0;

cons3(i,j)$Right(j).. sum{l$((ord(l) le ord(j))and(ord(l)>1)),(xp[i,l]-xA[i,l])} =g= 0;

Def_obj..  f=e=

  -sum {j$(ord(j) ne 1),sum {i,(r1[i,j]*xA[i,j] -
r2[i,j]*sqr(xA[i,j]) - kA[i,j]*xA[i,j] - k1[i,j]*xp[i,j] -
kp[i,j]*xp[i,j] - kz[i,j]*sqr(xp[i,j]-xA[i,j-1]) -
kL1[i,j]*sqr(xp[i,j]-xA[i,j])
- kL2[i,j]*sum{l$((ord(l) le ord(j)) and (ord(l) ne 1)), (xp[i,l]-xA[i,l]) }
       )       } };

xA.fx[i,'j0'] = 0;

xA.l('i1','j1') =    80 ; xA.l('i2','j1') =   100 ; xA.l('i3','j1') =   400  ;
xA.l('i1','j2') =   100 ; xA.l('i2','j2') =   200 ; xA.l('i3','j2') =   200  ;
xA.l('i1','j3') =   100 ; xA.l('i2','j3') =   250 ; xA.l('i3','j3') =   400  ;
xA.l('i1','j4') =    50 ; xA.l('i2','j4') =   200 ; xA.l('i3','j4') =   500  ;
xA.l('i1','j5') =    50 ; xA.l('i2','j5') =   200 ; xA.l('i3','j5') =   500  ;

xp.l('i1','j1') =   100 ; xp.l('i2','j1') =   120 ; xp.l('i3','j1') =   410  ;
xp.l('i1','j2') =   120 ; xp.l('i2','j2') =   250 ; xp.l('i3','j2') =   250  ;
xp.l('i1','j3') =   150 ; xp.l('i2','j3') =   300 ; xp.l('i3','j3') =   410  ;
xp.l('i1','j4') =   600 ; xp.l('i2','j4') =   250 ; xp.l('i3','j4') =   510  ;
xp.l('i1','j5') =   100 ; xp.l('i2','j5') =   250 ; xp.l('i3','j5') =   510  ;

xA.up[i,j] = h(i,j);

*instead equation cons1(i,j);



Model s392 /all/;
Solve s392 using nlp minimazing f ;
display xp.l,xa.l;

display f.l;
