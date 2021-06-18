Set n / n1*n55 /;
Set s / a1 /;

yupp('n1','n1','a1')=0;

Parameter fcost(m,n,s) /
$ondelim
   n1      n2      a1            134
   n1      n6      a1            524
   n2      n1      a1            962
   n6      n1      a1            345
   n2      n3      a1            161
   n2      n7      a1            342
   n3      n2      a1            991
   n7      n2      a1            253
   n3      n4      a1            421
   n3      n8      a1            195
   n4      n3      a1            471
   n8      n3      a1            212
   n4      n5      a1            935
   n4      n9      a1            511
   n5      n4      a1            673
   n9      n4      a1            611
   n5      n10     a1            447
   n10     n5      a1            457
   n6      n7      a1            723
   n6      n11     a1            878
   n7      n6      a1            690
   n11     n6      a1            506
   n7      n8      a1            464
   n7      n12     a1            505
   n8      n7      a1            170
   n12     n7      a1            601
   n8      n9      a1            829
   n8      n13     a1            254
   n9      n8      a1            566
   n13     n8      a1            308
   n9      n10     a1            426
   n9      n14     a1            938
   n10     n9      a1            529
   n14     n9      a1            615
   n10     n15     a1            304
   n15     n10     a1            606
   n11     n12     a1            621
   n11     n16     a1            272
   n12     n11     a1            777
   n16     n11     a1            412
   n12     n13     a1            261
   n12     n17     a1            567
   n13     n12     a1            531
   n17     n12     a1            350
   n13     n14     a1            566
   n13     n18     a1            591
   n14     n13     a1            257
   n18     n13     a1            583
   n14     n15     a1            809
   n14     n19     a1            688
   n15     n14     a1            606
   n19     n14     a1            468
   n15     n20     a1            862
   n20     n15     a1            159
   n16     n17     a1            948
   n16     n21     a1            541
   n17     n16     a1            491
   n21     n16     a1            320
   n17     n18     a1            448
   n17     n22     a1            284
   n18     n17     a1            153
   n22     n17     a1            138
   n18     n19     a1            227
   n18     n23     a1            593
   n19     n18     a1            807
   n23     n18     a1            417
   n19     n20     a1            909
   n19     n24     a1            451
   n20     n19     a1            419
   n24     n19     a1            703
   n20     n25     a1            544
   n25     n20     a1            402
   n21     n22     a1            493
   n21     n26     a1            787
   n22     n21     a1            348
   n26     n21     a1            418
   n22     n23     a1            498
   n22     n27     a1            198
   n23     n22     a1            772
   n27     n22     a1            692
   n23     n24     a1            290
   n23     n28     a1            891
   n24     n23     a1            356
   n28     n23     a1            934
   n24     n25     a1            628
   n24     n29     a1            486
   n25     n24     a1            269
   n29     n24     a1            616
   n25     n30     a1            522
   n30     n25     a1            399
   n26     n27     a1            992
   n26     n31     a1            912
   n27     n26     a1            403
   n31     n26     a1            388
   n27     n28     a1            955
   n27     n32     a1            785
   n28     n27     a1            188
   n32     n27     a1            457
   n28     n29     a1            669
   n28     n33     a1            189
   n29     n28     a1            668
   n33     n28     a1            755
   n29     n30     a1            341
   n29     n34     a1            160
   n30     n29     a1            939
   n34     n29     a1            896
   n30     n35     a1            149
   n35     n30     a1            449
   n31     n32     a1            697
   n31     n36     a1            905
   n32     n31     a1            855
   n36     n31     a1            101
   n32     n33     a1            486
   n32     n37     a1            155
   n33     n32     a1            112
   n37     n32     a1            345
   n33     n34     a1            521
   n33     n38     a1            182
   n34     n33     a1            796
   n38     n33     a1            461
   n34     n35     a1            473
   n34     n39     a1            159
   n35     n34     a1            253
   n39     n34     a1            810
   n35     n40     a1            686
   n40     n35     a1            222
   n36     n37     a1            887
   n36     n41     a1            291
   n37     n36     a1            477
   n41     n36     a1            724
   n37     n38     a1            172
   n37     n42     a1            270
   n38     n37     a1            418
   n42     n37     a1            870
   n38     n39     a1            192
   n38     n43     a1            480
   n39     n38     a1            402
   n43     n38     a1            925
   n39     n40     a1            323
   n39     n44     a1            781
   n40     n39     a1            505
   n44     n39     a1            531
   n40     n45     a1            222
   n45     n40     a1            800
   n41     n42     a1            913
   n41     n46     a1            470
   n42     n41     a1            911
   n46     n41     a1            267
   n42     n43     a1            240
   n42     n47     a1            124
   n43     n42     a1            576
   n47     n42     a1            302
   n43     n44     a1            278
   n43     n48     a1            384
   n44     n43     a1            519
   n48     n43     a1            187
   n44     n45     a1            110
   n44     n49     a1            615
   n45     n44     a1            443
   n49     n44     a1            709
   n45     n50     a1            865
   n50     n45     a1            174
   n46     n47     a1            329
   n46     n51     a1            720
   n47     n46     a1            223
   n51     n46     a1            761
   n47     n48     a1            464
   n47     n52     a1            116
   n48     n47     a1            311
   n52     n47     a1            447
   n48     n49     a1            190
   n48     n53     a1            263
   n49     n48     a1            762
   n53     n48     a1            713
   n49     n50     a1            365
   n49     n54     a1            400
   n50     n49     a1            603
   n54     n49     a1            624
   n50     n55     a1            708
   n55     n50     a1            101
   n51     n52     a1            928
   n52     n51     a1            605
   n52     n53     a1            904
   n53     n52     a1            772
   n53     n54     a1            185
   n54     n53     a1            826
   n54     n55     a1            526
   n55     n54     a1            871
$offdelim
/;

Parameter vcost(m,n,s) /
$ondelim
   n1      n2      a1              9
   n1      n6      a1              9
   n2      n1      a1              1
   n6      n1      a1              9
   n2      n3      a1              7
   n2      n7      a1              8
   n3      n2      a1              1
   n7      n2      a1              6
   n3      n4      a1              8
   n3      n8      a1              9
   n4      n3      a1              1
   n8      n3      a1              7
   n4      n5      a1              2
   n4      n9      a1              3
   n5      n4      a1              4
   n9      n4      a1              4
   n5      n10     a1              2
   n10     n5      a1              2
   n6      n7      a1              8
   n6      n11     a1              8
   n7      n6      a1              3
   n11     n6      a1              1
   n7      n8      a1              6
   n7      n12     a1              6
   n8      n7      a1              7
   n12     n7      a1              4
   n8      n9      a1              3
   n8      n13     a1              1
   n9      n8      a1              6
   n13     n8      a1              9
   n9      n10     a1              4
   n9      n14     a1              3
   n10     n9      a1              4
   n14     n9      a1              1
   n10     n15     a1              4
   n15     n10     a1              1
   n11     n12     a1              4
   n11     n16     a1              6
   n12     n11     a1              7
   n16     n11     a1              4
   n12     n13     a1              7
   n12     n17     a1              9
   n13     n12     a1              5
   n17     n12     a1              9
   n13     n14     a1              8
   n13     n18     a1              4
   n14     n13     a1              7
   n18     n13     a1              7
   n14     n15     a1              9
   n14     n19     a1              3
   n15     n14     a1              8
   n19     n14     a1              7
   n15     n20     a1              3
   n20     n15     a1              5
   n16     n17     a1              9
   n16     n21     a1              2
   n17     n16     a1              6
   n21     n16     a1              6
   n17     n18     a1              1
   n17     n22     a1              4
   n18     n17     a1              1
   n22     n17     a1              4
   n18     n19     a1              9
   n18     n23     a1              3
   n19     n18     a1              2
   n23     n18     a1              1
   n19     n20     a1              2
   n19     n24     a1              9
   n20     n19     a1              3
   n24     n19     a1              2
   n20     n25     a1              2
   n25     n20     a1              5
   n21     n22     a1              2
   n21     n26     a1              5
   n22     n21     a1              9
   n26     n21     a1              4
   n22     n23     a1              6
   n22     n27     a1              6
   n23     n22     a1              5
   n27     n22     a1              8
   n23     n24     a1              6
   n23     n28     a1              3
   n24     n23     a1              2
   n28     n23     a1              3
   n24     n25     a1              4
   n24     n29     a1              2
   n25     n24     a1              3
   n29     n24     a1              4
   n25     n30     a1              4
   n30     n25     a1              5
   n26     n27     a1              1
   n26     n31     a1              9
   n27     n26     a1              9
   n31     n26     a1              6
   n27     n28     a1              7
   n27     n32     a1              8
   n28     n27     a1              8
   n32     n27     a1              7
   n28     n29     a1              9
   n28     n33     a1              9
   n29     n28     a1              1
   n33     n28     a1              6
   n29     n30     a1              8
   n29     n34     a1              5
   n30     n29     a1              1
   n34     n29     a1              8
   n30     n35     a1              2
   n35     n30     a1              4
   n31     n32     a1              3
   n31     n36     a1              9
   n32     n31     a1              2
   n36     n31     a1              7
   n32     n33     a1              8
   n32     n37     a1              3
   n33     n32     a1              2
   n37     n32     a1              6
   n33     n34     a1              1
   n33     n38     a1              4
   n34     n33     a1              5
   n38     n33     a1              2
   n34     n35     a1              3
   n34     n39     a1              3
   n35     n34     a1              7
   n39     n34     a1              1
   n35     n40     a1              4
   n40     n35     a1              2
   n36     n37     a1              6
   n36     n41     a1              4
   n37     n36     a1              8
   n41     n36     a1              9
   n37     n38     a1              9
   n37     n42     a1              8
   n38     n37     a1              2
   n42     n37     a1              8
   n38     n39     a1              5
   n38     n43     a1              7
   n39     n38     a1              5
   n43     n38     a1              9
   n39     n40     a1              8
   n39     n44     a1              3
   n40     n39     a1              1
   n44     n39     a1              1
   n40     n45     a1              8
   n45     n40     a1              6
   n41     n42     a1              9
   n41     n46     a1              6
   n42     n41     a1              9
   n46     n41     a1              6
   n42     n43     a1              5
   n42     n47     a1              5
   n43     n42     a1              2
   n47     n42     a1              6
   n43     n44     a1              3
   n43     n48     a1              2
   n44     n43     a1              7
   n48     n43     a1              2
   n44     n45     a1              1
   n44     n49     a1              5
   n45     n44     a1              6
   n49     n44     a1              1
   n45     n50     a1              5
   n50     n45     a1              4
   n46     n47     a1              5
   n46     n51     a1              8
   n47     n46     a1              5
   n51     n46     a1              3
   n47     n48     a1              9
   n47     n52     a1              2
   n48     n47     a1              5
   n52     n47     a1              4
   n48     n49     a1              2
   n48     n53     a1              3
   n49     n48     a1              8
   n53     n48     a1              4
   n49     n50     a1              2
   n49     n54     a1              3
   n50     n49     a1              5
   n54     n49     a1              8
   n50     n55     a1              7
   n55     n50     a1              2
   n51     n52     a1              7
   n52     n51     a1              7
   n52     n53     a1              8
   n53     n52     a1              2
   n53     n54     a1              5
   n54     n53     a1              6
   n54     n55     a1              7
   n55     n54     a1              7
$offdelim
/;

Parameter demand(n) /
   n2             23
   n3             65
   n4             15
   n5             46
   n8             29
   n9             41
   n10             1
   n13            32
   n14            42
   n18            33
   n23            33
   n24            33
   n27            26
   n28            45
   n29            42
   n30            35
   n35            40
   n36            65
   n37            56
   n38            30
   n39            10
   n41            26
   n42         -1000
   n43            27
   n44            23
   n45            52
   n47            62
   n48            25
   n53            10
   n54            24
   n55             9
/;

u = -sum(n$(demand(n)<0), demand(n));
xupp(m,n,s)$(fcost(m,n,s) or vcost(m,n,s)) = u;
loop((m,n,s)$(fcost(m,n,s)<0),
   fcost(m,n,s)=0;
   vcost(m,n,s)=0;
);

