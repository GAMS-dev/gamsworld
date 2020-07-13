Sets n / n1*n50 /
     s / a1 /;

yupp('n1','n1','a1')=0;

Parameter demand(n) /
   n2              2
   n3             10
   n4              2
   n5              6
   n6              2
   n7              8
   n8              7
   n9              7
   n10             4
   n11             4
   n12            10
   n13             6
   n14             0
   n15             5
   n16             2
   n17             2
   n18             7
   n19             9
   n20             4
   n21             2
   n22            10
   n23             2
   n24             8
   n25             8
   n26             7
   n27             8
   n28             8
   n29             0
   n30             1
   n31             0
   n32             9
   n33            10
   n34             5
   n35             4
   n36             3
   n37             2
   n38             6
   n39             2
   n40             0
   n41             6
   n42             7
   n43             7
   n44             5
   n45             5
   n46             2
   n47            10
   n48             0
   n49            10
   n50             9
   n1           -253
/;

Table pp(n,*) 
			 c1		 c2
   n1                     4               5
   n2                     2               7
   n3                     3               4
   n4                     6               2
   n5                     3              10
   n6                     5               8
   n7                     9               1
   n8                     4               8
   n9                     4               3
   n10                    2               8
   n11                    5               2
   n12                    9              10
   n13                    5              10
   n14                    9               2
   n15                    9              11
   n16                    6               5
   n17                    7              10
   n18                    8               3
   n19                    9              10
   n20                    9               2
   n21                    6               6
   n22                    6               9
   n23                    2               7
   n24                    5               7
   n25                    8              10
   n26                    5              11
   n27                    9               2
   n28                    3               3
   n29                    8               9
   n30                    5              10
   n31                    4               5
   n32                   10               3
   n33                    8               4
   n34                    8              10
   n35                    8               7
   n36                    5               9
   n37                    3              10
   n38                   10              10
   n39                    5               7
   n40                   10               3
   n41                    2               7
   n42                    2               5
   n43                    2               5
   n44                    4               3
   n45                    6               9
   n46                    5               5
   n47                    6               3
   n48                    8               9
   n49                    4               4
   n50                   10              10
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

