Set n / n1*n100 /;
Set s / a1*a3 /;

yupp('n1','n1','a1')=0;

Parameter fcost(m,n,s) /
$ondelim
   n2      n7      a1            944
   n7      n6      a1            924
   n7      n6      a2            978
   n2      n8      a1            762
   n8      n6      a1            868
   n2      n6      a1            744
   n6      n9      a1            881
   n6      n10     a1            910
   n10     n9      a2            766
   n10     n9      a1            833
   n9      n5      a1            863
   n9      n5      a2            940
   n5      n11     a1            609
   n5      n12     a1            906
   n12     n11     a1            910
   n11     n4      a1            893
   n11     n4      a2            612
   n5      n13     a1            605
   n5      n13     a2            794
   n13     n14     a1            555
   n14     n4      a1            821
   n5      n4      a1            706
   n5      n15     a1            904
   n15     n4      a1            737
   n4      n17     a1            953
   n4      n18     a1            835
   n18     n17     a1            878
   n4      n19     a1            922
   n4      n19     a2            708
   n19     n17     a1            677
   n17     n21     a1            623
   n21     n20     a1            578
   n21     n20     a2            957
   n20     n22     a1            724
   n22     n16     a1            955
   n20     n16     a1            534
   n20     n16     a2            671
   n16     n23     a1            722
   n23     n3      a1            952
   n16     n25     a1            727
   n25     n24     a1            988
   n24     n3      a1            880
   n24     n3      a2            757
   n16     n26     a1            986
   n16     n26     a2            769
   n16     n26     a3            654
   n26     n27     a1            703
   n26     n27     a2            637
   n27     n3      a1            803
   n2      n30     a1            854
   n2      n30     a2            677
   n2      n30     a3            819
   n30     n31     a1            759
   n30     n31     a2            692
   n31     n29     a1            650
   n29     n33     a1            899
   n29     n33     a2            621
   n33     n32     a1            766
   n33     n32     a2            838
   n32     n28     a1            713
   n32     n34     a1            788
   n34     n28     a1            965
   n28     n36     a1            731
   n28     n36     a2            746
   n36     n35     a1            591
   n35     n3      a1            717
   n35     n3      a2            757
   n35     n37     a1            951
   n37     n3      a1            968
   n28     n39     a1            973
   n39     n38     a1            809
   n38     n3      a1            853
   n28     n40     a1            751
   n40     n3      a1            643
   n40     n3      a2            645
   n2      n42     a1            798
   n42     n41     a1            839
   n42     n41     a2            623
   n41     n43     a1            945
   n43     n3      a1            965
   n41     n3      a1            643
   n41     n3      a2            924
   n2      n44     a1            642
   n2      n45     a1            585
   n45     n44     a1            602
   n44     n46     a1            731
   n44     n46     a2            589
   n46     n3      a1            574
   n2      n47     a1            663
   n2      n48     a1            810
   n48     n47     a1            548
   n47     n49     a1            589
   n49     n3      a1            920
   n49     n3      a2            754
   n2      n50     a1            659
   n50     n3      a1            739
   n50     n3      a2            937
   n2      n51     a1            964
   n51     n52     a1            628
   n52     n3      a1            725
   n3      n55     a1            849
   n3      n55     a2            556
   n55     n56     a1            999
   n55     n56     a2            696
   n56     n54     a1            987
   n3      n58     a1            684
   n3      n58     a2            805
   n58     n57     a1            550
   n57     n54     a1            642
   n3      n54     a1            640
   n3      n59     a1            612
   n59     n54     a1            822
   n54     n61     a1            529
   n54     n61     a2            911
   n61     n60     a1            502
   n54     n62     a1            632
   n62     n60     a1            907
   n54     n60     a1            651
   n60     n63     a1            920
   n63     n53     a1            590
   n60     n53     a1            795
   n60     n53     a2            815
   n60     n64     a1            840
   n64     n53     a1            739
   n64     n53     a2            741
   n53     n66     a1            548
   n66     n65     a1            819
   n66     n65     a2            541
   n53     n68     a1            935
   n68     n67     a1            933
   n67     n65     a1            782
   n53     n70     a1            628
   n70     n69     a1            945
   n53     n69     a1            585
   n53     n69     a2            618
   n69     n65     a1            677
   n69     n65     a2            853
   n65     n72     a1            710
   n72     n71     a1            739
   n65     n71     a1            621
   n65     n74     a1            847
   n74     n73     a1            777
   n73     n71     a1            532
   n73     n71     a2            911
   n71     n75     a1            802
   n71     n75     a2            860
   n71     n75     a3            777
   n75     n1      a1            948
   n75     n76     a1            808
   n76     n1      a1            697
   n3      n77     a1            959
   n77     n78     a1            778
   n78     n1      a1            719
   n3      n1      a1            748
   n3      n79     a1            923
   n79     n1      a1            933
   n3      n80     a1            768
   n3      n81     a1            812
   n81     n80     a1            925
   n80     n82     a1            866
   n82     n1      a1            639
   n82     n1      a2            692
   n3      n84     a1            571
   n84     n83     a1            699
   n3      n83     a1            923
   n3      n85     a1            719
   n85     n83     a1            837
   n3      n86     a1            628
   n86     n83     a1            548
   n83     n87     a1            652
   n87     n1      a1            937
   n87     n1      a2            675
   n83     n88     a1            611
   n88     n1      a1            737
   n83     n1      a1            875
   n3      n89     a1            580
   n3      n89     a2            838
   n3      n90     a1            713
   n90     n89     a1            564
   n89     n91     a1            832
   n91     n1      a1            577
   n91     n1      a2            739
   n3      n93     a1            949
   n93     n92     a1            953
   n92     n1      a1            632
   n3      n1      a2            506
   n3      n94     a1            862
   n94     n1      a1            532
   n3      n97     a1            883
   n3      n97     a2            587
   n97     n96     a1            716
   n96     n95     a1            785
   n96     n95     a2            847
   n96     n95     a3            949
   n95     n99     a1            999
   n99     n98     a1            673
   n98     n1      a1            774
   n95     n100    a1            664
   n95     n100    a2            974
   n100    n1      a1            692
$offdelim
/;

Parameter vcost(m,n,s) /
$ondelim
   n2      n7      a1              2
   n7      n6      a1              5
   n7      n6      a2              3
   n2      n8      a1              5
   n8      n6      a1              7
   n2      n6      a1              7
   n6      n9      a1              3
   n6      n10     a1              9
   n10     n9      a2              4
   n10     n9      a1              6
   n9      n5      a1              4
   n9      n5      a2              6
   n5      n11     a1              3
   n5      n12     a1              2
   n12     n11     a1              4
   n11     n4      a1              3
   n11     n4      a2              6
   n5      n13     a1              7
   n5      n13     a2              6
   n13     n14     a1              7
   n14     n4      a1              1
   n5      n4      a1              4
   n5      n15     a1              8
   n15     n4      a1              1
   n4      n17     a1              4
   n4      n18     a1              3
   n18     n17     a1              4
   n4      n19     a1              9
   n4      n19     a2              4
   n19     n17     a1              1
   n17     n21     a1              1
   n21     n20     a1              3
   n21     n20     a2              1
   n20     n22     a1              7
   n22     n16     a1              1
   n20     n16     a1              7
   n20     n16     a2              5
   n16     n23     a1              3
   n23     n3      a1              8
   n16     n25     a1              5
   n25     n24     a1              7
   n24     n3      a1              3
   n24     n3      a2              4
   n16     n26     a1              1
   n16     n26     a2              6
   n16     n26     a3              3
   n26     n27     a1              6
   n26     n27     a2              3
   n27     n3      a1              3
   n2      n30     a1              1
   n2      n30     a2              1
   n2      n30     a3              9
   n30     n31     a1              3
   n30     n31     a2              4
   n31     n29     a1              3
   n29     n33     a1              1
   n29     n33     a2              5
   n33     n32     a1              4
   n33     n32     a2              7
   n32     n28     a1              3
   n32     n34     a1              3
   n34     n28     a1              5
   n28     n36     a1              7
   n28     n36     a2              5
   n36     n35     a1              8
   n35     n3      a1              1
   n35     n3      a2              6
   n35     n37     a1              2
   n37     n3      a1              9
   n28     n39     a1              7
   n39     n38     a1              7
   n38     n3      a1              6
   n28     n40     a1              4
   n40     n3      a1              1
   n40     n3      a2              9
   n2      n42     a1              2
   n42     n41     a1              3
   n42     n41     a2              7
   n41     n43     a1              8
   n43     n3      a1              9
   n41     n3      a1              5
   n41     n3      a2              4
   n2      n44     a1              4
   n2      n45     a1              1
   n45     n44     a1              4
   n44     n46     a1              6
   n44     n46     a2              2
   n46     n3      a1              4
   n2      n47     a1              7
   n2      n48     a1              5
   n48     n47     a1              6
   n47     n49     a1              4
   n49     n3      a1              9
   n49     n3      a2              6
   n2      n50     a1              8
   n50     n3      a1              8
   n50     n3      a2              7
   n2      n51     a1              2
   n51     n52     a1              9
   n52     n3      a1              7
   n3      n55     a1              3
   n3      n55     a2              7
   n55     n56     a1              5
   n55     n56     a2              6
   n56     n54     a1              1
   n3      n58     a1              8
   n3      n58     a2              9
   n58     n57     a1              2
   n57     n54     a1              8
   n3      n54     a1              1
   n3      n59     a1              9
   n59     n54     a1              3
   n54     n61     a1              5
   n54     n61     a2              1
   n61     n60     a1              3
   n54     n62     a1              6
   n62     n60     a1              4
   n54     n60     a1              6
   n60     n63     a1              1
   n63     n53     a1              4
   n60     n53     a1              4
   n60     n53     a2              8
   n60     n64     a1              6
   n64     n53     a1              4
   n64     n53     a2              6
   n53     n66     a1              9
   n66     n65     a1              4
   n66     n65     a2              4
   n53     n68     a1              2
   n68     n67     a1              3
   n67     n65     a1              7
   n53     n70     a1              2
   n70     n69     a1              1
   n53     n69     a1              7
   n53     n69     a2              6
   n69     n65     a1              7
   n69     n65     a2              1
   n65     n72     a1              7
   n72     n71     a1              7
   n65     n71     a1              4
   n65     n74     a1              8
   n74     n73     a1              2
   n73     n71     a1              6
   n73     n71     a2              3
   n71     n75     a1              3
   n71     n75     a2              1
   n71     n75     a3              1
   n75     n1      a1              3
   n75     n76     a1              5
   n76     n1      a1              4
   n3      n77     a1              2
   n77     n78     a1              4
   n78     n1      a1              5
   n3      n1      a1              3
   n3      n79     a1              7
   n79     n1      a1              1
   n3      n80     a1              4
   n3      n81     a1              3
   n81     n80     a1              5
   n80     n82     a1              9
   n82     n1      a1              9
   n82     n1      a2              2
   n3      n84     a1              2
   n84     n83     a1              5
   n3      n83     a1              6
   n3      n85     a1              8
   n85     n83     a1              2
   n3      n86     a1              1
   n86     n83     a1              6
   n83     n87     a1              7
   n87     n1      a1              6
   n87     n1      a2              5
   n83     n88     a1              3
   n88     n1      a1              4
   n83     n1      a1              9
   n3      n89     a1              8
   n3      n89     a2              9
   n3      n90     a1              2
   n90     n89     a1              6
   n89     n91     a1              5
   n91     n1      a1              6
   n91     n1      a2              3
   n3      n93     a1              4
   n93     n92     a1              5
   n92     n1      a1              8
   n3      n1      a2              2
   n3      n94     a1              4
   n94     n1      a1              5
   n3      n97     a1              2
   n3      n97     a2              5
   n97     n96     a1              9
   n96     n95     a1              7
   n96     n95     a2              8
   n96     n95     a3              3
   n95     n99     a1              7
   n99     n98     a1              5
   n98     n1      a1              5
   n95     n100    a1              8
   n95     n100    a2              2
   n100    n1      a1              2
$offdelim
/;

Parameter demand(n) /
   n1            420
   n2            -34
   n3             10
   n4              1
   n5              2
   n7             -1
   n12            -2
   n14            -4
   n16             3
   n17           -45
   n21             1
   n47            -3
   n53            24
   n54            -1
   n60             1
   n61          -103
   n77            -1
   n80             5
   n81           -22
   n89             2
   n90           -16
   n92          -234
   n94            -2
   n95             2
   n97            -3
/;

* Upper bound for flow on any arc
u = -sum(n$(demand(n)<0), demand(n));
xupp(m,n,s)$(fcost(m,n,s) or vcost(m,n,s)) = u;

