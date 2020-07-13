Sets n / n1*n100 /
     s / a1 /;

yupp('n1','n1','a1')=0;

Parameter demand(n) /
   n1           -500
   n21            10
   n22             5
   n23             6
   n24             2
   n25            11
   n26             6
   n27             3
   n28             6
   n29            15
   n30             3
   n31             1
   n32             4
   n33            10
   n34            11
   n35             6
   n36             5
   n37             5
   n38             2
   n39            28
   n40             4
   n41             6
   n42             5
   n43             6
   n44             1
   n45             7
   n46             4
   n47             5
   n48            11
   n49             3
   n50             9
   n51             4
   n52             5
   n53             3
   n54             9
   n55             5
   n56             1
   n57             4
   n58             5
   n59            16
   n60             9
   n61             7
   n62            13
   n63             8
   n64             4
   n65             5
   n66            11
   n67            12
   n68             3
   n69             5
   n70             4
   n71            10
   n72             6
   n73             8
   n74             6
   n75             6
   n76             6
   n77             2
   n78             1
   n79             4
   n80             2
   n81             8
   n82             1
   n83             5
   n84             5
   n85            10
   n86             7
   n87             3
   n88             7
   n89             3
   n90             4
   n91             7
   n92            14
   n93             9
   n94             6
   n95             5
   n96             8
   n97             1
   n98             5
   n99             2
   n100            6
/;

Parameter exist(m,n) /
$ondelim
   n1      n2         1
   n1      n4         1
   n1      n23        1
   n1      n56        1
   n2      n66        1
   n2      n20        1
   n2      n87        1
   n2      n30        1
   n2      n47        1
   n2      n63        1
   n2      n44        1
   n2      n80        1
   n2      n96        1
   n2      n8         1
   n2      n10        1
   n2      n42        1
   n2      n17        1
   n2      n57        1
   n2      n52        1
   n2      n28        1
   n2      n35        1
   n2      n86        1
   n2      n13        1
   n2      n62        1
   n2      n84        1
   n2      n7         1
   n2      n100       1
   n2      n68        1
   n2      n95        1
   n2      n72        1
   n2      n78        1
   n2      n75        1
   n2      n94        1
   n2      n88        1
   n2      n19        1
   n2      n58        1
   n2      n41        1
   n2      n73        1
   n2      n82        1
   n2      n61        1
   n2      n48        1
   n2      n24        1
   n2      n27        1
   n3      n39        1
   n3      n48        1
   n3      n28        1
   n3      n4         1
   n3      n10        1
   n3      n63        1
   n4      n60        1
   n4      n51        1
   n4      n47        1
   n4      n15        1
   n4      n85        1
   n4      n68        1
   n4      n96        1
   n4      n86        1
   n4      n35        1
   n4      n44        1
   n4      n74        1
   n4      n11        1
   n4      n81        1
   n4      n29        1
   n4      n23        1
   n4      n40        1
   n4      n57        1
   n4      n98        1
   n4      n36        1
   n4      n56        1
   n4      n5         1
   n4      n88        1
   n4      n53        1
   n4      n83        1
   n4      n90        1
   n4      n94        1
   n4      n73        1
   n4      n58        1
   n4      n91        1
   n4      n32        1
   n4      n42        1
   n4      n71        1
   n4      n20        1
   n4      n78        1
   n4      n79        1
   n4      n95        1
   n4      n26        1
   n4      n50        1
   n4      n99        1
   n4      n30        1
   n4      n97        1
   n4      n54        1
   n4      n45        1
   n5      n57        1
   n5      n34        1
   n5      n90        1
   n5      n44        1
   n5      n27        1
   n5      n78        1
   n5      n14        1
   n5      n64        1
   n5      n40        1
   n5      n7         1
   n5      n62        1
   n5      n6         1
   n5      n30        1
   n5      n24        1
   n5      n45        1
   n5      n37        1
   n5      n82        1
   n5      n63        1
   n5      n39        1
   n5      n28        1
   n6      n69        1
   n6      n26        1
   n6      n22        1
   n6      n62        1
   n6      n17        1
   n6      n16        1
   n6      n89        1
   n6      n50        1
   n6      n36        1
   n6      n64        1
   n6      n92        1
   n6      n60        1
   n6      n45        1
   n6      n4         1
   n6      n100       1
   n6      n78        1
   n6      n43        1
   n6      n39        1
   n6      n47        1
   n6      n81        1
   n6      n90        1
   n6      n30        1
   n6      n40        1
   n6      n65        1
   n6      n57        1
   n6      n23        1
   n6      n83        1
   n6      n7         1
   n6      n49        1
   n6      n28        1
   n6      n94        1
   n6      n18        1
   n6      n82        1
   n6      n73        1
   n6      n5         1
   n6      n21        1
   n6      n35        1
   n6      n95        1
   n6      n52        1
   n7      n10        1
   n7      n82        1
   n7      n25        1
   n7      n97        1
   n7      n38        1
   n7      n34        1
   n7      n70        1
   n7      n13        1
   n7      n8         1
   n7      n81        1
   n7      n6         1
   n7      n31        1
   n7      n58        1
   n7      n53        1
   n8      n35        1
   n8      n61        1
   n8      n55        1
   n8      n79        1
   n8      n19        1
   n8      n89        1
   n8      n75        1
   n8      n21        1
   n8      n77        1
   n8      n12        1
   n8      n7         1
   n8      n68        1
   n8      n80        1
   n8      n65        1
   n8      n49        1
   n8      n69        1
   n8      n81        1
   n8      n71        1
   n8      n97        1
   n8      n45        1
   n8      n42        1
   n8      n41        1
   n8      n36        1
   n8      n88        1
   n8      n25        1
   n8      n32        1
   n8      n82        1
   n8      n74        1
   n8      n13        1
   n8      n72        1
   n8      n30        1
   n9      n45        1
   n9      n4         1
   n9      n49        1
   n9      n95        1
   n9      n15        1
   n9      n56        1
   n9      n12        1
   n9      n36        1
   n9      n41        1
   n9      n13        1
   n9      n76        1
   n9      n47        1
   n9      n11        1
   n9      n88        1
   n9      n78        1
   n9      n96        1
   n9      n66        1
   n9      n44        1
   n9      n98        1
   n9      n87        1
   n9      n93        1
   n9      n35        1
   n9      n62        1
   n10     n43        1
   n10     n76        1
   n10     n91        1
   n10     n50        1
   n10     n11        1
   n10     n83        1
   n10     n18        1
   n10     n15        1
   n10     n8         1
   n10     n31        1
   n10     n35        1
   n10     n86        1
   n10     n22        1
   n10     n32        1
   n10     n29        1
   n10     n65        1
   n10     n98        1
   n10     n27        1
   n10     n81        1
   n10     n75        1
   n10     n89        1
   n10     n34        1
   n10     n62        1
   n10     n70        1
   n10     n46        1
   n10     n41        1
   n10     n68        1
   n10     n33        1
   n10     n94        1
   n10     n51        1
   n10     n40        1
   n10     n14        1
   n11     n80        1
   n11     n99        1
   n11     n12        1
   n11     n32        1
   n11     n41        1
   n11     n30        1
   n11     n9         1
   n11     n87        1
   n11     n31        1
   n11     n75        1
   n11     n54        1
   n11     n25        1
   n11     n21        1
   n11     n89        1
   n11     n95        1
   n11     n39        1
   n11     n28        1
   n11     n44        1
   n11     n64        1
   n11     n18        1
   n11     n81        1
   n11     n38        1
   n11     n35        1
   n12     n88        1
   n12     n31        1
   n12     n53        1
   n12     n3         1
   n12     n29        1
   n12     n59        1
   n12     n38        1
   n12     n100       1
   n13     n8         1
   n13     n94        1
   n13     n93        1
   n13     n63        1
   n13     n36        1
   n13     n79        1
   n13     n20        1
   n13     n15        1
   n13     n81        1
   n13     n65        1
   n13     n70        1
   n13     n97        1
   n13     n69        1
   n13     n55        1
   n13     n48        1
   n13     n90        1
   n13     n57        1
   n13     n61        1
   n13     n96        1
   n13     n49        1
   n13     n40        1
   n13     n16        1
   n13     n52        1
   n13     n88        1
   n13     n92        1
   n13     n62        1
   n13     n10        1
   n13     n56        1
   n13     n44        1
   n13     n4         1
   n13     n67        1
   n13     n83        1
   n13     n12        1
   n13     n91        1
   n13     n74        1
   n13     n73        1
   n13     n31        1
   n13     n3         1
   n13     n64        1
   n13     n37        1
   n13     n33        1
   n13     n66        1
   n13     n23        1
   n13     n42        1
   n13     n51        1
   n13     n84        1
   n13     n6         1
   n13     n22        1
   n13     n41        1
   n13     n85        1
   n13     n76        1
   n13     n98        1
   n14     n18        1
   n14     n70        1
   n14     n31        1
   n14     n17        1
   n14     n93        1
   n14     n20        1
   n14     n23        1
   n14     n82        1
   n14     n54        1
   n14     n65        1
   n14     n59        1
   n14     n66        1
   n14     n50        1
   n14     n87        1
   n14     n11        1
   n14     n30        1
   n14     n46        1
   n14     n64        1
   n14     n98        1
   n14     n67        1
   n14     n79        1
   n15     n5         1
   n15     n74        1
   n15     n84        1
   n15     n73        1
   n15     n11        1
   n15     n67        1
   n15     n39        1
   n15     n24        1
   n15     n36        1
   n15     n87        1
   n15     n65        1
   n15     n58        1
   n15     n12        1
   n15     n68        1
   n15     n71        1
   n15     n44        1
   n15     n81        1
   n16     n13        1
   n16     n92        1
   n16     n42        1
   n16     n72        1
   n16     n56        1
   n16     n66        1
   n16     n70        1
   n16     n18        1
   n16     n67        1
   n16     n71        1
   n16     n80        1
   n16     n41        1
   n16     n10        1
   n16     n59        1
   n16     n50        1
   n16     n91        1
   n17     n7         1
   n17     n24        1
   n17     n98        1
   n17     n81        1
   n17     n100       1
   n18     n46        1
   n18     n16        1
   n18     n65        1
   n18     n56        1
   n18     n85        1
   n18     n36        1
   n18     n4         1
   n18     n42        1
   n18     n15        1
   n18     n64        1
   n18     n47        1
   n18     n28        1
   n18     n81        1
   n18     n77        1
   n18     n30        1
   n18     n3         1
   n18     n95        1
   n18     n78        1
   n18     n90        1
   n18     n66        1
   n18     n58        1
   n18     n24        1
   n18     n69        1
   n18     n63        1
   n18     n7         1
   n18     n49        1
   n18     n62        1
   n18     n86        1
   n18     n41        1
   n18     n99        1
   n18     n9         1
   n18     n2         1
   n18     n70        1
   n18     n43        1
   n18     n12        1
   n18     n34        1
   n18     n25        1
   n18     n11        1
   n18     n32        1
   n18     n68        1
   n18     n59        1
   n18     n8         1
   n18     n20        1
   n18     n19        1
   n18     n40        1
   n18     n38        1
   n19     n58        1
   n19     n67        1
   n19     n37        1
   n19     n52        1
   n19     n54        1
   n19     n6         1
   n19     n80        1
   n19     n29        1
   n19     n64        1
   n19     n73        1
   n19     n97        1
   n19     n84        1
   n19     n7         1
   n19     n9         1
   n19     n94        1
   n19     n8         1
   n19     n53        1
   n19     n98        1
   n19     n51        1
   n19     n96        1
   n19     n87        1
   n19     n40        1
   n19     n68        1
   n19     n5         1
   n19     n86        1
   n19     n49        1
   n19     n62        1
   n19     n41        1
   n19     n90        1
   n19     n10        1
   n19     n22        1
   n19     n85        1
   n19     n21        1
   n19     n60        1
   n19     n31        1
   n19     n69        1
   n19     n56        1
   n19     n46        1
   n19     n16        1
   n19     n55        1
   n19     n45        1
   n19     n99        1
   n19     n88        1
   n19     n59        1
   n19     n93        1
   n19     n18        1
   n19     n61        1
   n19     n48        1
   n19     n76        1
   n20     n33        1
   n20     n23        1
   n20     n9         1
   n20     n100       1
   n20     n86        1
   n20     n71        1
   n20     n55        1
   n20     n32        1
   n20     n92        1
   n20     n26        1
   n20     n37        1
   n20     n28        1
$offdelim
/;

Parameter vcost(m,n,s) /
$ondelim
   n2      n66     a1              1
   n2      n20     a1              2
   n2      n87     a1              2
   n2      n30     a1              1
   n2      n47     a1              2
   n2      n63     a1              2
   n2      n44     a1              2
   n2      n80     a1              2
   n2      n96     a1              2
   n2      n8      a1              2
   n2      n10     a1              2
   n2      n42     a1              2
   n2      n17     a1              2
   n2      n57     a1              2
   n2      n52     a1              2
   n2      n28     a1              2
   n2      n35     a1              2
   n2      n86     a1              2
   n2      n13     a1              2
   n2      n62     a1              2
   n2      n84     a1              2
   n2      n7      a1              2
   n2      n100    a1              2
   n2      n68     a1              2
   n2      n95     a1              2
   n2      n72     a1              2
   n2      n78     a1              2
   n2      n75     a1              2
   n2      n94     a1              2
   n2      n88     a1              2
   n2      n19     a1              2
   n2      n58     a1              2
   n2      n41     a1              2
   n2      n73     a1              2
   n2      n82     a1              2
   n2      n61     a1              2
   n2      n48     a1              2
   n2      n24     a1              2
   n2      n27     a1              2
   n3      n39     a1              1
   n3      n48     a1              2
   n4      n60     a1              2
   n4      n47     a1              2
   n4      n85     a1              2
   n4      n68     a1              2
   n4      n96     a1              1
   n4      n86     a1              2
   n4      n35     a1              2
   n4      n44     a1              2
   n4      n74     a1              2
   n4      n11     a1              2
   n4      n81     a1              2
   n4      n29     a1              2
   n4      n23     a1              2
   n4      n40     a1              2
   n4      n57     a1              2
   n4      n98     a1              2
   n4      n36     a1              2
   n4      n56     a1              2
   n4      n5      a1              2
   n4      n88     a1              2
   n4      n53     a1              2
   n4      n83     a1              2
   n4      n90     a1              2
   n4      n94     a1              2
   n4      n73     a1              2
   n4      n58     a1              2
   n4      n91     a1              2
   n4      n32     a1              2
   n4      n42     a1              2
   n4      n71     a1              2
   n4      n20     a1              2
   n4      n78     a1              2
   n4      n79     a1              2
   n4      n95     a1              2
   n4      n26     a1              2
   n4      n50     a1              2
   n4      n99     a1              2
   n4      n30     a1              2
   n4      n97     a1              2
   n4      n54     a1              2
   n4      n45     a1              2
   n5      n57     a1              1
   n5      n34     a1              1
   n5      n44     a1              2
   n5      n27     a1              1
   n5      n78     a1              2
   n5      n64     a1              2
   n5      n40     a1              2
   n6      n69     a1              2
   n6      n62     a1              1
   n6      n17     a1              1
   n6      n16     a1              2
   n6      n89     a1              2
   n6      n50     a1              2
   n6      n36     a1              2
   n6      n64     a1              2
   n6      n92     a1              2
   n6      n60     a1              2
   n6      n45     a1              2
   n6      n4      a1              2
   n6      n100    a1              2
   n6      n78     a1              2
   n6      n43     a1              2
   n6      n39     a1              2
   n6      n47     a1              2
   n6      n81     a1              2
   n6      n90     a1              2
   n6      n30     a1              2
   n6      n40     a1              2
   n6      n65     a1              2
   n6      n57     a1              2
   n6      n23     a1              2
   n6      n83     a1              2
   n6      n7      a1              2
   n6      n49     a1              2
   n6      n28     a1              2
   n6      n94     a1              2
   n6      n18     a1              2
   n6      n82     a1              2
   n6      n73     a1              2
   n6      n5      a1              2
   n6      n21     a1              2
   n6      n35     a1              2
   n6      n95     a1              2
   n6      n52     a1              2
   n7      n10     a1              2
   n7      n82     a1              1
   n7      n97     a1              2
   n8      n35     a1              2
   n8      n61     a1              2
   n8      n55     a1              1
   n8      n79     a1              2
   n8      n21     a1              2
   n8      n77     a1              2
   n8      n12     a1              1
   n8      n7      a1              1
   n8      n68     a1              1
   n8      n80     a1              1
   n8      n65     a1              1
   n8      n49     a1              1
   n8      n69     a1              1
   n8      n81     a1              1
   n8      n71     a1              1
   n8      n97     a1              1
   n8      n45     a1              1
   n8      n42     a1              1
   n8      n41     a1              1
   n8      n36     a1              1
   n8      n88     a1              1
   n8      n25     a1              1
   n8      n32     a1              1
   n8      n82     a1              1
   n8      n74     a1              1
   n8      n13     a1              1
   n8      n72     a1              1
   n8      n30     a1              1
   n9      n45     a1              2
   n9      n4      a1              1
   n9      n49     a1              2
   n9      n95     a1              2
   n9      n15     a1              1
   n9      n56     a1              1
   n9      n12     a1              1
   n9      n36     a1              1
   n9      n41     a1              1
   n9      n13     a1              1
   n9      n76     a1              1
   n9      n47     a1              1
   n9      n11     a1              1
   n9      n88     a1              1
   n9      n78     a1              1
   n9      n96     a1              1
   n9      n66     a1              1
   n9      n44     a1              1
   n9      n98     a1              1
   n9      n87     a1              1
   n9      n93     a1              1
   n9      n35     a1              1
   n9      n62     a1              1
   n10     n91     a1              2
   n10     n11     a1              1
   n10     n83     a1              2
   n10     n18     a1              1
   n10     n15     a1              1
   n10     n8      a1              1
   n10     n31     a1              1
   n10     n35     a1              1
   n10     n86     a1              1
   n10     n22     a1              1
   n10     n32     a1              1
   n10     n29     a1              1
   n10     n65     a1              1
   n10     n98     a1              1
   n10     n27     a1              1
   n10     n81     a1              1
   n10     n75     a1              1
   n10     n89     a1              1
   n10     n34     a1              1
   n10     n62     a1              1
   n10     n70     a1              1
   n10     n46     a1              1
   n10     n41     a1              1
   n10     n68     a1              1
   n10     n33     a1              1
   n10     n94     a1              1
   n10     n51     a1              1
   n10     n40     a1              1
   n10     n14     a1              1
   n11     n80     a1              1
   n11     n99     a1              1
   n11     n41     a1              2
   n11     n30     a1              1
   n11     n9      a1              1
   n11     n87     a1              1
   n11     n31     a1              1
   n11     n75     a1              1
   n11     n54     a1              1
   n11     n25     a1              1
   n11     n21     a1              1
   n11     n89     a1              1
   n11     n95     a1              1
   n11     n39     a1              1
   n11     n28     a1              1
   n11     n44     a1              1
   n11     n64     a1              1
   n11     n18     a1              1
   n11     n81     a1              1
   n11     n38     a1              1
   n11     n35     a1              1
   n12     n53     a1              1
   n12     n3      a1              1
   n12     n29     a1              2
   n12     n59     a1              1
   n13     n8      a1              1
   n13     n94     a1              2
   n13     n63     a1              1
   n13     n36     a1              1
   n13     n79     a1              2
   n13     n20     a1              2
   n13     n15     a1              2
   n13     n81     a1              2
   n13     n65     a1              2
   n13     n70     a1              2
   n13     n97     a1              2
   n13     n69     a1              2
   n13     n55     a1              2
   n13     n48     a1              2
   n13     n90     a1              2
   n13     n57     a1              2
   n13     n61     a1              2
   n13     n96     a1              2
   n13     n49     a1              2
   n13     n40     a1              2
   n13     n16     a1              2
   n13     n52     a1              2
   n13     n88     a1              2
   n13     n92     a1              2
   n13     n62     a1              2
   n13     n10     a1              2
   n13     n56     a1              2
   n13     n44     a1              2
   n13     n4      a1              2
   n13     n67     a1              2
   n13     n83     a1              2
   n13     n12     a1              2
   n13     n91     a1              2
   n13     n74     a1              2
   n13     n73     a1              2
   n13     n31     a1              2
   n13     n3      a1              2
   n13     n64     a1              2
   n13     n37     a1              2
   n13     n33     a1              2
   n13     n66     a1              2
   n13     n23     a1              2
   n13     n42     a1              2
   n13     n51     a1              2
   n13     n84     a1              2
   n13     n6      a1              2
   n13     n22     a1              2
   n13     n41     a1              2
   n13     n85     a1              2
   n13     n76     a1              2
   n13     n98     a1              2
   n14     n18     a1              1
   n14     n70     a1              2
   n14     n31     a1              1
   n14     n17     a1              1
   n14     n93     a1              1
   n14     n20     a1              1
   n14     n23     a1              1
   n14     n82     a1              1
   n14     n54     a1              1
   n14     n65     a1              1
   n14     n59     a1              1
   n14     n66     a1              1
   n14     n50     a1              1
   n14     n87     a1              1
   n14     n11     a1              1
   n14     n30     a1              1
   n14     n46     a1              1
   n14     n64     a1              1
   n14     n98     a1              1
   n14     n67     a1              1
   n14     n79     a1              1
   n15     n5      a1              2
   n15     n84     a1              1
   n15     n73     a1              1
   n16     n92     a1              1
   n16     n42     a1              2
   n16     n72     a1              2
   n16     n56     a1              2
   n17     n7      a1              2
   n18     n16     a1              2
   n18     n56     a1              1
   n18     n85     a1              1
   n18     n36     a1              1
   n18     n4      a1              1
   n18     n42     a1              1
   n18     n15     a1              1
   n18     n64     a1              1
   n18     n47     a1              1
   n18     n28     a1              1
   n18     n81     a1              1
   n18     n77     a1              1
   n18     n30     a1              1
   n18     n3      a1              1
   n18     n95     a1              1
   n18     n78     a1              1
   n18     n90     a1              1
   n18     n66     a1              1
   n18     n58     a1              1
   n18     n24     a1              1
   n18     n69     a1              1
   n18     n63     a1              1
   n18     n7      a1              1
   n18     n49     a1              1
   n18     n62     a1              1
   n18     n86     a1              1
   n18     n41     a1              1
   n18     n99     a1              1
   n18     n9      a1              1
   n18     n2      a1              1
   n18     n70     a1              1
   n18     n43     a1              1
   n18     n12     a1              1
   n18     n34     a1              1
   n18     n25     a1              1
   n18     n11     a1              1
   n18     n32     a1              1
   n18     n68     a1              1
   n18     n59     a1              1
   n18     n8      a1              1
   n18     n20     a1              1
   n18     n19     a1              1
   n18     n40     a1              1
   n18     n38     a1              1
   n19     n58     a1              1
   n19     n37     a1              2
   n19     n52     a1              1
   n19     n54     a1              1
   n19     n6      a1              1
   n19     n80     a1              2
   n19     n29     a1              2
   n19     n64     a1              2
   n19     n73     a1              2
   n19     n97     a1              2
   n19     n84     a1              2
   n19     n7      a1              2
   n19     n9      a1              2
   n19     n94     a1              2
   n19     n8      a1              2
   n19     n53     a1              2
   n19     n98     a1              2
   n19     n51     a1              2
   n19     n96     a1              2
   n19     n87     a1              2
   n19     n40     a1              2
   n19     n68     a1              2
   n19     n5      a1              2
   n19     n86     a1              2
   n19     n49     a1              2
   n19     n62     a1              2
   n19     n41     a1              2
   n19     n90     a1              2
   n19     n10     a1              2
   n19     n22     a1              2
   n19     n85     a1              2
   n19     n21     a1              2
   n19     n60     a1              2
   n19     n31     a1              2
   n19     n69     a1              2
   n19     n56     a1              2
   n19     n46     a1              2
   n19     n16     a1              2
   n19     n55     a1              2
   n19     n45     a1              2
   n19     n99     a1              2
   n19     n88     a1              2
   n19     n59     a1              2
   n19     n93     a1              2
   n19     n18     a1              2
   n19     n61     a1              2
   n19     n48     a1              2
   n19     n76     a1              2
   n20     n33     a1              1
   n20     n23     a1              2
   n20     n9      a1              1
   n20     n100    a1              2
   n20     n55     a1              1
   n20     n32     a1              1
   n20     n92     a1              1
   n20     n26     a1              1
   n20     n37     a1              1
   n20     n28     a1              1
$offdelim
/;

Parameter fcost(m,n,s) /
$ondelim
   n1      n2      a1             41
   n1      n4      a1            230
   n1      n56     a1            438
   n2      n66     a1            237
   n2      n87     a1            438
   n2      n47     a1            325
   n2      n63     a1            153
   n2      n44     a1            424
   n2      n80     a1            142
   n2      n8      a1             86
   n2      n10     a1            460
   n2      n42     a1            414
   n2      n17     a1             93
   n2      n57     a1             64
   n2      n52     a1            495
   n2      n28     a1            440
   n2      n35     a1             29
   n2      n13     a1            176
   n2      n62     a1             40
   n2      n84     a1            364
   n2      n100    a1            328
   n2      n72     a1            324
   n2      n78     a1             21
   n2      n19     a1            474
   n2      n61     a1            175
   n2      n24     a1            145
   n3      n39     a1            178
   n3      n48     a1            459
   n3      n28     a1             61
   n3      n4      a1            231
   n3      n10     a1            456
   n3      n63     a1            355
   n4      n51     a1             26
   n4      n47     a1             68
   n4      n15     a1            462
   n4      n85     a1            321
   n4      n68     a1            245
   n4      n96     a1            337
   n4      n35     a1            474
   n4      n44     a1            352
   n4      n11     a1            407
   n4      n29     a1            257
   n4      n40     a1             93
   n4      n57     a1            137
   n4      n98     a1            491
   n4      n56     a1            476
   n4      n5      a1             60
   n4      n88     a1            467
   n4      n83     a1            475
   n4      n94     a1             89
   n4      n73     a1             64
   n4      n58     a1            137
   n4      n91     a1            159
   n4      n42     a1             60
   n4      n71     a1            430
   n4      n78     a1            442
   n4      n95     a1            409
   n4      n26     a1            172
   n4      n30     a1            442
   n4      n97     a1             87
   n4      n54     a1            494
   n4      n45     a1            235
   n5      n57     a1            132
   n5      n34     a1             74
   n5      n90     a1             37
   n5      n44     a1            431
   n5      n27     a1            407
   n5      n14     a1            242
   n5      n64     a1            279
   n5      n40     a1             16
   n5      n7      a1            498
   n5      n62     a1             88
   n5      n30     a1            177
   n5      n24     a1             77
   n5      n45     a1             63
   n5      n37     a1            362
   n5      n63     a1            238
   n5      n39     a1             44
   n6      n69     a1            470
   n6      n17     a1            325
   n6      n16     a1            346
   n6      n89     a1             81
   n6      n36     a1            440
   n6      n60     a1             58
   n6      n45     a1            231
   n6      n4      a1             43
   n6      n100    a1            164
   n6      n78     a1            423
   n6      n43     a1            261
   n6      n47     a1             26
   n6      n81     a1            332
   n6      n90     a1            245
   n6      n30     a1            337
   n6      n40     a1            314
   n6      n65     a1            187
   n6      n57     a1            158
   n6      n49     a1            408
   n6      n28     a1            239
   n6      n94     a1            280
   n6      n18     a1            148
   n6      n73     a1             86
   n6      n35     a1            240
   n6      n95     a1            368
   n6      n52     a1            477
   n7      n10     a1             59
   n7      n82     a1            268
   n7      n25     a1            451
   n7      n97     a1            438
   n7      n34     a1            259
   n7      n70     a1             17
   n7      n8      a1            264
   n7      n31     a1            242
   n7      n58     a1            220
   n7      n53     a1            456
   n8      n35     a1            471
   n8      n61     a1            235
   n8      n79     a1            353
   n8      n19     a1             52
   n8      n89     a1            165
   n8      n75     a1            156
   n8      n21     a1            422
   n8      n77     a1            261
   n8      n12     a1             83
   n8      n7      a1            461
   n8      n68     a1            263
   n8      n80     a1             83
   n8      n65     a1             63
   n8      n97     a1            141
   n8      n42     a1            178
   n8      n41     a1             40
   n8      n36     a1              2
   n8      n88     a1            233
   n8      n25     a1            368
   n8      n82     a1            327
   n8      n13     a1            238
   n8      n72     a1            484
   n8      n30     a1            265
   n9      n4      a1             26
   n9      n49     a1            133
   n9      n95     a1            492
   n9      n15     a1            146
   n9      n56     a1            159
   n9      n12     a1            489
   n9      n36     a1            353
   n9      n41     a1             52
   n9      n76     a1            469
   n9      n47     a1            264
   n9      n11     a1            317
   n9      n78     a1             55
   n9      n96     a1             32
   n9      n66     a1            164
   n9      n44     a1            276
   n9      n98     a1            483
   n9      n35     a1             25
   n9      n62     a1            498
   n10     n43     a1            176
   n10     n76     a1             77
   n10     n91     a1             63
   n10     n50     a1            137
   n10     n11     a1            374
   n10     n18     a1            172
   n10     n15     a1            459
   n10     n8      a1             61
   n10     n35     a1            146
   n10     n22     a1             86
   n10     n32     a1            229
   n10     n29     a1            280
   n10     n65     a1            181
   n10     n27     a1            321
   n10     n81     a1             79
   n10     n75     a1            436
   n10     n89     a1             91
   n10     n34     a1              5
   n10     n62     a1            366
   n10     n46     a1             92
   n10     n41     a1            171
   n10     n33     a1             27
   n10     n94     a1            498
   n10     n40     a1            241
   n10     n14     a1            368
   n11     n80     a1             80
   n11     n12     a1             30
   n11     n32     a1            134
   n11     n41     a1            425
   n11     n30     a1            172
   n11     n9      a1            371
   n11     n87     a1            242
   n11     n31     a1            426
   n11     n75     a1            261
   n11     n54     a1            249
   n11     n25     a1             14
   n11     n89     a1            352
   n11     n95     a1            418
   n11     n28     a1             91
   n11     n64     a1             59
   n11     n18     a1              3
   n11     n38     a1            147
   n11     n35     a1              9
   n12     n88     a1            132
   n12     n31     a1            225
   n12     n53     a1            339
   n12     n3      a1            314
   n12     n29     a1            420
   n12     n59     a1            173
   n12     n100    a1            472
   n13     n8      a1            264
   n13     n63     a1            357
   n13     n79     a1            327
   n13     n15     a1            356
   n13     n81     a1            243
   n13     n65     a1            161
   n13     n70     a1             10
   n13     n97     a1            466
   n13     n69     a1            472
   n13     n55     a1            352
   n13     n48     a1            344
   n13     n57     a1            444
   n13     n61     a1            354
   n13     n96     a1            476
   n13     n49     a1            264
   n13     n40     a1             50
   n13     n16     a1            467
   n13     n88     a1             57
   n13     n62     a1            323
   n13     n10     a1             54
   n13     n56     a1            165
   n13     n44     a1             10
   n13     n67     a1             58
   n13     n83     a1            429
   n13     n12     a1             92
   n13     n91     a1            362
   n13     n74     a1             51
   n13     n31     a1            265
   n13     n3      a1            416
   n13     n37     a1            175
   n13     n33     a1             40
   n13     n66     a1            134
   n13     n23     a1            492
   n13     n22     a1            324
   n13     n41     a1            313
   n13     n85     a1             79
   n13     n76     a1             63
   n14     n18     a1            263
   n14     n70     a1             17
   n14     n31     a1              1
   n14     n17     a1            499
   n14     n93     a1            411
   n14     n20     a1             27
   n14     n23     a1            233
   n14     n82     a1            368
   n14     n54     a1            419
   n14     n65     a1            239
   n14     n59     a1            455
   n14     n66     a1             86
   n14     n50     a1            361
   n14     n87     a1            242
   n14     n46     a1             90
   n14     n64     a1            171
   n14     n98     a1            276
   n14     n67     a1            450
   n14     n79     a1            438
   n15     n5      a1            354
   n15     n73     a1             24
   n15     n11     a1            133
   n15     n67     a1            374
   n15     n39     a1            242
   n15     n24     a1            220
   n15     n36     a1            456
   n15     n87     a1            263
   n15     n65     a1            316
   n15     n58     a1            246
   n15     n12     a1             14
   n15     n68     a1            499
   n15     n71     a1            176
   n15     n44     a1             77
   n15     n81     a1            329
   n16     n13     a1            421
   n16     n92     a1            407
   n16     n42     a1             93
   n16     n72     a1            461
   n16     n56     a1             85
   n16     n70     a1            351
   n16     n18     a1            447
   n16     n67     a1             28
   n16     n71     a1            365
   n16     n80     a1            478
   n16     n41     a1            177
   n16     n10     a1             40
   n16     n59     a1             69
   n16     n50     a1             62
   n17     n7      a1            263
   n17     n24     a1             50
   n17     n81     a1            265
   n17     n100    a1             83
   n18     n46     a1             63
   n18     n16     a1              4
   n18     n56     a1             33
   n18     n85     a1            498
   n18     n36     a1            352
   n18     n4      a1            418
   n18     n42     a1             26
   n18     n15     a1              1
   n18     n64     a1            233
   n18     n47     a1            456
   n18     n81     a1            140
   n18     n77     a1              9
   n18     n30     a1            132
   n18     n3      a1            274
   n18     n95     a1            148
   n18     n90     a1            471
   n18     n66     a1             31
   n18     n58     a1            431
   n18     n24     a1            260
   n18     n63     a1            144
   n18     n7      a1            340
   n18     n49     a1            244
   n18     n41     a1             57
   n18     n99     a1            429
   n18     n2      a1            142
   n18     n70     a1            424
   n18     n43     a1            261
   n18     n12     a1            449
   n18     n34     a1            146
   n18     n25     a1            126
   n18     n11     a1            341
   n18     n32     a1            421
   n18     n68     a1            239
   n18     n59     a1            279
   n18     n8      a1            417
   n18     n19     a1            324
   n18     n38     a1            327
   n19     n58     a1             21
   n19     n67     a1             67
   n19     n52     a1             59
   n19     n54     a1            231
   n19     n6      a1             13
   n19     n29     a1             88
   n19     n64     a1            461
   n19     n73     a1            236
   n19     n84     a1            261
   n19     n94     a1            257
   n19     n8      a1            317
   n19     n53     a1             79
   n19     n98     a1            494
   n19     n51     a1            176
   n19     n96     a1             11
   n19     n40     a1            264
   n19     n5      a1            144
   n19     n86     a1            457
   n19     n49     a1             27
   n19     n62     a1            266
   n19     n41     a1             82
   n19     n10     a1             89
   n19     n22     a1            461
   n19     n21     a1            240
   n19     n60     a1            131
   n19     n31     a1            425
   n19     n69     a1            238
   n19     n56     a1            132
   n19     n46     a1            275
   n19     n16     a1            351
   n19     n45     a1            261
   n19     n99     a1             17
   n19     n88     a1            498
   n19     n59     a1             58
   n19     n18     a1            323
   n19     n61     a1            245
   n19     n48     a1             73
   n19     n76     a1            362
   n20     n33     a1            448
   n20     n23     a1            320
   n20     n9      a1            420
   n20     n71     a1            141
   n20     n55     a1             42
   n20     n32     a1            468
   n20     n92     a1            354
   n20     n26     a1            315
   n20     n37     a1            312
$offdelim
/;

u = -sum(n$(demand(n)<0), demand(n));
loop ((m,n)$exist(m,n),
   xupp(m,n,s) = u;
);

