Set n / n1*n150 /;
Set s / a1*a3 /;

yupp('n1','n1','a1')=0;

Parameter fcost(m,n,s) /
$ondelim
   n2      n6      a1            944
   n2      n6      a2            924
   n6      n5      a1            978
   n2      n7      a1            762
   n7      n5      a1            868
   n2      n5      a1            744
   n2      n8      a1            881
   n8      n5      a1            910
   n2      n9      a1            766
   n9      n5      a1            833
   n5      n11     a1            863
   n5      n11     a2            940
   n11     n10     a1            609
   n11     n12     a1            906
   n12     n10     a1            910
   n10     n13     a1            893
   n13     n4      a1            612
   n10     n4      a1            605
   n10     n4      a2            794
   n4      n15     a1            555
   n4      n15     a2            821
   n15     n14     a1            706
   n15     n14     a2            904
   n14     n16     a1            737
   n14     n16     a2            953
   n16     n17     a1            835
   n16     n17     a2            878
   n17     n3      a1            922
   n4      n19     a1            708
   n4      n20     a1            677
   n20     n19     a1            623
   n19     n18     a1            578
   n19     n18     a2            957
   n18     n21     a1            724
   n21     n3      a1            955
   n18     n3      a1            534
   n18     n22     a1            671
   n22     n3      a1            722
   n2      n24     a1            952
   n2      n24     a2            727
   n24     n23     a1            988
   n24     n25     a1            880
   n25     n23     a1            757
   n2      n26     a1            986
   n26     n23     a1            769
   n2      n27     a1            654
   n27     n23     a1            703
   n2      n29     a1            637
   n2      n29     a2            803
   n29     n30     a1            854
   n30     n28     a1            677
   n30     n28     a2            819
   n28     n31     a1            759
   n28     n31     a2            692
   n31     n32     a1            650
   n31     n32     a2            899
   n32     n23     a1            621
   n23     n33     a1            766
   n33     n3      a1            838
   n33     n3      a2            713
   n23     n34     a1            788
   n34     n3      a1            965
   n23     n35     a1            731
   n35     n3      a1            746
   n23     n36     a1            591
   n36     n3      a1            717
   n23     n37     a1            757
   n37     n3      a1            951
   n23     n38     a1            968
   n38     n3      a1            973
   n23     n39     a1            809
   n39     n3      a1            853
   n39     n3      a2            751
   n23     n40     a1            643
   n40     n3      a1            645
   n2      n43     a1            798
   n2      n43     a2            839
   n43     n42     a1            623
   n43     n42     a2            945
   n42     n45     a1            965
   n42     n45     a2            643
   n45     n44     a1            924
   n44     n41     a1            642
   n44     n41     a2            585
   n2      n47     a1            602
   n2      n48     a1            731
   n48     n47     a1            589
   n47     n46     a1            574
   n47     n46     a2            663
   n46     n49     a1            810
   n49     n41     a1            548
   n46     n41     a1            589
   n46     n50     a1            920
   n50     n41     a1            754
   n2      n53     a1            659
   n53     n52     a1            739
   n2      n54     a1            937
   n54     n52     a1            964
   n2      n52     a1            628
   n52     n51     a1            725
   n52     n55     a1            849
   n55     n51     a1            556
   n55     n51     a2            999
   n51     n56     a1            696
   n51     n56     a2            987
   n56     n41     a1            684
   n56     n57     a1            805
   n57     n41     a1            550
   n51     n58     a1            642
   n58     n41     a1            640
   n51     n59     a1            612
   n59     n41     a1            822
   n41     n62     a1            529
   n41     n62     a2            911
   n62     n63     a1            931
   n63     n61     a1            527
   n41     n64     a1            746
   n41     n64     a2            883
   n64     n61     a1            698
   n64     n61     a2            937
   n61     n65     a1            973
   n61     n66     a1            528
   n66     n65     a1            840
   n65     n60     a1            739
   n65     n60     a2            741
   n61     n67     a1            548
   n61     n67     a2            819
   n67     n60     a1            541
   n67     n68     a1            935
   n68     n60     a1            933
   n60     n69     a1            782
   n69     n3      a1            628
   n60     n70     a1            945
   n60     n70     a2            585
   n70     n3      a1            618
   n60     n3      a1            677
   n60     n71     a1            853
   n71     n3      a1            710
   n60     n72     a1            739
   n72     n3      a1            621
   n60     n73     a1            847
   n60     n73     a2            777
   n73     n74     a1            520
   n74     n3      a1            666
   n74     n3      a2            821
   n60     n76     a1            963
   n76     n75     a1            513
   n75     n77     a1            768
   n75     n77     a2            931
   n77     n3      a1            704
   n3      n81     a1            655
   n3      n81     a2            544
   n81     n80     a1            999
   n80     n79     a1            570
   n80     n79     a2            522
   n3      n82     a1            555
   n82     n79     a1            569
   n3      n83     a1            814
   n83     n79     a1            733
   n79     n84     a1            947
   n79     n84     a2            702
   n84     n85     a1            513
   n85     n78     a1            772
   n85     n78     a2            732
   n79     n86     a1            948
   n79     n86     a2            619
   n86     n78     a1            855
   n86     n78     a2            539
   n3      n88     a1            796
   n3      n88     a2            602
   n88     n89     a1            689
   n89     n87     a1            949
   n3      n91     a1            914
   n91     n90     a1            963
   n3      n90     a1            705
   n90     n87     a1            852
   n90     n87     a2            567
   n87     n92     a1            983
   n92     n78     a1            518
   n92     n78     a2            620
   n87     n93     a1            661
   n93     n78     a1            827
   n87     n94     a1            623
   n94     n78     a1            786
   n87     n95     a1            888
   n95     n78     a1            899
   n95     n78     a2            658
   n78     n98     a1            560
   n78     n98     a2            505
   n98     n99     a1            717
   n99     n97     a1            532
   n99     n97     a2            538
   n97     n100    a1            519
   n97     n100    a2            658
   n100    n96     a1            827
   n100    n96     a2            881
   n96     n102    a1            616
   n96     n102    a2            974
   n102    n101    a1            514
   n102    n101    a2            634
   n101    n104    a1            803
   n104    n103    a1            936
   n101    n103    a1            663
   n101    n103    a2            795
   n103    n1      a1            585
   n103    n1      a2            843
   n78     n107    a1            963
   n107    n106    a1            703
   n78     n106    a1            742
   n78     n106    a2            704
   n106    n108    a1            891
   n108    n105    a1            845
   n106    n109    a1            551
   n109    n105    a1            558
   n109    n105    a2            700
   n105    n111    a1            706
   n111    n110    a1            686
   n105    n110    a1            572
   n105    n112    a1            855
   n112    n110    a1            909
   n110    n1      a1            543
   n110    n113    a1            797
   n113    n1      a1            593
   n113    n1      a2            969
   n3      n116    a1            840
   n3      n116    a2            908
   n116    n115    a1            787
   n116    n117    a1            731
   n117    n115    a1            977
   n115    n118    a1            958
   n115    n118    a2            969
   n118    n114    a1            850
   n115    n119    a1            564
   n119    n114    a1            750
   n3      n120    a1            502
   n120    n114    a1            813
   n3      n121    a1            853
   n121    n114    a1            883
   n3      n122    a1            670
   n122    n114    a1            840
   n3      n123    a1            533
   n123    n114    a1            935
   n123    n114    a2            706
   n3      n126    a1            600
   n3      n126    a2            594
   n3      n126    a3            939
   n126    n125    a1            726
   n126    n125    a2            726
   n125    n128    a1            849
   n128    n127    a1            863
   n128    n127    a2            989
   n127    n124    a1            760
   n127    n124    a2            906
   n124    n130    a1            825
   n124    n130    a2            522
   n130    n129    a1            898
   n130    n131    a1            926
   n131    n129    a1            802
   n129    n132    a1            760
   n132    n114    a1            902
   n129    n114    a1            957
   n129    n114    a2            787
   n114    n134    a1            603
   n114    n135    a1            902
   n135    n134    a1            728
   n114    n134    a2            782
   n114    n136    a1            973
   n136    n134    a1            702
   n114    n137    a1            965
   n137    n134    a1            968
   n137    n134    a2            597
   n134    n139    a1            540
   n139    n138    a1            729
   n134    n138    a1            868
   n134    n140    a1            997
   n140    n138    a1            598
   n138    n141    a1            905
   n138    n141    a2            909
   n141    n133    a1            790
   n141    n133    a2            712
   n141    n133    a3            871
   n133    n142    a1            837
   n133    n142    a2            908
   n142    n1      a1            732
   n142    n143    a1            946
   n143    n1      a1            997
   n133    n145    a1            965
   n133    n145    a2            890
   n145    n144    a1            672
   n144    n1      a1            742
   n133    n146    a1            921
   n146    n1      a1            855
   n133    n1      a1            763
   n133    n147    a1            949
   n147    n1      a1            878
   n133    n149    a1            641
   n149    n148    a1            734
   n148    n150    a1            659
   n148    n150    a2            929
   n150    n1      a1            596
$offdelim
/;

Parameter vcost(m,n,s) /
$ondelim
   n2      n6      a1              2
   n2      n6      a2              5
   n6      n5      a1              3
   n2      n7      a1              5
   n7      n5      a1              7
   n2      n5      a1              7
   n2      n8      a1              3
   n8      n5      a1              9
   n2      n9      a1              4
   n9      n5      a1              6
   n5      n11     a1              4
   n5      n11     a2              6
   n11     n10     a1              3
   n11     n12     a1              2
   n12     n10     a1              4
   n10     n13     a1              3
   n13     n4      a1              6
   n10     n4      a1              7
   n10     n4      a2              6
   n4      n15     a1              7
   n4      n15     a2              1
   n15     n14     a1              4
   n15     n14     a2              8
   n14     n16     a1              1
   n14     n16     a2              4
   n16     n17     a1              3
   n16     n17     a2              4
   n17     n3      a1              9
   n4      n19     a1              4
   n4      n20     a1              1
   n20     n19     a1              1
   n19     n18     a1              3
   n19     n18     a2              1
   n18     n21     a1              7
   n21     n3      a1              1
   n18     n3      a1              7
   n18     n22     a1              5
   n22     n3      a1              3
   n2      n24     a1              8
   n2      n24     a2              5
   n24     n23     a1              7
   n24     n25     a1              3
   n25     n23     a1              4
   n2      n26     a1              1
   n26     n23     a1              6
   n2      n27     a1              3
   n27     n23     a1              6
   n2      n29     a1              3
   n2      n29     a2              3
   n29     n30     a1              1
   n30     n28     a1              1
   n30     n28     a2              9
   n28     n31     a1              3
   n28     n31     a2              4
   n31     n32     a1              3
   n31     n32     a2              1
   n32     n23     a1              5
   n23     n33     a1              4
   n33     n3      a1              7
   n33     n3      a2              3
   n23     n34     a1              3
   n34     n3      a1              5
   n23     n35     a1              7
   n35     n3      a1              5
   n23     n36     a1              8
   n36     n3      a1              1
   n23     n37     a1              6
   n37     n3      a1              2
   n23     n38     a1              9
   n38     n3      a1              7
   n23     n39     a1              7
   n39     n3      a1              6
   n39     n3      a2              4
   n23     n40     a1              1
   n40     n3      a1              9
   n2      n43     a1              2
   n2      n43     a2              3
   n43     n42     a1              7
   n43     n42     a2              8
   n42     n45     a1              9
   n42     n45     a2              5
   n45     n44     a1              4
   n44     n41     a1              4
   n44     n41     a2              1
   n2      n47     a1              4
   n2      n48     a1              6
   n48     n47     a1              2
   n47     n46     a1              4
   n47     n46     a2              7
   n46     n49     a1              5
   n49     n41     a1              6
   n46     n41     a1              4
   n46     n50     a1              9
   n50     n41     a1              6
   n2      n53     a1              8
   n53     n52     a1              8
   n2      n54     a1              7
   n54     n52     a1              2
   n2      n52     a1              9
   n52     n51     a1              7
   n52     n55     a1              3
   n55     n51     a1              7
   n55     n51     a2              5
   n51     n56     a1              6
   n51     n56     a2              1
   n56     n41     a1              8
   n56     n57     a1              9
   n57     n41     a1              2
   n51     n58     a1              8
   n58     n41     a1              1
   n51     n59     a1              9
   n59     n41     a1              3
   n41     n62     a1              5
   n41     n62     a2              1
   n62     n63     a1              1
   n63     n61     a1              5
   n41     n64     a1              5
   n41     n64     a2              4
   n64     n61     a1              4
   n64     n61     a2              8
   n61     n65     a1              4
   n61     n66     a1              2
   n66     n65     a1              6
   n65     n60     a1              4
   n65     n60     a2              6
   n61     n67     a1              9
   n61     n67     a2              4
   n67     n60     a1              4
   n67     n68     a1              2
   n68     n60     a1              3
   n60     n69     a1              7
   n69     n3      a1              2
   n60     n70     a1              1
   n60     n70     a2              7
   n70     n3      a1              6
   n60     n3      a1              7
   n60     n71     a1              1
   n71     n3      a1              7
   n60     n72     a1              7
   n72     n3      a1              4
   n60     n73     a1              8
   n60     n73     a2              2
   n73     n74     a1              4
   n74     n3      a1              1
   n74     n3      a2              1
   n60     n76     a1              4
   n76     n75     a1              2
   n75     n77     a1              9
   n75     n77     a2              7
   n77     n3      a1              3
   n3      n81     a1              1
   n3      n81     a2              3
   n81     n80     a1              4
   n80     n79     a1              5
   n80     n79     a2              5
   n3      n82     a1              8
   n82     n79     a1              2
   n3      n83     a1              8
   n83     n79     a1              3
   n79     n84     a1              5
   n79     n84     a2              9
   n84     n85     a1              5
   n85     n78     a1              2
   n85     n78     a2              2
   n79     n86     a1              3
   n79     n86     a2              6
   n86     n78     a1              1
   n86     n78     a2              8
   n3      n88     a1              2
   n3      n88     a2              1
   n88     n89     a1              9
   n89     n87     a1              1
   n3      n91     a1              1
   n91     n90     a1              2
   n3      n90     a1              6
   n90     n87     a1              6
   n90     n87     a2              9
   n87     n92     a1              9
   n92     n78     a1              2
   n92     n78     a2              1
   n87     n93     a1              7
   n93     n78     a1              7
   n87     n94     a1              1
   n94     n78     a1              4
   n87     n95     a1              7
   n95     n78     a1              9
   n95     n78     a2              4
   n78     n98     a1              7
   n78     n98     a2              6
   n98     n99     a1              8
   n99     n97     a1              4
   n99     n97     a2              8
   n97     n100    a1              7
   n97     n100    a2              3
   n100    n96     a1              5
   n100    n96     a2              8
   n96     n102    a1              8
   n96     n102    a2              8
   n102    n101    a1              7
   n102    n101    a2              7
   n101    n104    a1              2
   n104    n103    a1              1
   n101    n103    a1              9
   n101    n103    a2              2
   n103    n1      a1              9
   n103    n1      a2              8
   n78     n107    a1              4
   n107    n106    a1              2
   n78     n106    a1              3
   n78     n106    a2              7
   n106    n108    a1              4
   n108    n105    a1              9
   n106    n109    a1              1
   n109    n105    a1              8
   n109    n105    a2              4
   n105    n111    a1              9
   n111    n110    a1              5
   n105    n110    a1              8
   n105    n112    a1              8
   n112    n110    a1              2
   n110    n1      a1              5
   n110    n113    a1              7
   n113    n1      a1              3
   n113    n1      a2              7
   n3      n116    a1              3
   n3      n116    a2              1
   n116    n115    a1              8
   n116    n117    a1              4
   n117    n115    a1              8
   n115    n118    a1              8
   n115    n118    a2              9
   n118    n114    a1              6
   n115    n119    a1              8
   n119    n114    a1              2
   n3      n120    a1              1
   n120    n114    a1              1
   n3      n121    a1              3
   n121    n114    a1              7
   n3      n122    a1              8
   n122    n114    a1              5
   n3      n123    a1              8
   n123    n114    a1              4
   n123    n114    a2              6
   n3      n126    a1              7
   n3      n126    a2              4
   n3      n126    a3              9
   n126    n125    a1              5
   n126    n125    a2              1
   n125    n128    a1              6
   n128    n127    a1              7
   n128    n127    a2              9
   n127    n124    a1              4
   n127    n124    a2              7
   n124    n130    a1              2
   n124    n130    a2              1
   n130    n129    a1              9
   n130    n131    a1              6
   n131    n129    a1              5
   n129    n132    a1              3
   n132    n114    a1              9
   n129    n114    a1              5
   n129    n114    a2              4
   n114    n134    a1              5
   n114    n135    a1              7
   n135    n134    a1              6
   n114    n134    a2              8
   n114    n136    a1              9
   n136    n134    a1              1
   n114    n137    a1              2
   n137    n134    a1              9
   n137    n134    a2              2
   n134    n139    a1              6
   n139    n138    a1              7
   n134    n138    a1              5
   n134    n140    a1              8
   n140    n138    a1              9
   n138    n141    a1              3
   n138    n141    a2              2
   n141    n133    a1              5
   n141    n133    a2              6
   n141    n133    a3              8
   n133    n142    a1              5
   n133    n142    a2              9
   n142    n1      a1              8
   n142    n143    a1              4
   n143    n1      a1              8
   n133    n145    a1              4
   n133    n145    a2              2
   n145    n144    a1              2
   n144    n1      a1              7
   n133    n146    a1              9
   n146    n1      a1              6
   n133    n1      a1              1
   n133    n147    a1              2
   n147    n1      a1              8
   n133    n149    a1              7
   n149    n148    a1              1
   n148    n150    a1              9
   n148    n150    a2              8
   n150    n1      a1              9
$offdelim
/;

Parameter demand(n) /
   n1            171
   n3              2
   n41             3
   n46            -9
   n47            -1
   n78            10
   n87             1
   n91           -17
   n95           -49
   n96             5
   n97             1
   n98             1
   n114           32
   n116           -1
   n120          -69
   n123           -1
   n124          -30
   n130            1
   n133           21
   n137           -6
   n138            9
   n139          -75
   n141            4
   n144           -3
/;

* Upper bound for flow on any arc
u = -sum(n$(demand(n)<0), demand(n));
xupp(m,n,s)$(fcost(m,n,s) or vcost(m,n,s)) = u;
