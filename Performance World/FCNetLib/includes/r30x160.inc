Set n / n1*n30 /;
Set s / a1 /;

yupp('n1','n1','a1')=0;

Parameter fcost(m,n,s) /
$ondelim
   n7      n5      a1            944
   n5      n7      a1            924
   n5      n24     a1            978
   n24     n5      a1            762
   n14     n27     a1            868
   n27     n14     a1            744
   n8      n30     a1            881
   n30     n8      a1            910
   n5      n22     a1            766
   n22     n5      a1            833
   n4      n23     a1            863
   n23     n4      a1            940
   n20     n15     a1            609
   n15     n20     a1            906
   n16     n15     a1            910
   n15     n16     a1            893
   n1      n7      a1            612
   n7      n1      a1            605
   n3      n8      a1            794
   n8      n3      a1            555
   n18     n17     a1            821
   n17     n18     a1            706
   n12     n11     a1            904
   n11     n12     a1            737
   n8      n6      a1            953
   n6      n8      a1            835
   n10     n17     a1            878
   n17     n10     a1            922
   n17     n15     a1            708
   n15     n17     a1            677
   n4      n6      a1            623
   n6      n4      a1            578
   n4      n20     a1            957
   n20     n4      a1            724
   n10     n12     a1            955
   n12     n10     a1            534
   n2      n15     a1            671
   n15     n2      a1            722
   n11     n6      a1            952
   n6      n11     a1            727
   n8      n16     a1            988
   n16     n8      a1            880
   n12     n13     a1            757
   n13     n12     a1            986
   n9      n28     a1            769
   n28     n9      a1            654
   n12     n27     a1            703
   n27     n12     a1            637
   n3      n20     a1            803
   n20     n3      a1            854
   n6      n25     a1            677
   n25     n6      a1            819
   n7      n29     a1            759
   n29     n7      a1            692
   n8      n12     a1            650
   n12     n8      a1            899
   n11     n19     a1            621
   n19     n11     a1            766
   n8      n9      a1            838
   n9      n8      a1            713
   n3      n22     a1            788
   n22     n3      a1            965
   n5      n25     a1            731
   n25     n5      a1            746
   n13     n23     a1            591
   n23     n13     a1            717
   n13     n29     a1            757
   n29     n13     a1            951
   n3      n10     a1            968
   n10     n3      a1            973
   n9      n5      a1            809
   n5      n9      a1            853
   n21     n7      a1            751
   n7      n21     a1            643
   n19     n6      a1            645
   n6      n19     a1            798
   n19     n13     a1            839
   n13     n19     a1            623
   n22     n23     a1            945
   n23     n22     a1            965
   n22     n21     a1            643
   n21     n22     a1            924
   n2      n6      a1            642
   n6      n2      a1            585
   n10     n9      a1            602
   n9      n10     a1            731
   n8      n13     a1            589
   n13     n8      a1            574
   n1      n25     a1            516
   n25     n1      a1            592
   n9      n21     a1            538
   n21     n9      a1            957
   n17     n30     a1            835
   n30     n17     a1            916
   n10     n5      a1            939
   n5      n10     a1            742
   n8      n19     a1            879
   n19     n8      a1            611
   n1      n8      a1            728
   n8      n1      a1            997
   n8      n2      a1            846
   n2      n8      a1            939
   n22     n6      a1            773
   n6      n22     a1            544
   n8      n17     a1            941
   n17     n8      a1            819
   n4      n15     a1            708
   n15     n4      a1            916
   n7      n19     a1            719
   n19     n7      a1            701
   n17     n4      a1            801
   n4      n17     a1            683
   n11     n20     a1            931
   n20     n11     a1            527
   n9      n3      a1            746
   n3      n9      a1            883
   n10     n16     a1            920
   n16     n10     a1            590
   n10     n19     a1            795
   n19     n10     a1            815
   n21     n2      a1            840
   n2      n21     a1            739
   n9      n18     a1            741
   n18     n9      a1            548
   n16     n1      a1            648
   n1      n16     a1            942
   n20     n17     a1            519
   n17     n20     a1            637
   n15     n28     a1            797
   n28     n15     a1            535
   n20     n25     a1            514
   n25     n20     a1            609
   n1      n30     a1            779
   n30     n1      a1            677
   n12     n16     a1            522
   n16     n12     a1            627
   n6      n26     a1            936
   n26     n6      a1            871
   n15     n10     a1            532
   n10     n15     a1            911
   n2      n13     a1            802
   n13     n2      a1            860
   n11     n17     a1            777
   n17     n11     a1            948
   n18     n28     a1            808
   n28     n18     a1            697
   n18     n13     a1            959
   n13     n18     a1            778
   n8      n28     a1            719
   n28     n8      a1            748
   n20     n29     a1            923
   n29     n20     a1            933
   n8      n23     a1            768
   n23     n8      a1            812
   n10     n18     a1            925
   n18     n10     a1            866
   n12     n4      a1            661
   n4      n12     a1            780
   n4      n13     a1            987
   n13     n4      a1            730
$offdelim
/;

Parameter vcost(m,n,s) /
$ondelim
   n7      n5      a1              2
   n5      n7      a1              5
   n5      n24     a1              3
   n24     n5      a1              5
   n14     n27     a1              7
   n27     n14     a1              7
   n8      n30     a1              3
   n30     n8      a1              9
   n5      n22     a1              4
   n22     n5      a1              6
   n4      n23     a1              4
   n23     n4      a1              6
   n20     n15     a1              3
   n15     n20     a1              2
   n16     n15     a1              4
   n15     n16     a1              3
   n1      n7      a1              6
   n7      n1      a1              7
   n3      n8      a1              6
   n8      n3      a1              7
   n18     n17     a1              1
   n17     n18     a1              4
   n12     n11     a1              8
   n11     n12     a1              1
   n8      n6      a1              4
   n6      n8      a1              3
   n10     n17     a1              4
   n17     n10     a1              9
   n17     n15     a1              4
   n15     n17     a1              1
   n4      n6      a1              1
   n6      n4      a1              3
   n4      n20     a1              1
   n20     n4      a1              7
   n10     n12     a1              1
   n12     n10     a1              7
   n2      n15     a1              5
   n15     n2      a1              3
   n11     n6      a1              8
   n6      n11     a1              5
   n8      n16     a1              7
   n16     n8      a1              3
   n12     n13     a1              4
   n13     n12     a1              1
   n9      n28     a1              6
   n28     n9      a1              3
   n12     n27     a1              6
   n27     n12     a1              3
   n3      n20     a1              3
   n20     n3      a1              1
   n6      n25     a1              1
   n25     n6      a1              9
   n7      n29     a1              3
   n29     n7      a1              4
   n8      n12     a1              3
   n12     n8      a1              1
   n11     n19     a1              5
   n19     n11     a1              4
   n8      n9      a1              7
   n9      n8      a1              3
   n3      n22     a1              3
   n22     n3      a1              5
   n5      n25     a1              7
   n25     n5      a1              5
   n13     n23     a1              8
   n23     n13     a1              1
   n13     n29     a1              6
   n29     n13     a1              2
   n3      n10     a1              9
   n10     n3      a1              7
   n9      n5      a1              7
   n5      n9      a1              6
   n21     n7      a1              4
   n7      n21     a1              1
   n19     n6      a1              9
   n6      n19     a1              2
   n19     n13     a1              3
   n13     n19     a1              7
   n22     n23     a1              8
   n23     n22     a1              9
   n22     n21     a1              5
   n21     n22     a1              4
   n2      n6      a1              4
   n6      n2      a1              1
   n10     n9      a1              4
   n9      n10     a1              6
   n8      n13     a1              2
   n13     n8      a1              4
   n1      n25     a1              3
   n25     n1      a1              3
   n9      n21     a1              7
   n21     n9      a1              2
   n17     n30     a1              8
   n30     n17     a1              8
   n10     n5      a1              4
   n5      n10     a1              1
   n8      n19     a1              8
   n19     n8      a1              6
   n1      n8      a1              2
   n8      n1      a1              3
   n8      n2      a1              4
   n2      n8      a1              5
   n22     n6      a1              2
   n6      n22     a1              8
   n8      n17     a1              6
   n17     n8      a1              5
   n4      n15     a1              2
   n15     n4      a1              6
   n7      n19     a1              6
   n19     n7      a1              1
   n17     n4      a1              6
   n4      n17     a1              1
   n11     n20     a1              1
   n20     n11     a1              5
   n9      n3      a1              5
   n3      n9      a1              4
   n10     n16     a1              1
   n16     n10     a1              4
   n10     n19     a1              4
   n19     n10     a1              8
   n21     n2      a1              6
   n2      n21     a1              4
   n9      n18     a1              6
   n18     n9      a1              9
   n16     n1      a1              2
   n1      n16     a1              2
   n20     n17     a1              9
   n17     n20     a1              2
   n15     n28     a1              3
   n28     n15     a1              1
   n20     n25     a1              3
   n25     n20     a1              5
   n1      n30     a1              3
   n30     n1      a1              7
   n12     n16     a1              9
   n16     n12     a1              1
   n6      n26     a1              1
   n26     n6      a1              9
   n15     n10     a1              6
   n10     n15     a1              3
   n2      n13     a1              3
   n13     n2      a1              1
   n11     n17     a1              1
   n17     n11     a1              3
   n18     n28     a1              5
   n28     n18     a1              4
   n18     n13     a1              2
   n13     n18     a1              4
   n8      n28     a1              5
   n28     n8      a1              3
   n20     n29     a1              7
   n29     n20     a1              1
   n8      n23     a1              4
   n23     n8      a1              3
   n10     n18     a1              5
   n18     n10     a1              9
   n12     n4      a1              4
   n4      n12     a1              3
   n4      n13     a1              5
   n13     n4      a1              9
$offdelim
/;

Parameter demand(n) /
   n2            -87
   n5            233
   n7           -200
   n11            -1
   n13           321
   n14            51
   n16            17
   n18           -36
   n19            83
   n20          -128
   n23           146
   n24          -226
   n25           -93
   n26            56
   n27           -11
   n28          -117
   n29            93
   n30          -101
/;

u = -sum(n$(demand(n)<0), demand(n));
xupp(m,n,s)$(fcost(m,n,s) or vcost(m,n,s)) = u;
loop((m,n,s)$(fcost(m,n,s)<0),
   fcost(m,n,s)=0;
   vcost(m,n,s)=0;
);

