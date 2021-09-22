Set n / n1*n50 /;
Set s / a1*a2 /;

yupp('n1','n1','a1')=0;

Parameter fcost(m,n,s) /
$ondelim
   n2      n4      a1            944
   n2      n4      a2            924
   n4      n3      a1            978
   n2      n3      a1            762
   n2      n5      a1            868
   n5      n3      a1            744
   n3      n1      a1            881
   n3      n6      a1            910
   n6      n1      a1            766
   n3      n8      a1            833
   n8      n7      a1            863
   n7      n1      a1            940
   n2      n9      a1            609
   n9      n10     a1            906
   n9      n10     a2            910
   n10     n1      a1            893
   n2      n11     a1            752
   n2      n11     a2            987
   n11     n1      a1            861
   n2      n13     a1            526
   n13     n12     a1            911
   n12     n1      a1            540
   n2      n1      a1            841
   n2      n14     a1            807
   n14     n1      a1            907
   n2      n17     a1            719
   n17     n16     a1            790
   n2      n16     a1            602
   n16     n18     a1            837
   n18     n15     a1            922
   n18     n15     a2            645
   n15     n19     a1            815
   n19     n1      a1            995
   n19     n1      a2            674
   n15     n1      a1            889
   n15     n20     a1            751
   n20     n1      a1            952
   n2      n22     a1            727
   n22     n21     a1            988
   n22     n21     a2            880
   n21     n1      a1            757
   n21     n23     a1            986
   n23     n1      a1            769
   n2      n25     a1            654
   n25     n24     a1            703
   n2      n24     a1            637
   n2      n24     a2            803
   n24     n26     a1            854
   n26     n1      a1            677
   n26     n1      a2            819
   n2      n27     a1            759
   n27     n1      a1            692
   n2      n28     a1            650
   n28     n29     a1            899
   n29     n1      a1            621
   n28     n1      a1            766
   n2      n31     a1            838
   n2      n31     a2            713
   n31     n30     a1            788
   n30     n32     a1            965
   n32     n1      a1            731
   n30     n1      a1            746
   n30     n1      a2            591
   n2      n34     a1            717
   n34     n33     a1            529
   n34     n33     a2            699
   n2      n35     a1            807
   n35     n33     a1            964
   n2      n33     a1            616
   n33     n36     a1            895
   n33     n37     a1            645
   n37     n36     a1            798
   n36     n38     a1            839
   n36     n38     a2            623
   n38     n1      a1            706
   n2      n41     a1            860
   n41     n40     a1            845
   n41     n40     a2            705
   n2      n40     a1            887
   n2      n42     a1            511
   n42     n40     a1            507
   n40     n43     a1            938
   n40     n43     a2            574
   n43     n44     a1            817
   n44     n39     a1            706
   n40     n45     a1            839
   n45     n39     a1            924
   n45     n39     a2            561
   n39     n46     a1            939
   n46     n1      a1            742
   n39     n1      a1            879
   n39     n47     a1            611
   n47     n1      a1            728
   n39     n49     a1            997
   n49     n48     a1            846
   n49     n48     a2            939
   n48     n50     a1            773
   n50     n1      a1            544
   n48     n1      a2            941
   n48     n1      a1            819
$offdelim
/;

Parameter vcost(m,n,s) /
$ondelim
   n2      n4      a1              2
   n2      n4      a2              5
   n4      n3      a1              3
   n2      n3      a1              5
   n2      n5      a1              7
   n5      n3      a1              7
   n3      n1      a1              3
   n3      n6      a1              9
   n6      n1      a1              4
   n3      n8      a1              6
   n8      n7      a1              4
   n7      n1      a1              6
   n2      n9      a1              3
   n9      n10     a1              2
   n9      n10     a2              4
   n10     n1      a1              3
   n2      n11     a1              2
   n2      n11     a2              7
   n11     n1      a1              4
   n2      n13     a1              3
   n13     n12     a1              1
   n12     n1      a1              9
   n2      n1      a1              6
   n2      n14     a1              4
   n14     n1      a1              2
   n2      n17     a1              8
   n17     n16     a1              3
   n2      n16     a1              9
   n16     n18     a1              4
   n18     n15     a1              9
   n18     n15     a2              4
   n15     n19     a1              9
   n19     n1      a1              6
   n19     n1      a2              3
   n15     n1      a1              9
   n15     n20     a1              1
   n20     n1      a1              8
   n2      n22     a1              5
   n22     n21     a1              7
   n22     n21     a2              3
   n21     n1      a1              4
   n21     n23     a1              1
   n23     n1      a1              6
   n2      n25     a1              3
   n25     n24     a1              6
   n2      n24     a1              3
   n2      n24     a2              3
   n24     n26     a1              1
   n26     n1      a1              1
   n26     n1      a2              9
   n2      n27     a1              3
   n27     n1      a1              4
   n2      n28     a1              3
   n28     n29     a1              1
   n29     n1      a1              5
   n28     n1      a1              4
   n2      n31     a1              7
   n2      n31     a2              3
   n31     n30     a1              3
   n30     n32     a1              5
   n32     n1      a1              7
   n30     n1      a1              5
   n30     n1      a2              8
   n2      n34     a1              1
   n34     n33     a1              4
   n34     n33     a2              7
   n2      n35     a1              6
   n35     n33     a1              6
   n2      n33     a1              2
   n33     n36     a1              2
   n33     n37     a1              9
   n37     n36     a1              2
   n36     n38     a1              3
   n36     n38     a2              7
   n38     n1      a1              3
   n2      n41     a1              7
   n41     n40     a1              3
   n41     n40     a2              4
   n2      n40     a1              3
   n2      n42     a1              1
   n42     n40     a1              3
   n40     n43     a1              1
   n40     n43     a2              1
   n43     n44     a1              8
   n44     n39     a1              6
   n40     n45     a1              6
   n45     n39     a1              2
   n45     n39     a2              2
   n39     n46     a1              4
   n46     n1      a1              1
   n39     n1      a1              8
   n39     n47     a1              6
   n47     n1      a1              2
   n39     n49     a1              3
   n49     n48     a1              4
   n49     n48     a2              5
   n48     n50     a1              2
   n50     n1      a1              8
   n48     n1      a2              6
   n48     n1      a1              5
$offdelim
/;

Parameter demand(n) /
   n1           2232
   n3            -56
   n5             -1
   n6             16
   n7              5
   n8              4
   n9           -750
   n10           124
   n11          -137
   n12           256
   n13          -660
   n15             7
   n16             1
   n17            -2
   n18           -28
   n19             3
   n20             1
   n23           -16
   n24           320
   n25          -824
   n26            16
   n29           -41
   n30            -1
   n32             1
   n33             4
   n35          -195
   n36             1
   n37             1
   n39             8
   n40             3
   n41          -149
   n42            -6
   n43             1
   n44             2
   n45            -1
   n46            -3
   n47          -135
   n48             2
   n50            -3
/;

* Upper bound for flow on any arc
u = -sum(n$(demand(n)<0), demand(n));
xupp(m,n,s)$(fcost(m,n,s) or vcost(m,n,s)) = u;

