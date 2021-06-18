Sets n / n1*n50 /
     s / a1 /;

yupp('n1','n1','a1')=0;

Parameter demand(n) /
   n2              2
   n3              4
   n4              7
   n5              7
   n6             10
   n7             10
   n8              5
   n9              8
   n10             9
   n11             8
   n12             0
   n13             5
   n14             5
   n15            10
   n16             7
   n17             0
   n18             9
   n19            10
   n20             1
   n21             8
   n22            10
   n23             3
   n24             2
   n25             9
   n26             5
   n27             0
   n28             8
   n29             5
   n30             1
   n31             7
   n32             8
   n33             1
   n34             7
   n35             4
   n36             9
   n37             1
   n38             1
   n39             6
   n40             8
   n41             3
   n42             3
   n43             8
   n44             3
   n45             7
   n46            10
   n47             1
   n48            10
   n49             3
   n50             3
   n1           -271
/;

Table pp(n,*) 
			 c1		 c2
   n1                     6               3
   n2                     8               5
   n3                     1               3
   n4                     4               4
   n5                     8               4
   n6                     8               2
   n7                     4               4
   n8                     8               5
   n9                     5               5
   n10                    2               8
   n11                    4               7
   n12                    5               1
   n13                   10              10
   n14                    5               7
   n15                    3               4
   n16                    5               3
   n17                    7              10
   n18                    5               6
   n19                    5               8
   n20                    3               4
   n21                   10               6
   n22                    5               4
   n23                    6               9
   n24                    8              10
   n25                   10               9
   n26                    5              10
   n27                    8               4
   n28                    7               8
   n29                    3               6
   n30                    4               2
   n31                    4               8
   n32                   10               6
   n33                    2               3
   n34                    6               7
   n35                    3               2
   n36                    7              11
   n37                    4               2
   n38                    9              10
   n39                    7               6
   n40                    5               6
   n41                    3               9
   n42                    5               8
   n43                    9               3
   n44                    6              11
   n45                    6               4
   n46                    8               5
   n47                    8               7
   n48                    9               9
   n49                    3               5
   n50                    2               8
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
yupp(np,np,s) = 1;

usett1 = 1;
usett2 = 1;

