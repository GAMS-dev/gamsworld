Set n / n1*n90 /;
Set s / a1*a3 /;

yupp('n1','n1','a1')=0;

Parameter fcost(m,n,s) /
$ondelim
   n2      n4      a1            944
   n4      n5      a1            924
   n5      n3      a1            978
   n2      n3      a1            762
   n2      n6      a1            868
   n6      n3      a1            744
   n2      n8      a1            881
   n8      n7      a1            910
   n2      n7      a1            766
   n7      n3      a1            833
   n7      n3      a2            863
   n2      n9      a1            940
   n2      n10     a1            609
   n10     n9      a1            906
   n9      n11     a1            910
   n11     n3      a1            893
   n11     n3      a2            612
   n2      n12     a1            605
   n2      n12     a2            794
   n12     n3      a1            555
   n2      n13     a1            821
   n13     n3      a1            706
   n2      n16     a1            904
   n2      n16     a2            737
   n16     n17     a1            953
   n16     n17     a2            835
   n17     n15     a1            878
   n15     n19     a1            922
   n15     n19     a2            708
   n19     n18     a1            677
   n19     n18     a2            623
   n18     n14     a1            578
   n18     n14     a2            848
   n14     n21     a1            631
   n21     n20     a1            818
   n20     n3      a1            794
   n20     n3      a2            955
   n14     n22     a1            565
   n22     n3      a1            887
   n14     n24     a1            965
   n24     n23     a1            888
   n14     n23     a1            532
   n23     n3      a1            926
   n23     n3      a2            947
   n2      n26     a1            771
   n26     n25     a1            636
   n2      n27     a1            860
   n27     n25     a1            929
   n2      n28     a1            934
   n28     n25     a1            924
   n2      n29     a1            562
   n2      n29     a2            888
   n29     n30     a1            737
   n30     n25     a1            931
   n29     n25     a1            556
   n2      n32     a1            658
   n2      n32     a2            706
   n32     n31     a1            898
   n32     n33     a1            973
   n33     n31     a1            551
   n33     n31     a2            821
   n31     n34     a1            644
   n31     n35     a1            785
   n35     n34     a1            732
   n34     n25     a1            616
   n34     n25     a2            648
   n25     n38     a1            529
   n25     n38     a2            699
   n38     n37     a1            807
   n37     n36     a1            964
   n37     n36     a2            741
   n36     n39     a1            796
   n36     n39     a2            623
   n36     n39     a3            965
   n39     n40     a1            716
   n39     n40     a2            892
   n40     n3      a1            995
   n25     n42     a1            699
   n42     n41     a1            555
   n25     n41     a1            612
   n25     n43     a1            519
   n25     n43     a2            812
   n43     n41     a1            887
   n41     n44     a1            511
   n44     n45     a1            589
   n45     n3      a1            574
   n41     n3      a1            663
   n41     n46     a1            810
   n46     n3      a1            548
   n3      n49     a1            589
   n49     n48     a1            920
   n3      n48     a1            754
   n3      n50     a1            659
   n50     n48     a1            739
   n3      n51     a1            937
   n51     n48     a1            964
   n3      n53     a1            628
   n3      n53     a2            725
   n53     n52     a1            849
   n52     n48     a1            556
   n52     n48     a2            999
   n48     n54     a1            696
   n48     n54     a2            987
   n54     n47     a1            684
   n48     n55     a1            805
   n55     n47     a1            550
   n48     n47     a1            642
   n48     n56     a1            640
   n56     n47     a1            612
   n48     n57     a1            822
   n57     n47     a1            976
   n48     n58     a1            639
   n58     n47     a1            502
   n47     n59     a1            632
   n47     n59     a2            907
   n59     n1      a1            651
   n47     n60     a1            920
   n60     n1      a1            590
   n47     n62     a1            795
   n62     n61     a1            815
   n47     n61     a1            840
   n61     n63     a1            739
   n63     n1      a1            741
   n63     n1      a2            548
   n47     n65     a1            819
   n65     n64     a1            541
   n47     n64     a1            935
   n64     n66     a1            933
   n64     n66     a2            782
   n66     n1      a1            628
   n47     n67     a1            945
   n67     n1      a1            585
   n47     n68     a1            618
   n68     n1      a1            677
   n47     n1      a1            853
   n3      n71     a1            710
   n3      n71     a2            739
   n71     n72     a1            621
   n72     n70     a1            847
   n71     n70     a1            777
   n71     n70     a2            520
   n70     n73     a1            666
   n70     n73     a2            802
   n73     n74     a1            860
   n74     n69     a1            607
   n74     n69     a2            567
   n69     n75     a1            582
   n69     n76     a1            762
   n76     n75     a1            928
   n75     n77     a1            907
   n75     n77     a2            873
   n77     n1      a1            668
   n69     n78     a1            867
   n78     n1      a1            522
   n69     n1      a1            895
   n69     n79     a1            677
   n79     n1      a1            613
   n3      n81     a1            540
   n3      n81     a2            504
   n81     n82     a1            689
   n81     n82     a2            987
   n82     n80     a1            730
   n3      n84     a1            585
   n84     n83     a1            541
   n83     n80     a1            819
   n83     n80     a2            764
   n3      n85     a1            993
   n85     n80     a1            921
   n80     n87     a1            870
   n80     n87     a2            759
   n87     n86     a1            573
   n86     n1      a1            596
   n86     n88     a1            750
   n88     n1      a1            839
   n80     n89     a1            570
   n89     n1      a1            719
   n80     n1      a1            984
   n80     n90     a1            534
   n80     n90     a2            577
   n90     n1      a1            739
$offdelim
/;

Parameter vcost(m,n,s) /
$ondelim
   n2      n4      a1              2
   n4      n5      a1              5
   n5      n3      a1              3
   n2      n3      a1              5
   n2      n6      a1              7
   n6      n3      a1              7
   n2      n8      a1              3
   n8      n7      a1              9
   n2      n7      a1              4
   n7      n3      a1              6
   n7      n3      a2              4
   n2      n9      a1              6
   n2      n10     a1              3
   n10     n9      a1              2
   n9      n11     a1              4
   n11     n3      a1              3
   n11     n3      a2              6
   n2      n12     a1              7
   n2      n12     a2              6
   n12     n3      a1              7
   n2      n13     a1              1
   n13     n3      a1              4
   n2      n16     a1              8
   n2      n16     a2              1
   n16     n17     a1              4
   n16     n17     a2              3
   n17     n15     a1              4
   n15     n19     a1              9
   n15     n19     a2              4
   n19     n18     a1              1
   n19     n18     a2              1
   n18     n14     a1              3
   n18     n14     a2              7
   n14     n21     a1              5
   n21     n20     a1              1
   n20     n3      a1              1
   n20     n3      a2              8
   n14     n22     a1              4
   n22     n3      a1              8
   n14     n24     a1              7
   n24     n23     a1              4
   n14     n23     a1              7
   n23     n3      a1              5
   n23     n3      a2              1
   n2      n26     a1              5
   n26     n25     a1              3
   n2      n27     a1              6
   n27     n25     a1              8
   n2      n28     a1              6
   n28     n25     a1              7
   n2      n29     a1              2
   n2      n29     a2              1
   n29     n30     a1              7
   n30     n25     a1              4
   n29     n25     a1              6
   n2      n32     a1              6
   n2      n32     a2              2
   n32     n31     a1              1
   n32     n33     a1              1
   n33     n31     a1              3
   n33     n31     a2              2
   n31     n34     a1              8
   n31     n35     a1              5
   n35     n34     a1              4
   n34     n25     a1              5
   n34     n25     a2              3
   n25     n38     a1              4
   n25     n38     a2              7
   n38     n37     a1              6
   n37     n36     a1              6
   n37     n36     a2              8
   n36     n39     a1              2
   n36     n39     a2              6
   n36     n39     a3              2
   n39     n40     a1              4
   n39     n40     a2              9
   n40     n3      a1              3
   n25     n42     a1              7
   n42     n41     a1              7
   n25     n41     a1              5
   n25     n43     a1              8
   n25     n43     a2              1
   n43     n41     a1              3
   n41     n44     a1              1
   n44     n45     a1              2
   n45     n3      a1              4
   n41     n3      a1              7
   n41     n46     a1              5
   n46     n3      a1              6
   n3      n49     a1              4
   n49     n48     a1              9
   n3      n48     a1              6
   n3      n50     a1              8
   n50     n48     a1              8
   n3      n51     a1              7
   n51     n48     a1              2
   n3      n53     a1              9
   n3      n53     a2              7
   n53     n52     a1              3
   n52     n48     a1              7
   n52     n48     a2              5
   n48     n54     a1              6
   n48     n54     a2              1
   n54     n47     a1              8
   n48     n55     a1              9
   n55     n47     a1              2
   n48     n47     a1              8
   n48     n56     a1              1
   n56     n47     a1              9
   n48     n57     a1              3
   n57     n47     a1              8
   n48     n58     a1              4
   n58     n47     a1              3
   n47     n59     a1              6
   n47     n59     a2              4
   n59     n1      a1              6
   n47     n60     a1              1
   n60     n1      a1              4
   n47     n62     a1              4
   n62     n61     a1              8
   n47     n61     a1              6
   n61     n63     a1              4
   n63     n1      a1              6
   n63     n1      a2              9
   n47     n65     a1              4
   n65     n64     a1              4
   n47     n64     a1              2
   n64     n66     a1              3
   n64     n66     a2              7
   n66     n1      a1              2
   n47     n67     a1              1
   n67     n1      a1              7
   n47     n68     a1              6
   n68     n1      a1              7
   n47     n1      a1              1
   n3      n71     a1              7
   n3      n71     a2              7
   n71     n72     a1              4
   n72     n70     a1              8
   n71     n70     a1              2
   n71     n70     a2              4
   n70     n73     a1              1
   n70     n73     a2              3
   n73     n74     a1              1
   n74     n69     a1              6
   n74     n69     a2              6
   n69     n75     a1              3
   n69     n76     a1              3
   n76     n75     a1              1
   n75     n77     a1              7
   n75     n77     a2              7
   n77     n1      a1              2
   n69     n78     a1              5
   n78     n1      a1              9
   n69     n1      a1              7
   n69     n79     a1              7
   n79     n1      a1              5
   n3      n81     a1              1
   n3      n81     a2              4
   n81     n82     a1              5
   n81     n82     a2              5
   n82     n80     a1              9
   n3      n84     a1              7
   n84     n83     a1              6
   n83     n80     a1              1
   n83     n80     a2              9
   n3      n85     a1              5
   n85     n80     a1              2
   n80     n87     a1              7
   n80     n87     a2              4
   n87     n86     a1              5
   n86     n1      a1              3
   n86     n88     a1              8
   n88     n1      a1              1
   n80     n89     a1              9
   n89     n1      a1              7
   n80     n1      a1              6
   n80     n90     a1              4
   n80     n90     a2              6
   n90     n1      a1              3
$offdelim
/;

Parameter demand(n) /
   n1           1837
   n3            121
   n7           -205
   n16          -207
   n25             1
   n27           -41
   n30          -431
   n31           -15
   n34             1
   n36             8
   n37             2
   n38          -109
   n39             2
   n41             2
   n43            -7
   n47             6
   n48             1
   n50            -1
   n53            -2
   n54           -45
   n55             1
   n59             3
   n63          -428
   n65            -2
   n66             1
   n67            -1
   n68           -17
   n77            -2
   n80           142
   n83            15
   n84          -633
   n86             3
/;

* Upper bound for flow on any arc
u = -sum(n$(demand(n)<0), demand(n));
xupp(m,n,s)$(fcost(m,n,s) or vcost(m,n,s)) = u;

