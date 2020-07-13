Set n / n1*n40 /;
Set s / a1 /;

yupp('n1','n1','a1')=0;

Parameter fcost(m,n,s) /
$ondelim
   n1      n2      a1            134
   n1      n5      a1            524
   n2      n1      a1            962
   n5      n1      a1            345
   n2      n3      a1            161
   n2      n6      a1            342
   n3      n2      a1            991
   n6      n2      a1            253
   n3      n4      a1            421
   n3      n7      a1            195
   n4      n3      a1            471
   n7      n3      a1            212
   n4      n8      a1            935
   n8      n4      a1            511
   n5      n6      a1            673
   n5      n9      a1            611
   n6      n5      a1            447
   n9      n5      a1            457
   n6      n7      a1            723
   n6      n10     a1            878
   n7      n6      a1            690
   n10     n6      a1            506
   n7      n8      a1            464
   n7      n11     a1            505
   n8      n7      a1            170
   n11     n7      a1            601
   n8      n12     a1            829
   n12     n8      a1            254
   n9      n10     a1            566
   n9      n13     a1            308
   n10     n9      a1            426
   n13     n9      a1            938
   n10     n11     a1            529
   n10     n14     a1            615
   n11     n10     a1            304
   n14     n10     a1            606
   n11     n12     a1            621
   n11     n15     a1            272
   n12     n11     a1            777
   n15     n11     a1            412
   n12     n16     a1            261
   n16     n12     a1            567
   n13     n14     a1            531
   n13     n17     a1            350
   n14     n13     a1            566
   n17     n13     a1            591
   n14     n15     a1            257
   n14     n18     a1            583
   n15     n14     a1            809
   n18     n14     a1            688
   n15     n16     a1            606
   n15     n19     a1            468
   n16     n15     a1            862
   n19     n15     a1            159
   n16     n20     a1            948
   n20     n16     a1            541
   n17     n18     a1            491
   n17     n21     a1            320
   n18     n17     a1            448
   n21     n17     a1            284
   n18     n19     a1            153
   n18     n22     a1            138
   n19     n18     a1            227
   n22     n18     a1            593
   n19     n20     a1            807
   n19     n23     a1            417
   n20     n19     a1            909
   n23     n19     a1            451
   n20     n24     a1            419
   n24     n20     a1            703
   n21     n22     a1            544
   n21     n25     a1            402
   n22     n21     a1            493
   n25     n21     a1            787
   n22     n23     a1            348
   n22     n26     a1            418
   n23     n22     a1            498
   n26     n22     a1            198
   n23     n24     a1            772
   n23     n27     a1            692
   n24     n23     a1            290
   n27     n23     a1            891
   n24     n28     a1            356
   n28     n24     a1            934
   n25     n26     a1            628
   n25     n29     a1            486
   n26     n25     a1            269
   n29     n25     a1            616
   n26     n27     a1            522
   n26     n30     a1            399
   n27     n26     a1            992
   n30     n26     a1            912
   n27     n28     a1            403
   n27     n31     a1            388
   n28     n27     a1            955
   n31     n27     a1            785
   n28     n32     a1            188
   n32     n28     a1            457
   n29     n30     a1            669
   n29     n33     a1            189
   n30     n29     a1            668
   n33     n29     a1            755
   n30     n31     a1            341
   n30     n34     a1            160
   n31     n30     a1            939
   n34     n30     a1            896
   n31     n32     a1            149
   n31     n35     a1            449
   n32     n31     a1            697
   n35     n31     a1            905
   n32     n36     a1            855
   n36     n32     a1            101
   n33     n34     a1            486
   n33     n37     a1            155
   n34     n33     a1            112
   n37     n33     a1            345
   n34     n35     a1            521
   n34     n38     a1            182
   n35     n34     a1            796
   n38     n34     a1            461
   n35     n36     a1            473
   n35     n39     a1            159
   n36     n35     a1            253
   n39     n35     a1            810
   n36     n40     a1            949
   n40     n36     a1            974
   n37     n38     a1            618
   n38     n37     a1            958
   n38     n39     a1            125
   n39     n38     a1            414
   n39     n40     a1            634
   n40     n39     a1            459
$offdelim
/;

Parameter vcost(m,n,s) /
$ondelim
   n1      n2      a1              9
   n1      n5      a1              9
   n2      n1      a1              1
   n5      n1      a1              9
   n2      n3      a1              7
   n2      n6      a1              8
   n3      n2      a1              1
   n6      n2      a1              6
   n3      n4      a1              8
   n3      n7      a1              9
   n4      n3      a1              1
   n7      n3      a1              7
   n4      n8      a1              2
   n8      n4      a1              3
   n5      n6      a1              4
   n5      n9      a1              4
   n6      n5      a1              2
   n9      n5      a1              2
   n6      n7      a1              8
   n6      n10     a1              8
   n7      n6      a1              3
   n10     n6      a1              1
   n7      n8      a1              6
   n7      n11     a1              6
   n8      n7      a1              7
   n11     n7      a1              4
   n8      n12     a1              3
   n12     n8      a1              1
   n9      n10     a1              6
   n9      n13     a1              9
   n10     n9      a1              4
   n13     n9      a1              3
   n10     n11     a1              4
   n10     n14     a1              1
   n11     n10     a1              4
   n14     n10     a1              1
   n11     n12     a1              4
   n11     n15     a1              6
   n12     n11     a1              7
   n15     n11     a1              4
   n12     n16     a1              7
   n16     n12     a1              9
   n13     n14     a1              5
   n13     n17     a1              9
   n14     n13     a1              8
   n17     n13     a1              4
   n14     n15     a1              7
   n14     n18     a1              7
   n15     n14     a1              9
   n18     n14     a1              3
   n15     n16     a1              8
   n15     n19     a1              7
   n16     n15     a1              3
   n19     n15     a1              5
   n16     n20     a1              9
   n20     n16     a1              2
   n17     n18     a1              6
   n17     n21     a1              6
   n18     n17     a1              1
   n21     n17     a1              4
   n18     n19     a1              1
   n18     n22     a1              4
   n19     n18     a1              9
   n22     n18     a1              3
   n19     n20     a1              2
   n19     n23     a1              1
   n20     n19     a1              2
   n23     n19     a1              9
   n20     n24     a1              3
   n24     n20     a1              2
   n21     n22     a1              2
   n21     n25     a1              5
   n22     n21     a1              2
   n25     n21     a1              5
   n22     n23     a1              9
   n22     n26     a1              4
   n23     n22     a1              6
   n26     n22     a1              6
   n23     n24     a1              5
   n23     n27     a1              8
   n24     n23     a1              6
   n27     n23     a1              3
   n24     n28     a1              2
   n28     n24     a1              3
   n25     n26     a1              4
   n25     n29     a1              2
   n26     n25     a1              3
   n29     n25     a1              4
   n26     n27     a1              4
   n26     n30     a1              5
   n27     n26     a1              1
   n30     n26     a1              9
   n27     n28     a1              9
   n27     n31     a1              6
   n28     n27     a1              7
   n31     n27     a1              8
   n28     n32     a1              8
   n32     n28     a1              7
   n29     n30     a1              9
   n29     n33     a1              9
   n30     n29     a1              1
   n33     n29     a1              6
   n30     n31     a1              8
   n30     n34     a1              5
   n31     n30     a1              1
   n34     n30     a1              8
   n31     n32     a1              2
   n31     n35     a1              4
   n32     n31     a1              3
   n35     n31     a1              9
   n32     n36     a1              2
   n36     n32     a1              7
   n33     n34     a1              8
   n33     n37     a1              3
   n34     n33     a1              2
   n37     n33     a1              6
   n34     n35     a1              1
   n34     n38     a1              4
   n35     n34     a1              5
   n38     n34     a1              2
   n35     n36     a1              3
   n35     n39     a1              3
   n36     n35     a1              7
   n39     n35     a1              1
   n36     n40     a1              3
   n40     n36     a1              7
   n37     n38     a1              9
   n38     n37     a1              6
   n38     n39     a1              6
   n39     n38     a1              5
   n39     n40     a1              4
   n40     n39     a1              1
$offdelim
/;

Parameter demand(n) /
   n1             66
   n2             77
   n6           -164
   n8           -123
   n9           -125
   n10           -95
   n11          -135
   n13            60
   n14            -4
   n15            65
   n18            53
   n21            66
   n23           133
   n24          -121
   n25           -59
   n26           -97
   n28            54
   n29            65
   n30            24
   n31           105
   n33           -77
   n36            63
   n38            73
   n39            32
   n40            64
/;

u = -sum(n$(demand(n)<0), demand(n));
xupp(m,n,s)$(fcost(m,n,s) or vcost(m,n,s)) = u;
loop((m,n,s)$(fcost(m,n,s)<0),
   fcost(m,n,s)=0;
   vcost(m,n,s)=0;
);

