Sets n / n1*n50 /
     s / a1 /;

yupp('n1','n1','a1')=0;

Parameter demand(n) /
   n2              2
   n3             10
   n4              5
   n5              6
   n6              8
   n7              8
   n8              4
   n9              9
   n10             7
   n11             5
   n12             9
   n13             3
   n14             3
   n15             6
   n16             2
   n17             7
   n18             5
   n19            10
   n20             7
   n21             4
   n22             0
   n23             5
   n24             8
   n25             7
   n26             1
   n27             0
   n28             9
   n29             5
   n30             6
   n31             6
   n32             3
   n33             1
   n34             9
   n35             8
   n36             4
   n37             0
   n38             6
   n39             0
   n40             1
   n41             8
   n42             6
   n43             5
   n44             3
   n45             5
   n46             8
   n47             2
   n48             9
   n49             0
   n50             7
   n1           -252
/;

Table pp(n,*) 
			 c1		 c2
   n1                     9              11
   n2                     7              10
   n3                     8               3
   n4                     5              10
   n5                     3               3
   n6                     5               9
   n7                     6               3
   n8                     5               5
   n9                     5               4
   n10                    6               1
   n11                    7               8
   n12                    7               3
   n13                    5               6
   n14                    4               7
   n15                    7               7
   n16                    8               7
   n17                    5               4
   n18                    6               7
   n19                    4               2
   n20                    7               4
   n21                    3               5
   n22                    6               9
   n23                    6               5
   n24                    5              11
   n25                    6               4
   n26                   10               7
   n27                    6               8
   n28                    2               4
   n29                    5               2
   n30                    2              11
   n31                    6               1
   n32                   11               8
   n33                    2               3
   n34                    8               1
   n35                    6               3
   n36                    6               7
   n37                    8               2
   n38                    3               5
   n39                    3               4
   n40                    7              11
   n41                    3               3
   n42                    2              10
   n43                    7               4
   n44                    6               2
   n45                    3               8
   n46                    5               3
   n47                    4               1
   n48                    2               2
   n49                    7               2
   n50                   11               4
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

