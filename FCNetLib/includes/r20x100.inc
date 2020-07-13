Set n / n1*n20 /;
Set s / a1 /;

yupp('n1','n1','a1')=0;

Parameter fcost(m,n,s) /
$ondelim
   n1      n5      a1            944
   n5      n1      a1            924
   n7      n4      a1            978
   n4      n7      a1            762
   n12     n7      a1            868
   n7      n12     a1            744
   n8      n20     a1            881
   n20     n8      a1            910
   n3      n12     a1            766
   n12     n3      a1            833
   n6      n13     a1            863
   n13     n6      a1            940
   n4      n15     a1            609
   n15     n4      a1            906
   n6      n15     a1            910
   n15     n6      a1            893
   n10     n14     a1            752
   n14     n10     a1            987
   n11     n8      a1            861
   n8      n11     a1            526
   n2      n14     a1            911
   n14     n2      a1            540
   n1      n16     a1            841
   n16     n1      a1            807
   n6      n12     a1            907
   n12     n6      a1            719
   n7      n5      a1            790
   n5      n7      a1            602
   n1      n12     a1            837
   n12     n1      a1            922
   n12     n5      a1            645
   n5      n12     a1            815
   n2      n16     a1            995
   n16     n2      a1            674
   n8      n6      a1            889
   n6      n8      a1            751
   n1      n6      a1            952
   n6      n1      a1            727
   n10     n6      a1            988
   n6      n10     a1            880
   n4      n13     a1            757
   n13     n4      a1            986
   n7      n8      a1            769
   n8      n7      a1            654
   n12     n17     a1            703
   n17     n12     a1            637
   n11     n10     a1            803
   n10     n11     a1            854
   n4      n5      a1            677
   n5      n4      a1            819
   n7      n9      a1            759
   n9      n7      a1            692
   n4      n12     a1            650
   n12     n4      a1            899
   n3      n19     a1            621
   n19     n3      a1            766
   n4      n19     a1            838
   n19     n4      a1            713
   n9      n12     a1            788
   n12     n9      a1            965
   n11     n5      a1            731
   n5      n11     a1            746
   n1      n13     a1            591
   n13     n1      a1            717
   n9      n11     a1            529
   n11     n9      a1            699
   n1      n20     a1            807
   n20     n1      a1            964
   n2      n11     a1            616
   n11     n2      a1            895
   n11     n6      a1            645
   n6      n11     a1            798
   n3      n13     a1            839
   n13     n3      a1            623
   n10     n20     a1            706
   n20     n10     a1            860
   n5      n13     a1            845
   n13     n5      a1            705
   n3      n8      a1            887
   n8      n3      a1            511
   n7      n3      a1            507
   n3      n7      a1            938
   n7      n15     a1            574
   n15     n7      a1            817
   n9      n1      a1            706
   n1      n9      a1            839
   n9      n5      a1            924
   n5      n9      a1            561
   n8      n5      a1            939
   n5      n8      a1            742
   n6      n19     a1            879
   n19     n6      a1            611
   n9      n18     a1            728
   n18     n9      a1            997
   n6      n2      a1            846
   n2      n6      a1            939
   n8      n16     a1            773
   n16     n8      a1            544
   n4      n17     a1            941
   n17     n4      a1            819
$offdelim
/;

Parameter vcost(m,n,s) /
$ondelim
   n1      n5      a1              2
   n5      n1      a1              5
   n7      n4      a1              3
   n4      n7      a1              5
   n12     n7      a1              7
   n7      n12     a1              7
   n8      n20     a1              3
   n20     n8      a1              9
   n3      n12     a1              4
   n12     n3      a1              6
   n6      n13     a1              4
   n13     n6      a1              6
   n4      n15     a1              3
   n15     n4      a1              2
   n6      n15     a1              4
   n15     n6      a1              3
   n10     n14     a1              2
   n14     n10     a1              7
   n11     n8      a1              4
   n8      n11     a1              3
   n2      n14     a1              1
   n14     n2      a1              9
   n1      n16     a1              6
   n16     n1      a1              4
   n6      n12     a1              2
   n12     n6      a1              8
   n7      n5      a1              3
   n5      n7      a1              9
   n1      n12     a1              4
   n12     n1      a1              9
   n12     n5      a1              4
   n5      n12     a1              9
   n2      n16     a1              6
   n16     n2      a1              3
   n8      n6      a1              9
   n6      n8      a1              1
   n1      n6      a1              8
   n6      n1      a1              5
   n10     n6      a1              7
   n6      n10     a1              3
   n4      n13     a1              4
   n13     n4      a1              1
   n7      n8      a1              6
   n8      n7      a1              3
   n12     n17     a1              6
   n17     n12     a1              3
   n11     n10     a1              3
   n10     n11     a1              1
   n4      n5      a1              1
   n5      n4      a1              9
   n7      n9      a1              3
   n9      n7      a1              4
   n4      n12     a1              3
   n12     n4      a1              1
   n3      n19     a1              5
   n19     n3      a1              4
   n4      n19     a1              7
   n19     n4      a1              3
   n9      n12     a1              3
   n12     n9      a1              5
   n11     n5      a1              7
   n5      n11     a1              5
   n1      n13     a1              8
   n13     n1      a1              1
   n9      n11     a1              4
   n11     n9      a1              7
   n1      n20     a1              6
   n20     n1      a1              6
   n2      n11     a1              2
   n11     n2      a1              2
   n11     n6      a1              9
   n6      n11     a1              2
   n3      n13     a1              3
   n13     n3      a1              7
   n10     n20     a1              3
   n20     n10     a1              7
   n5      n13     a1              3
   n13     n5      a1              4
   n3      n8      a1              3
   n8      n3      a1              1
   n7      n3      a1              3
   n3      n7      a1              1
   n7      n15     a1              1
   n15     n7      a1              8
   n9      n1      a1              6
   n1      n9      a1              6
   n9      n5      a1              2
   n5      n9      a1              2
   n8      n5      a1              4
   n5      n8      a1              1
   n6      n19     a1              8
   n19     n6      a1              6
   n9      n18     a1              2
   n18     n9      a1              3
   n6      n2      a1              4
   n2      n6      a1              5
   n8      n16     a1              2
   n16     n8      a1              8
   n4      n17     a1              6
   n17     n4      a1              5
$offdelim
/;

Parameter demand(n) /
   n1           -137
   n2            342
   n3            -26
   n4           -113
   n5           -143
   n6           -189
   n7             30
   n8            -61
   n9             93
   n10           200
   n11           157
   n13            14
   n14           125
   n16          -199
   n17          -132
   n19            39
/;

u = -sum(n$(demand(n)<0), demand(n));
xupp(m,n,s)$(fcost(m,n,s) or vcost(m,n,s)) = u;
loop((m,n,s)$(fcost(m,n,s)<0),
   fcost(m,n,s)=0;
   vcost(m,n,s)=0;
);

