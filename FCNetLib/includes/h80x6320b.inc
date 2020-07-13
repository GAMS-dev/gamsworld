Sets n / n1*n80 /
     s / a1 /;

yupp('n1','n1','a1')=0;

Parameter demand(n) /
   n2              2
   n3              1
   n4             10
   n5              3
   n6              1
   n7              1
   n8              7
   n9              2
   n10             3
   n11             6
   n12             5
   n13             7
   n14             2
   n15             5
   n16             6
   n17             5
   n18             4
   n19             3
   n20             7
   n21             5
   n24             3
   n25             1
   n27             9
   n28             5
   n29             8
   n30             1
   n31             1
   n32             6
   n33             2
   n34             9
   n36             8
   n37             4
   n38             6
   n39             9
   n40             3
   n41             8
   n42             3
   n43             8
   n44             5
   n45             5
   n46             9
   n47             8
   n48             5
   n50             8
   n51             7
   n52             5
   n53             1
   n54             5
   n56             1
   n57             5
   n58             8
   n61             1
   n62             4
   n63             5
   n64             9
   n65             2
   n67             6
   n68             5
   n69             9
   n70             4
   n71             8
   n72             5
   n73             4
   n74             9
   n76             6
   n77             5
   n78             6
   n79             5
   n80            10
   n1           -354
/;

Table pp(n,*) 
			 c1		 c2
   n1                     5               4
   n2                     9               3
   n3                    10               7
   n4                     2               5
   n5                     4               7
   n6                     3               3
   n7                     2               2
   n8                    10               2
   n9                     7               1
   n10                    8               8
   n11                    6               7
   n12                    2               6
   n13                    5              11
   n14                    6               8
   n15                    2               9
   n16                    3               3
   n17                    1               8
   n18                    9               6
   n19                    8               5
   n20                    7               8
   n21                    8               1
   n22                    2              10
   n23                    2              10
   n24                    6               5
   n25                    3               8
   n26                    7               1
   n27                    9               3
   n28                    7               3
   n29                    2               9
   n30                    8               2
   n31                    6               6
   n32                    9               9
   n33                    8               6
   n34                    5               4
   n35                   11               8
   n36                    9               9
   n37                    6              10
   n38                    4               4
   n39                    7               8
   n40                    4              10
   n41                    7               6
   n42                    5               2
   n43                    5               3
   n44                    5               6
   n45                    9               7
   n46                    3               8
   n47                    8               3
   n48                    3              10
   n49                    5               1
   n50                    8               3
   n51                    3               3
   n52                    5               1
   n53                    7               6
   n54                    1               2
   n55                   10               8
   n56                   10               6
   n57                    9              10
   n58                    9               8
   n59                    6              10
   n60                    2               2
   n61                   10              10
   n62                    9               6
   n63                    6               4
   n64                    5               4
   n65                    3              10
   n66                    3               7
   n67                    9               3
   n68                    9               7
   n69                    6               8
   n70                    9              10
   n71                    2               5
   n72                    8               6
   n73                   11               7
   n74                    5               8
   n75                   11               6
   n76                    5               6
   n77                    4              10
   n78                   11               5
   n79                    4               7
   n80                    6              11
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

