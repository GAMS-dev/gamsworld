Set n / n1*n10 /;
Set s / a1 /;

yupp('n1','n1','a1')=0;

Parameter fcost(m,n,s) /
$ondelim
   n1      n2      a1             13
   n2      n1      a1             27
   n1      n3      a1             22
   n3      n1      a1             27
   n1      n4      a1             15
   n4      n1      a1             13
   n1      n5      a1             36
   n5      n1      a1             31
   n1      n6      a1             31
   n6      n1      a1             36
   n1      n7      a1             24
   n7      n1      a1             27
   n1      n8      a1             31
   n8      n1      a1             18
   n1      n9      a1             17
   n9      n1      a1             33
   n1      n10     a1             13
   n10     n1      a1             33
   n2      n3      a1             22
   n3      n2      a1             35
   n2      n4      a1             11
   n4      n2      a1             19
   n2      n5      a1             39
   n5      n2      a1             20
   n2      n6      a1             14
   n6      n2      a1             35
   n2      n7      a1             33
   n7      n2      a1             16
   n2      n8      a1             11
   n8      n2      a1             21
   n2      n9      a1             19
   n9      n2      a1             23
   n2      n10     a1             18
   n10     n2      a1             31
   n3      n4      a1             22
   n4      n3      a1             33
   n3      n5      a1             11
   n5      n3      a1             14
   n3      n6      a1             38
   n6      n3      a1             19
   n3      n7      a1             36
   n7      n3      a1             10
   n3      n8      a1             16
   n8      n3      a1             12
   n3      n9      a1             22
   n9      n3      a1             20
   n3      n10     a1             35
   n10     n3      a1             25
   n4      n5      a1             16
   n5      n4      a1             27
   n4      n6      a1             13
   n6      n4      a1             26
   n4      n7      a1             33
   n7      n4      a1             37
   n4      n8      a1             26
   n8      n4      a1             26
   n4      n9      a1             28
   n9      n4      a1             27
   n4      n10     a1             12
   n10     n4      a1             33
   n5      n6      a1             28
   n6      n5      a1             39
   n5      n7      a1             15
   n7      n5      a1             35
   n5      n8      a1             23
   n8      n5      a1             16
   n5      n9      a1             13
   n9      n5      a1             19
   n5      n10     a1             37
   n10     n5      a1             17
   n6      n7      a1             21
   n7      n6      a1             24
   n6      n8      a1             17
   n8      n6      a1             25
   n6      n9      a1             12
   n9      n6      a1             13
   n6      n10     a1             12
   n10     n6      a1             14
   n7      n8      a1             29
   n8      n7      a1             19
   n7      n9      a1             34
   n9      n7      a1             35
   n7      n10     a1             20
   n10     n7      a1             18
   n8      n9      a1             21
   n9      n8      a1             36
   n8      n10     a1             11
   n10     n8      a1             20
   n9      n10     a1             38
   n10     n9      a1             11
$offdelim
/;

Parameter vcost(m,n,s) /
$ondelim
   n1      n2      a1              8
   n2      n1      a1              2
   n1      n3      a1              4
   n3      n1      a1              5
   n1      n4      a1              1
   n4      n1      a1              7
   n1      n5      a1              7
   n5      n1      a1              3
   n1      n6      a1              4
   n6      n1      a1              2
   n1      n7      a1              3
   n7      n1      a1              3
   n1      n8      a1              8
   n8      n1      a1              3
   n1      n9      a1              4
   n9      n1      a1              1
   n1      n10     a1              4
   n10     n1      a1              5
   n2      n3      a1              5
   n3      n2      a1              9
   n2      n4      a1              5
   n4      n2      a1              5
   n2      n5      a1              9
   n5      n2      a1              5
   n2      n6      a1              7
   n6      n2      a1              8
   n2      n7      a1              4
   n7      n2      a1              2
   n2      n8      a1              8
   n8      n2      a1              7
   n2      n9      a1              3
   n9      n2      a1              8
   n2      n10     a1              1
   n10     n2      a1              1
   n3      n4      a1              4
   n4      n3      a1              6
   n3      n5      a1              2
   n5      n3      a1              3
   n3      n6      a1              8
   n6      n3      a1              8
   n3      n7      a1              6
   n7      n3      a1              9
   n3      n8      a1              9
   n8      n3      a1              2
   n3      n9      a1              6
   n9      n3      a1              6
   n3      n10     a1              6
   n10     n3      a1              3
   n4      n5      a1              5
   n5      n4      a1              2
   n4      n6      a1              3
   n6      n4      a1              3
   n4      n7      a1              4
   n7      n4      a1              9
   n4      n8      a1              5
   n8      n4      a1              3
   n4      n9      a1              5
   n9      n4      a1              8
   n4      n10     a1              5
   n10     n4      a1              6
   n5      n6      a1              9
   n6      n5      a1              9
   n5      n7      a1              6
   n7      n5      a1              4
   n5      n8      a1              5
   n8      n5      a1              6
   n5      n9      a1              5
   n9      n5      a1              2
   n5      n10     a1              1
   n10     n5      a1              3
   n6      n7      a1              5
   n7      n6      a1              2
   n6      n8      a1              4
   n8      n6      a1              8
   n6      n9      a1              8
   n9      n6      a1              1
   n6      n10     a1              8
   n10     n6      a1              3
   n7      n8      a1              3
   n8      n7      a1              4
   n7      n9      a1              9
   n9      n7      a1              1
   n7      n10     a1              4
   n10     n7      a1              9
   n8      n9      a1              2
   n9      n8      a1              2
   n8      n10     a1              9
   n10     n8      a1              9
   n9      n10     a1              6
   n10     n9      a1              4
$offdelim
/;

Parameter demand(n) /
   n1             19
   n2            -25
   n3             34
   n4            -20
   n5             29
   n6             14
   n7            -34
   n8              3
   n9            -21
   n10             1
/;

demand(n) = -demand(n);
u = -sum(n$(demand(n)<0), demand(n));
xupp(m,n,s)$(fcost(m,n,s) or vcost(m,n,s)) = u;
loop((m,n,s)$(fcost(m,n,s)<0),
   fcost(m,n,s)=0;
   vcost(m,n,s)=0;
);

