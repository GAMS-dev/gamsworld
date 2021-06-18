Sets n / n1*n80 /
     s / a1 /;

yupp('n1','n1','a1')=0;

Parameter demand(n) /
   n2              2
   n3              7
   n4              5
   n5              2
   n6              4
   n7              9
   n8              9
   n9              2
   n10             9
   n11             3
   n12             4
   n13             7
   n14             8
   n15             1
   n16             1
   n17             7
   n18             2
   n19             2
   n20            10
   n21            10
   n23            10
   n24             9
   n26             3
   n27             6
   n28             5
   n29             3
   n30             1
   n31             4
   n32             7
   n33             1
   n34             7
   n36             1
   n37             5
   n39             5
   n40             5
   n41             1
   n42             7
   n43             7
   n44             7
   n45             3
   n47             7
   n48             6
   n49             7
   n50             3
   n51             5
   n53            10
   n54             9
   n55             6
   n57             3
   n58             2
   n59             9
   n60             7
   n61             2
   n62             6
   n63             7
   n64             6
   n65             7
   n67             9
   n68             8
   n69             6
   n70            10
   n71             2
   n72             9
   n73             9
   n74             8
   n76            10
   n78             2
   n80             8
   n1           -384
/;

Table pp(n,*) 
			 c1		 c2
   n1                     5               8
   n2                     8               4
   n3                     9               8
   n4                     3               3
   n5                     6               9
   n6                     3               3
   n7                     7              11
   n8                     7               9
   n9                     2               8
   n10                    2               1
   n11                    3               5
   n12                    3               7
   n13                    1               4
   n14                    5               2
   n15                    5               7
   n16                    7               2
   n17                   11              10
   n18                    8               7
   n19                    7               9
   n20                   10               6
   n21                    8               1
   n22                   10               3
   n23                    7               5
   n24                    6               1
   n25                    5               1
   n26                    7               5
   n27                    7               1
   n28                    4               2
   n29                    6              10
   n30                    9               3
   n31                    3               6
   n32                    3               6
   n33                    3               2
   n34                    3               3
   n35                    2               8
   n36                    8               3
   n37                    2               2
   n38                    6              10
   n39                    3               9
   n40                    2               6
   n41                   10               4
   n42                   10               4
   n43                    3               6
   n44                    5               5
   n45                    2               6
   n46                    3               2
   n47                    5               4
   n48                    8               6
   n49                    8               8
   n50                    8               4
   n51                    2              10
   n52                    7               1
   n53                    8               7
   n54                    3               3
   n55                    7               2
   n56                    2               1
   n57                    7               3
   n58                    2              11
   n59                    3               9
   n60                    3               5
   n61                    2               7
   n62                    4               7
   n63                    6               3
   n64                    3               3
   n65                    2               4
   n66                   11               3
   n67                   10               3
   n68                    9               2
   n69                    8               8
   n70                    8               2
   n71                    5               7
   n72                    7               7
   n73                    8               6
   n74                    2               3
   n75                    5              11
   n76                    4               4
   n77                    7              10
   n78                    9              11
   n79                    2               9
   n80                   10               6
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

