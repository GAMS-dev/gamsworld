Set n / n1*n150 /;
Set s / a1*a3 /;

yupp('n1','n1','a1')=0;

Parameter fcost(m,n,s) /
$ondelim
   n2      n6      a1              1
   n6      n5      a1              1
   n6      n7      a1              1
   n7      n5      a1              1
   n2      n8      a1              1
   n8      n5      a1              1
   n2      n5      a1              1
   n2      n9      a1              1
   n9      n5      a1              1
   n5      n12     a1              1
   n12     n11     a1              1
   n5      n11     a1              1
   n11     n10     a1              1
   n11     n10     a2              1
   n11     n10     a3              1
   n10     n13     a1              1
   n13     n4      a1              1
   n10     n4      a1              1
   n10     n4      a2              1
   n4      n15     a1              1
   n15     n14     a1              1
   n4      n14     a1              1
   n4      n16     a1              1
   n16     n14     a1              1
   n14     n3      a1              1
   n14     n3      a2              1
   n14     n17     a1              1
   n17     n3      a1              1
   n4      n19     a1              1
   n19     n18     a1              1
   n18     n3      a1              1
   n18     n20     a1              1
   n20     n3      a1              1
   n4      n21     a1              1
   n21     n3      a1              1
   n4      n3      a1              1
   n4      n22     a1              1
   n22     n3      a1              1
   n2      n24     a1              1
   n2      n24     a2              1
   n24     n25     a1              1
   n25     n23     a1              1
   n2      n26     a1              1
   n2      n26     a2              1
   n26     n23     a1              1
   n26     n27     a1              1
   n27     n23     a1              1
   n2      n28     a1              1
   n2      n28     a2              1
   n28     n29     a1              1
   n29     n23     a1              1
   n28     n23     a1              1
   n2      n30     a1              1
   n2      n30     a2              1
   n30     n31     a1              1
   n31     n23     a1              1
   n23     n33     a1              1
   n23     n33     a2              1
   n23     n34     a1              1
   n34     n33     a1              1
   n33     n35     a1              1
   n35     n32     a1              1
   n33     n32     a1              1
   n33     n36     a1              1
   n36     n32     a1              1
   n32     n38     a1              1
   n38     n37     a1              1
   n32     n37     a1              1
   n32     n37     a2              1
   n37     n40     a1              1
   n40     n39     a1              1
   n37     n39     a1              1
   n39     n3      a1              1
   n39     n3      a2              1
   n39     n3      a3              1
   n2      n42     a1              1
   n2      n42     a2              1
   n2      n43     a1              1
   n43     n42     a1              1
   n42     n44     a1              1
   n42     n44     a2              1
   n44     n45     a1              1
   n45     n41     a1              1
   n44     n41     a1              1
   n41     n47     a1              1
   n41     n47     a2              1
   n47     n48     a1              1
   n48     n46     a1              1
   n47     n46     a1              1
   n46     n3      a1              1
   n46     n3      a2              1
   n46     n49     a1              1
   n49     n3      a1              1
   n2      n51     a1              1
   n2      n52     a1              1
   n52     n51     a1              1
   n51     n53     a1              1
   n53     n50     a1              1
   n51     n50     a1              1
   n2      n50     a1              1
   n2      n54     a1              1
   n54     n50     a1              1
   n2      n55     a1              1
   n55     n50     a1              1
   n50     n56     a1              1
   n50     n57     a1              1
   n57     n56     a1              1
   n50     n58     a1              1
   n58     n56     a1              1
   n56     n3      a1              1
   n56     n3      a2              1
   n56     n59     a1              1
   n59     n3      a1              1
   n2      n62     a1              1
   n2      n62     a2              1
   n62     n63     a1              1
   n63     n61     a1              1
   n2      n64     a1              1
   n64     n61     a1              1
   n2      n61     a1              1
   n2      n65     a1              1
   n65     n61     a1              1
   n61     n68     a1              1
   n68     n67     a1              1
   n61     n67     a1              1
   n61     n67     a2              1
   n67     n66     a1              1
   n67     n66     a2              1
   n66     n69     a1              1
   n69     n60     a1              1
   n66     n60     a1              1
   n66     n60     a2              1
   n60     n70     a1              1
   n60     n71     a1              1
   n71     n70     a1              1
   n60     n72     a1              1
   n60     n72     a2              1
   n72     n70     a1              1
   n72     n73     a1              1
   n73     n70     a1              1
   n70     n74     a1              1
   n70     n74     a2              1
   n70     n74     a3              1
   n70     n75     a1              1
   n75     n74     a1              1
   n74     n76     a1              1
   n76     n3      a1              1
   n74     n3      a1              1
   n74     n77     a1              1
   n77     n3      a1              1
   n3      n79     a1              1
   n79     n78     a1              1
   n79     n80     a1              1
   n80     n78     a1              1
   n3      n82     a1              1
   n82     n81     a1              1
   n3      n81     a1              1
   n81     n78     a1              1
   n81     n83     a1              1
   n83     n78     a1              1
   n3      n84     a1              1
   n3      n84     a2              1
   n3      n85     a1              1
   n85     n84     a1              1
   n84     n78     a1              1
   n84     n86     a1              1
   n86     n78     a1              1
   n84     n87     a1              1
   n87     n78     a1              1
   n78     n90     a1              1
   n90     n89     a1              1
   n78     n89     a1              1
   n89     n88     a1              1
   n89     n88     a2              1
   n78     n91     a1              1
   n91     n92     a1              1
   n92     n88     a1              1
   n91     n88     a1              1
   n88     n93     a1              1
   n88     n93     a2              1
   n88     n94     a1              1
   n94     n93     a1              1
   n93     n95     a1              1
   n93     n95     a2              1
   n93     n95     a3              1
   n95     n1      a1              1
   n95     n96     a1              1
   n96     n1      a1              1
   n3      n98     a1              1
   n3      n98     a2              1
   n98     n97     a1              1
   n98     n99     a1              1
   n99     n97     a1              1
   n3      n100    a1              1
   n100    n97     a1              1
   n3      n97     a1              1
   n3      n101    a1              1
   n101    n97     a1              1
   n3      n103    a1              1
   n103    n102    a1              1
   n3      n102    a1              1
   n3      n104    a1              1
   n104    n102    a1              1
   n102    n105    a1              1
   n102    n105    a2              1
   n105    n97     a1              1
   n105    n106    a1              1
   n106    n97     a1              1
   n97     n108    a1              1
   n108    n107    a1              1
   n97     n107    a1              1
   n97     n109    a1              1
   n109    n107    a1              1
   n107    n110    a1              1
   n110    n1      a1              1
   n107    n1      a1              1
   n107    n1      a2              1
   n97     n111    a1              1
   n97     n111    a2              1
   n97     n112    a1              1
   n112    n111    a1              1
   n111    n113    a1              1
   n113    n1      a1              1
   n111    n1      a1              1
   n111    n114    a1              1
   n114    n1      a1              1
   n3      n116    a1              1
   n3      n117    a1              1
   n117    n116    a1              1
   n3      n116    a2              1
   n3      n118    a1              1
   n3      n118    a2              1
   n118    n119    a1              1
   n119    n116    a1              1
   n116    n122    a1              1
   n122    n121    a1              1
   n116    n121    a1              1
   n121    n120    a1              1
   n121    n120    a2              1
   n121    n120    a3              1
   n120    n123    a1              1
   n123    n115    a1              1
   n120    n115    a1              1
   n120    n115    a2              1
   n115    n125    a1              1
   n125    n124    a1              1
   n115    n124    a1              1
   n115    n126    a1              1
   n126    n124    a1              1
   n124    n1      a1              1
   n124    n1      a2              1
   n124    n127    a1              1
   n127    n1      a1              1
   n115    n129    a1              1
   n129    n128    a1              1
   n128    n1      a1              1
   n128    n130    a1              1
   n130    n1      a1              1
   n115    n131    a1              1
   n131    n1      a1              1
   n115    n1      a1              1
   n115    n132    a1              1
   n132    n1      a1              1
   n3      n134    a1              1
   n3      n134    a2              1
   n134    n135    a1              1
   n135    n133    a1              1
   n3      n136    a1              1
   n3      n136    a2              1
   n136    n133    a1              1
   n136    n137    a1              1
   n137    n133    a1              1
   n3      n138    a1              1
   n3      n138    a2              1
   n138    n139    a1              1
   n139    n133    a1              1
   n138    n133    a1              1
   n3      n140    a1              1
   n3      n140    a2              1
   n140    n141    a1              1
   n141    n133    a1              1
   n133    n143    a1              1
   n133    n143    a2              1
   n133    n144    a1              1
   n144    n143    a1              1
   n143    n145    a1              1
   n145    n142    a1              1
   n143    n142    a1              1
   n143    n146    a1              1
   n146    n142    a1              1
   n142    n148    a1              1
   n148    n147    a1              1
   n142    n147    a1              1
   n142    n147    a2              1
   n147    n150    a1              1
   n150    n149    a1              1
   n147    n149    a1              1
   n149    n1      a1              1
   n149    n1      a2              1
   n149    n1      a3              1
$offdelim
/;

Parameter vcost(m,n,s) /
$ondelim
   n2      n6      a1              0
   n6      n5      a1              0
   n6      n7      a1              0
   n7      n5      a1              0
   n2      n8      a1              0
   n8      n5      a1              0
   n2      n5      a1              0
   n2      n9      a1              0
   n9      n5      a1              0
   n5      n12     a1              0
   n12     n11     a1              0
   n5      n11     a1              0
   n11     n10     a1              0
   n11     n10     a2              0
   n11     n10     a3              0
   n10     n13     a1              0
   n13     n4      a1              0
   n10     n4      a1              0
   n10     n4      a2              0
   n4      n15     a1              0
   n15     n14     a1              0
   n4      n14     a1              0
   n4      n16     a1              0
   n16     n14     a1              0
   n14     n3      a1              0
   n14     n3      a2              0
   n14     n17     a1              0
   n17     n3      a1              0
   n4      n19     a1              0
   n19     n18     a1              0
   n18     n3      a1              0
   n18     n20     a1              0
   n20     n3      a1              0
   n4      n21     a1              0
   n21     n3      a1              0
   n4      n3      a1              0
   n4      n22     a1              0
   n22     n3      a1              0
   n2      n24     a1              0
   n2      n24     a2              0
   n24     n25     a1              0
   n25     n23     a1              0
   n2      n26     a1              0
   n2      n26     a2              0
   n26     n23     a1              0
   n26     n27     a1              0
   n27     n23     a1              0
   n2      n28     a1              0
   n2      n28     a2              0
   n28     n29     a1              0
   n29     n23     a1              0
   n28     n23     a1              0
   n2      n30     a1              0
   n2      n30     a2              0
   n30     n31     a1              0
   n31     n23     a1              0
   n23     n33     a1              0
   n23     n33     a2              0
   n23     n34     a1              0
   n34     n33     a1              0
   n33     n35     a1              0
   n35     n32     a1              0
   n33     n32     a1              0
   n33     n36     a1              0
   n36     n32     a1              0
   n32     n38     a1              0
   n38     n37     a1              0
   n32     n37     a1              0
   n32     n37     a2              0
   n37     n40     a1              0
   n40     n39     a1              0
   n37     n39     a1              0
   n39     n3      a1              0
   n39     n3      a2              0
   n39     n3      a3              0
   n2      n42     a1              0
   n2      n42     a2              0
   n2      n43     a1              0
   n43     n42     a1              0
   n42     n44     a1              0
   n42     n44     a2              0
   n44     n45     a1              0
   n45     n41     a1              0
   n44     n41     a1              0
   n41     n47     a1              0
   n41     n47     a2              0
   n47     n48     a1              0
   n48     n46     a1              0
   n47     n46     a1              0
   n46     n3      a1              0
   n46     n3      a2              0
   n46     n49     a1              0
   n49     n3      a1              0
   n2      n51     a1              0
   n2      n52     a1              0
   n52     n51     a1              0
   n51     n53     a1              0
   n53     n50     a1              0
   n51     n50     a1              0
   n2      n50     a1              0
   n2      n54     a1              0
   n54     n50     a1              0
   n2      n55     a1              0
   n55     n50     a1              0
   n50     n56     a1              0
   n50     n57     a1              0
   n57     n56     a1              0
   n50     n58     a1              0
   n58     n56     a1              0
   n56     n3      a1              0
   n56     n3      a2              0
   n56     n59     a1              0
   n59     n3      a1              0
   n2      n62     a1              0
   n2      n62     a2              0
   n62     n63     a1              0
   n63     n61     a1              0
   n2      n64     a1              0
   n64     n61     a1              0
   n2      n61     a1              0
   n2      n65     a1              0
   n65     n61     a1              0
   n61     n68     a1              0
   n68     n67     a1              0
   n61     n67     a1              0
   n61     n67     a2              0
   n67     n66     a1              0
   n67     n66     a2              0
   n66     n69     a1              0
   n69     n60     a1              0
   n66     n60     a1              0
   n66     n60     a2              0
   n60     n70     a1              0
   n60     n71     a1              0
   n71     n70     a1              0
   n60     n72     a1              0
   n60     n72     a2              0
   n72     n70     a1              0
   n72     n73     a1              0
   n73     n70     a1              0
   n70     n74     a1              0
   n70     n74     a2              0
   n70     n74     a3              0
   n70     n75     a1              0
   n75     n74     a1              0
   n74     n76     a1              0
   n76     n3      a1              0
   n74     n3      a1              0
   n74     n77     a1              0
   n77     n3      a1              0
   n3      n79     a1              0
   n79     n78     a1              0
   n79     n80     a1              0
   n80     n78     a1              0
   n3      n82     a1              0
   n82     n81     a1              0
   n3      n81     a1              0
   n81     n78     a1              0
   n81     n83     a1              0
   n83     n78     a1              0
   n3      n84     a1              0
   n3      n84     a2              0
   n3      n85     a1              0
   n85     n84     a1              0
   n84     n78     a1              0
   n84     n86     a1              0
   n86     n78     a1              0
   n84     n87     a1              0
   n87     n78     a1              0
   n78     n90     a1              0
   n90     n89     a1              0
   n78     n89     a1              0
   n89     n88     a1              0
   n89     n88     a2              0
   n78     n91     a1              0
   n91     n92     a1              0
   n92     n88     a1              0
   n91     n88     a1              0
   n88     n93     a1              0
   n88     n93     a2              0
   n88     n94     a1              0
   n94     n93     a1              0
   n93     n95     a1              0
   n93     n95     a2              0
   n93     n95     a3              0
   n95     n1      a1              0
   n95     n96     a1              0
   n96     n1      a1              0
   n3      n98     a1              0
   n3      n98     a2              0
   n98     n97     a1              0
   n98     n99     a1              0
   n99     n97     a1              0
   n3      n100    a1              0
   n100    n97     a1              0
   n3      n97     a1              0
   n3      n101    a1              0
   n101    n97     a1              0
   n3      n103    a1              0
   n103    n102    a1              0
   n3      n102    a1              0
   n3      n104    a1              0
   n104    n102    a1              0
   n102    n105    a1              0
   n102    n105    a2              0
   n105    n97     a1              0
   n105    n106    a1              0
   n106    n97     a1              0
   n97     n108    a1              0
   n108    n107    a1              0
   n97     n107    a1              0
   n97     n109    a1              0
   n109    n107    a1              0
   n107    n110    a1              0
   n110    n1      a1              0
   n107    n1      a1              0
   n107    n1      a2              0
   n97     n111    a1              0
   n97     n111    a2              0
   n97     n112    a1              0
   n112    n111    a1              0
   n111    n113    a1              0
   n113    n1      a1              0
   n111    n1      a1              0
   n111    n114    a1              0
   n114    n1      a1              0
   n3      n116    a1              0
   n3      n117    a1              0
   n117    n116    a1              0
   n3      n116    a2              0
   n3      n118    a1              0
   n3      n118    a2              0
   n118    n119    a1              0
   n119    n116    a1              0
   n116    n122    a1              0
   n122    n121    a1              0
   n116    n121    a1              0
   n121    n120    a1              0
   n121    n120    a2              0
   n121    n120    a3              0
   n120    n123    a1              0
   n123    n115    a1              0
   n120    n115    a1              0
   n120    n115    a2              0
   n115    n125    a1              0
   n125    n124    a1              0
   n115    n124    a1              0
   n115    n126    a1              0
   n126    n124    a1              0
   n124    n1      a1              0
   n124    n1      a2              0
   n124    n127    a1              0
   n127    n1      a1              0
   n115    n129    a1              0
   n129    n128    a1              0
   n128    n1      a1              0
   n128    n130    a1              0
   n130    n1      a1              0
   n115    n131    a1              0
   n131    n1      a1              0
   n115    n1      a1              0
   n115    n132    a1              0
   n132    n1      a1              0
   n3      n134    a1              0
   n3      n134    a2              0
   n134    n135    a1              0
   n135    n133    a1              0
   n3      n136    a1              0
   n3      n136    a2              0
   n136    n133    a1              0
   n136    n137    a1              0
   n137    n133    a1              0
   n3      n138    a1              0
   n3      n138    a2              0
   n138    n139    a1              0
   n139    n133    a1              0
   n138    n133    a1              0
   n3      n140    a1              0
   n3      n140    a2              0
   n140    n141    a1              0
   n141    n133    a1              0
   n133    n143    a1              0
   n133    n143    a2              0
   n133    n144    a1              0
   n144    n143    a1              0
   n143    n145    a1              0
   n145    n142    a1              0
   n143    n142    a1              0
   n143    n146    a1              0
   n146    n142    a1              0
   n142    n148    a1              0
   n148    n147    a1              0
   n142    n147    a1              0
   n142    n147    a2              0
   n147    n150    a1              0
   n150    n149    a1              0
   n147    n149    a1              0
   n149    n1      a1              0
   n149    n1      a2              0
   n149    n1      a3              0
$offdelim
/;

Parameter demand(n) /
   n1           1914
   n2          -1348
   n3            543
   n4            138
   n5             42
   n6             33
   n7              3
   n8             -2
   n9              1
   n14             2
   n15           -50
   n17             1
   n21           -20
   n23            50
   n24            -6
   n30          -495
   n31             1
   n33             1
   n39             1
   n40           -82
   n43            -1
   n44            -1
   n58            -5
   n64            -1
   n74            86
   n75          -464
   n76             1
   n77             2
   n78            44
   n79             2
   n80          -121
   n81             1
   n88            11
   n97             1
   n101           -8
   n107          -22
   n108            1
   n110            1
   n112            1
   n115           85
   n120         -272
   n123           25
   n124           11
   n125            2
   n133           33
   n136           -1
   n137            1
   n140         -150
   n141            7
   n142            2
   n143            2
/;

* Upper bound for flow on any arc
u = -sum(n$(demand(n)<0), demand(n));
xupp(m,n,s)$(fcost(m,n,s) or vcost(m,n,s)) = u;

