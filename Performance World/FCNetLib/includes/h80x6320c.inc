Sets n / n1*n80 /
     s / a1 /;

yupp('n1','n1','a1')=0;

Parameter demand(n) /
   n2              2
   n3              8
   n4              3
   n5              2
   n6              7
   n7              1
   n8              4
   n9              5
   n10             3
   n11             1
   n12             5
   n13             7
   n14             7
   n15             5
   n17             8
   n18            10
   n19             8
   n20             1
   n21             2
   n22             9
   n23             9
   n24            10
   n25             9
   n26             6
   n27             6
   n28             7
   n29             9
   n30             6
   n31             1
   n32             3
   n33             4
   n34             3
   n35             3
   n39             2
   n40             4
   n42             1
   n43             9
   n44             2
   n45             6
   n46             4
   n47            10
   n48             2
   n49             4
   n50             9
   n51             1
   n52             9
   n53             8
   n54             5
   n55             8
   n57             8
   n58             9
   n59             7
   n60             1
   n61             7
   n63             8
   n64             8
   n65             4
   n66             8
   n67             9
   n68             8
   n69             3
   n70             7
   n71             2
   n72             7
   n74             6
   n75             6
   n76             8
   n77             3
   n78             6
   n79             4
   n80             9
   n1           -396
/;

Table pp(n,*) 
			 c1		 c2
   n1                     6               5
   n2                     1               5
   n3                     8               6
   n4                    10              10
   n5                     8              10
   n6                     1               6
   n7                     9               8
   n8                     4              10
   n9                     9               2
   n10                    9               7
   n11                    3               2
   n12                    8               7
   n13                    7               4
   n14                    5               7
   n15                    4              10
   n16                    7               8
   n17                    4              11
   n18                    7               4
   n19                    2              10
   n20                    5               3
   n21                   10               6
   n22                    7               7
   n23                    2               9
   n24                    7               2
   n25                    6               6
   n26                    4               3
   n27                    9               9
   n28                    7               9
   n29                    4               2
   n30                    6               4
   n31                   10               7
   n32                    8               5
   n33                   11               5
   n34                    4               5
   n35                    5               5
   n36                   10               6
   n37                    2               1
   n38                   11               6
   n39                    3               7
   n40                   10               7
   n41                    7               2
   n42                   10               7
   n43                    2              11
   n44                    2               6
   n45                    9               4
   n46                    8              10
   n47                    4              10
   n48                    8               2
   n49                    9               4
   n50                    8              11
   n51                    7              11
   n52                    6               4
   n53                    6               9
   n54                    3               9
   n55                   10               6
   n56                    9               6
   n57                    3               2
   n58                    2               3
   n59                    9               5
   n60                    2               6
   n61                   10               8
   n62                    9              10
   n63                    3              11
   n64                    9               5
   n65                   10              10
   n66                    7               9
   n67                    6               7
   n68                    7               3
   n69                    5              10
   n70                    5              10
   n71                    5               2
   n72                    7               8
   n73                    6               4
   n74                    3               9
   n75                    6               4
   n76                    9               8
   n77                    3               9
   n78                    4               4
   n79                    6               8
   n80                    2              10
;

Scalar beta / 50 /;

Parameter vcr(m,n);
Set mp(m), np(n) sets that have all but the first node;
mp(m) = ord(m)>1; 
np(n) = ord(n)>1;

vcr('n1',np(n)) = sqr(pp('n1','c1')-pp(n-1,'c1')) + sqr(pp('n1','c2')-pp(n-1,'c2'));
vcr(mp,np) = sqr(pp(np,'c1')-pp(mp,'c1')) + sqr(pp(np,'c2')-pp(mp,'c2'));

vcost(m,np,s) = sqrt(vcr(m,np)+1);
fcost(m,n,s) = beta * vcost(m,n,s);

fcost(m,n,s) = round(fcost(m,n,s),6);
vcost(m,n,s) = round(vcost(m,n,s),6);

u = -demand('n1');
xupp(m,n,s)$fcost(m,n,s) = u;
yupp(np,np,s) = eps;

usett1 = 1;
usett2 = 1;

