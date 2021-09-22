Set n / n1*n61 /;
Set s / a1 /;

yupp('n1','n1','a1')=0;

Parameter fcost(m,n,s) /
$ondelim
   n1      n2      a1              0
   n11     n1      a1             23
   n11     n12     a1              0
   n21     n11     a1             37
   n21     n22     a1              0
   n31     n21     a1             32
   n31     n32     a1              0
   n41     n31     a1             37
   n41     n42     a1              0
   n51     n41     a1             25
   n51     n52     a1              0
   n61     n51     a1             23
   n2      n3      a1              0
   n12     n2      a1             46
   n12     n13     a1              0
   n22     n12     a1             41
   n22     n23     a1              0
   n32     n22     a1             41
   n32     n33     a1              0
   n42     n32     a1             46
   n42     n43     a1              0
   n52     n42     a1             34
   n52     n53     a1              0
   n61     n52     a1             37
   n3      n4      a1              0
   n13     n3      a1             41
   n13     n14     a1              0
   n23     n13     a1             28
   n23     n24     a1              0
   n33     n23     a1             27
   n33     n34     a1              0
   n43     n33     a1             43
   n43     n44     a1              0
   n53     n43     a1             23
   n53     n54     a1              0
   n61     n53     a1             43
   n4      n5      a1              0
   n14     n4      a1             32
   n14     n15     a1              0
   n24     n14     a1             45
   n24     n25     a1              0
   n34     n24     a1             21
   n34     n35     a1              0
   n44     n34     a1             29
   n44     n45     a1              0
   n54     n44     a1             49
   n54     n55     a1              0
   n61     n54     a1             30
   n5      n6      a1              0
   n15     n5      a1             24
   n15     n16     a1              0
   n25     n15     a1             45
   n25     n26     a1              0
   n35     n25     a1             43
   n35     n36     a1              0
   n45     n35     a1             26
   n45     n46     a1              0
   n55     n45     a1             21
   n55     n56     a1              0
   n61     n55     a1             31
   n6      n7      a1              0
   n16     n6      a1             29
   n16     n17     a1              0
   n26     n16     a1             33
   n26     n27     a1              0
   n36     n26     a1             28
   n36     n37     a1              0
   n46     n36     a1             41
   n46     n47     a1              0
   n56     n46     a1             32
   n56     n57     a1              0
   n61     n56     a1             43
   n7      n8      a1              0
   n17     n7      a1             21
   n17     n18     a1              0
   n27     n17     a1             24
   n27     n28     a1              0
   n37     n27     a1             48
   n37     n38     a1              0
   n47     n37     a1             29
   n47     n48     a1              0
   n57     n47     a1             46
   n57     n58     a1              0
   n61     n57     a1             20
   n8      n9      a1              0
   n18     n8      a1             26
   n18     n19     a1              0
   n28     n18     a1             22
   n28     n29     a1              0
   n38     n28     a1             32
   n38     n39     a1              0
   n48     n38     a1             30
   n48     n49     a1              0
   n58     n48     a1             45
   n58     n59     a1              0
   n61     n58     a1             35
   n9      n10     a1              0
   n19     n9      a1             26
   n19     n20     a1              0
   n29     n19     a1             37
   n29     n30     a1              0
   n39     n29     a1             23
   n39     n40     a1              0
   n49     n39     a1             36
   n49     n50     a1              0
   n59     n49     a1             43
   n59     n60     a1              0
   n61     n59     a1             47
   n20     n10     a1             48
   n30     n20     a1             21
   n40     n30     a1             36
   n50     n40     a1             48
   n60     n50     a1             26
   n61     n60     a1             37
$offdelim
/;

Parameter vcost(m,n,s) /
$ondelim
   n1      n2      a1              9
   n11     n1      a1              8
   n11     n12     a1              2
   n21     n11     a1              2
   n21     n22     a1              7
   n31     n21     a1              4
   n31     n32     a1              1
   n41     n31     a1              5
   n41     n42     a1              4
   n51     n41     a1              1
   n51     n52     a1              3
   n61     n51     a1              7
   n2      n3      a1              1
   n12     n2      a1              7
   n12     n13     a1              2
   n22     n12     a1              3
   n22     n23     a1              1
   n32     n22     a1              4
   n32     n33     a1              6
   n42     n32     a1              2
   n42     n43     a1              6
   n52     n42     a1              3
   n52     n53     a1              8
   n61     n52     a1              3
   n3      n4      a1              2
   n13     n3      a1              8
   n13     n14     a1              7
   n23     n13     a1              3
   n23     n24     a1              1
   n33     n23     a1              4
   n33     n34     a1              6
   n43     n33     a1              1
   n43     n44     a1              3
   n53     n43     a1              4
   n53     n54     a1              3
   n61     n53     a1              5
   n4      n5      a1              7
   n14     n4      a1              5
   n14     n15     a1              8
   n24     n14     a1              9
   n24     n25     a1              8
   n34     n24     a1              5
   n34     n35     a1              7
   n44     n34     a1              5
   n44     n45     a1              4
   n54     n44     a1              9
   n54     n55     a1              5
   n61     n54     a1              5
   n5      n6      a1              3
   n15     n5      a1              7
   n15     n16     a1              7
   n25     n15     a1              8
   n25     n26     a1              5
   n35     n25     a1              4
   n35     n36     a1              4
   n45     n35     a1              2
   n45     n46     a1              5
   n55     n45     a1              8
   n55     n56     a1              5
   n61     n55     a1              7
   n6      n7      a1              3
   n16     n6      a1              3
   n16     n17     a1              4
   n26     n16     a1              8
   n26     n27     a1              9
   n36     n26     a1              1
   n36     n37     a1              8
   n46     n36     a1              1
   n46     n47     a1              7
   n56     n46     a1              4
   n56     n57     a1              3
   n61     n56     a1              6
   n7      n8      a1              9
   n17     n7      a1              2
   n17     n18     a1              4
   n27     n17     a1              3
   n27     n28     a1              4
   n37     n27     a1              8
   n37     n38     a1              5
   n47     n37     a1              8
   n47     n48     a1              6
   n57     n47     a1              6
   n57     n58     a1              4
   n61     n57     a1              9
   n8      n9      a1              8
   n18     n8      a1              9
   n18     n19     a1              2
   n28     n18     a1              2
   n28     n29     a1              5
   n38     n28     a1              6
   n38     n39     a1              6
   n48     n38     a1              6
   n48     n49     a1              7
   n58     n48     a1              6
   n58     n59     a1              2
   n61     n58     a1              3
   n9      n10     a1              2
   n19     n9      a1              5
   n19     n20     a1              9
   n29     n19     a1              2
   n29     n30     a1              4
   n39     n29     a1              3
   n39     n40     a1              5
   n49     n39     a1              3
   n49     n50     a1              2
   n59     n49     a1              4
   n59     n60     a1              2
   n61     n59     a1              9
   n20     n10     a1              4
   n30     n20     a1              5
   n40     n30     a1              3
   n50     n40     a1              6
   n60     n50     a1              7
   n61     n60     a1              8
$offdelim
/;

Parameter demand(n) /
   n1            171
   n2             17
   n3            252
   n4            388
   n5            191
   n6            483
   n7            122
   n8            244
   n9             28
   n10            85
   n61         -1981
/;

fcost(m,n,s) = 10 * fcost(m,n,s);
u = -sum(n$(demand(n)<0), demand(n));
xupp(m,n,s)$(fcost(m,n,s) or vcost(m,n,s)) = u;
loop((m,n,s)$(fcost(m,n,s)<0),
   fcost(m,n,s)=0;
   vcost(m,n,s)=0;
);

