Set n / n1*n80 /;
Set s / a1*a3 /;

yupp('n1','n1','a1')=0;

Parameter fcost(m,n,s) /
$ondelim
   n2      n6      a1            944
   n6      n5      a1            924
   n2      n5      a1            978
   n2      n7      a1            762
   n7      n5      a1            868
   n2      n8      a1            744
   n8      n5      a1            881
   n2      n5      a2            910
   n2      n9      a1            766
   n9      n5      a1            833
   n5      n10     a1            863
   n5      n10     a2            940
   n5      n11     a1            609
   n11     n10     a1            906
   n10     n12     a1            910
   n12     n4      a1            893
   n12     n4      a2            612
   n10     n13     a1            605
   n10     n13     a2            794
   n13     n4      a1            555
   n2      n16     a1            821
   n2      n16     a2            706
   n2      n16     a3            904
   n16     n15     a1            737
   n16     n15     a2            953
   n15     n17     a1            835
   n17     n14     a1            878
   n15     n18     a1            922
   n15     n18     a2            708
   n18     n14     a1            677
   n14     n20     a1            623
   n20     n19     a1            578
   n14     n21     a1            957
   n21     n19     a1            724
   n14     n19     a1            955
   n19     n22     a1            534
   n19     n22     a2            671
   n19     n23     a1            722
   n23     n22     a1            952
   n22     n4      a1            727
   n22     n4      a2            888
   n4      n26     a1            532
   n4      n26     a2            926
   n26     n25     a1            947
   n26     n25     a2            771
   n25     n27     a1            636
   n27     n24     a1            860
   n25     n24     a1            929
   n25     n28     a1            934
   n28     n24     a1            924
   n25     n24     a2            562
   n24     n31     a1            888
   n31     n30     a1            507
   n24     n30     a1            691
   n30     n29     a1            910
   n30     n29     a2            510
   n29     n3      a1            907
   n29     n3      a2            509
   n29     n32     a1            996
   n32     n3      a1            628
   n29     n3      a3            966
   n4      n34     a1            503
   n34     n33     a1            828
   n4      n33     a1            900
   n4      n35     a1            900
   n35     n33     a1            630
   n33     n36     a1            660
   n33     n36     a2            679
   n36     n3      a1            830
   n36     n3      a2            995
   n4      n37     a1            616
   n37     n3      a1            895
   n4      n39     a1            986
   n39     n38     a1            743
   n38     n3      a1            594
   n4      n40     a1            764
   n40     n3      a1            995
   n4      n41     a1            699
   n41     n3      a1            555
   n4      n3      a1            612
   n3      n46     a1            519
   n3      n46     a2            812
   n46     n45     a1            549
   n45     n44     a1            662
   n45     n44     a2            980
   n44     n43     a1            510
   n44     n43     a2            574
   n44     n47     a1            817
   n44     n47     a2            632
   n47     n43     a1            820
   n43     n48     a1            578
   n48     n42     a1            964
   n43     n49     a1            659
   n49     n42     a1            739
   n43     n50     a1            725
   n50     n42     a1            646
   n43     n42     a1            981
   n43     n51     a1            913
   n51     n42     a1            884
   n3      n54     a1            636
   n3      n54     a2            693
   n3      n54     a3            892
   n54     n53     a1            948
   n54     n55     a1            755
   n55     n53     a1            707
   n53     n57     a1            886
   n57     n56     a1            662
   n57     n56     a2            708
   n56     n52     a1            800
   n56     n52     a2            720
   n52     n58     a1            976
   n58     n42     a1            639
   n52     n59     a1            502
   n59     n42     a1            632
   n52     n42     a1            907
   n52     n60     a1            651
   n52     n60     a2            920
   n60     n42     a1            590
   n52     n61     a1            795
   n61     n42     a1            815
   n42     n64     a1            840
   n42     n64     a2            739
   n64     n63     a1            741
   n63     n65     a1            548
   n65     n62     a1            648
   n42     n66     a1            942
   n42     n66     a2            519
   n66     n67     a1            637
   n66     n67     a2            797
   n67     n62     a1            535
   n42     n69     a1            654
   n42     n69     a2            769
   n69     n68     a1            648
   n69     n68     a2            655
   n68     n62     a1            708
   n68     n70     a1            616
   n70     n62     a1            936
   n68     n62     a2            871
   n68     n71     a1            553
   n71     n62     a1            939
   n62     n74     a1            623
   n74     n73     a1            892
   n62     n73     a1            781
   n73     n72     a1            686
   n73     n72     a2            607
   n72     n75     a1            567
   n72     n75     a2            582
   n75     n1      a1            762
   n75     n1      a2            928
   n75     n1      a3            907
   n62     n77     a1            873
   n77     n76     a1            668
   n62     n78     a1            867
   n62     n78     a2            522
   n78     n76     a1            895
   n76     n79     a1            677
   n79     n1      a1            613
   n76     n1      a1            540
   n76     n80     a1            504
   n80     n1      a1            689
$offdelim
/;

Parameter vcost(m,n,s) /
$ondelim
   n2      n6      a1              2
   n6      n5      a1              5
   n2      n5      a1              3
   n2      n7      a1              5
   n7      n5      a1              7
   n2      n8      a1              7
   n8      n5      a1              3
   n2      n5      a2              9
   n2      n9      a1              4
   n9      n5      a1              6
   n5      n10     a1              4
   n5      n10     a2              6
   n5      n11     a1              3
   n11     n10     a1              2
   n10     n12     a1              4
   n12     n4      a1              3
   n12     n4      a2              6
   n10     n13     a1              7
   n10     n13     a2              6
   n13     n4      a1              7
   n2      n16     a1              1
   n2      n16     a2              4
   n2      n16     a3              8
   n16     n15     a1              1
   n16     n15     a2              4
   n15     n17     a1              3
   n17     n14     a1              4
   n15     n18     a1              9
   n15     n18     a2              4
   n18     n14     a1              1
   n14     n20     a1              1
   n20     n19     a1              3
   n14     n21     a1              1
   n21     n19     a1              7
   n14     n19     a1              1
   n19     n22     a1              7
   n19     n22     a2              5
   n19     n23     a1              3
   n23     n22     a1              8
   n22     n4      a1              5
   n22     n4      a2              4
   n4      n26     a1              7
   n4      n26     a2              5
   n26     n25     a1              1
   n26     n25     a2              5
   n25     n27     a1              3
   n27     n24     a1              6
   n25     n24     a1              8
   n25     n28     a1              6
   n28     n24     a1              7
   n25     n24     a2              2
   n24     n31     a1              1
   n31     n30     a1              4
   n24     n30     a1              9
   n30     n29     a1              7
   n30     n29     a2              6
   n29     n3      a1              2
   n29     n3      a2              1
   n29     n32     a1              6
   n32     n3      a1              4
   n29     n3      a3              1
   n4      n34     a1              7
   n34     n33     a1              2
   n4      n33     a1              5
   n4      n35     a1              2
   n35     n33     a1              9
   n33     n36     a1              7
   n33     n36     a2              1
   n36     n3      a1              8
   n36     n3      a2              2
   n4      n37     a1              2
   n37     n3      a1              2
   n4      n39     a1              5
   n39     n38     a1              2
   n38     n3      a1              5
   n4      n40     a1              1
   n40     n3      a1              3
   n4      n41     a1              7
   n41     n3      a1              7
   n4      n3      a1              5
   n3      n46     a1              8
   n3      n46     a2              1
   n46     n45     a1              3
   n45     n44     a1              7
   n45     n44     a2              7
   n44     n43     a1              2
   n44     n43     a2              1
   n44     n47     a1              8
   n44     n47     a2              8
   n47     n43     a1              9
   n43     n48     a1              8
   n48     n42     a1              6
   n43     n49     a1              8
   n49     n42     a1              8
   n43     n50     a1              7
   n50     n42     a1              7
   n43     n42     a1              5
   n43     n51     a1              7
   n51     n42     a1              5
   n3      n54     a1              3
   n3      n54     a2              9
   n3      n54     a3              2
   n54     n53     a1              2
   n54     n55     a1              3
   n55     n53     a1              9
   n53     n57     a1              2
   n57     n56     a1              4
   n57     n56     a2              1
   n56     n52     a1              4
   n56     n52     a2              2
   n52     n58     a1              8
   n58     n42     a1              4
   n52     n59     a1              3
   n59     n42     a1              6
   n52     n42     a1              4
   n52     n60     a1              6
   n52     n60     a2              1
   n60     n42     a1              4
   n52     n61     a1              4
   n61     n42     a1              8
   n42     n64     a1              6
   n42     n64     a2              4
   n64     n63     a1              6
   n63     n65     a1              9
   n65     n62     a1              2
   n42     n66     a1              2
   n42     n66     a2              9
   n66     n67     a1              2
   n66     n67     a2              3
   n67     n62     a1              1
   n42     n69     a1              8
   n42     n69     a2              1
   n69     n68     a1              8
   n69     n68     a2              7
   n68     n62     a1              6
   n68     n70     a1              9
   n70     n62     a1              1
   n68     n62     a2              9
   n68     n71     a1              5
   n71     n62     a1              8
   n62     n74     a1              2
   n74     n73     a1              2
   n62     n73     a1              5
   n73     n72     a1              4
   n73     n72     a2              6
   n72     n75     a1              6
   n72     n75     a2              3
   n75     n1      a1              3
   n75     n1      a2              1
   n75     n1      a3              7
   n62     n77     a1              7
   n77     n76     a1              2
   n62     n78     a1              5
   n62     n78     a2              9
   n78     n76     a1              7
   n76     n79     a1              7
   n79     n1      a1              5
   n76     n1      a1              1
   n76     n80     a1              4
   n80     n1      a1              5
$offdelim
/;

Parameter demand(n) /
   n1            130
   n3              9
   n4              2
   n22           -17
   n25             1
   n29             2
   n30             1
   n31           -65
   n42            11
   n52             3
   n55           -45
   n76            15
   n78           -50
   n79             3
/;

* Upper bound for flow on any arc
u = -sum(n$(demand(n)<0), demand(n));
xupp(m,n,s)$(fcost(m,n,s) or vcost(m,n,s)) = u;

