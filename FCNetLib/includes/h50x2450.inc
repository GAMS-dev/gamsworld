Sets n / n1*n50 /
     s / a1 /;

yupp('n1','n1','a1')=0;

Parameter demand(n) /
   n2              7
   n3              4
   n4              5
   n5              4
   n6              5
   n7             10
   n8              2
   n9              6
   n10             1
   n11             8
   n12             9
   n13             1
   n14             1
   n15             5
   n16             1
   n17             7
   n18             7
   n19             5
   n20             1
   n21             2
   n22             4
   n23             4
   n24             3
   n25             8
   n26             6
   n27             8
   n28             9
   n29            10
   n30             3
   n31             9
   n32            10
   n33             6
   n34             4
   n35             2
   n36             4
   n37             4
   n38            10
   n39            10
   n40             8
   n41             6
   n42             3
   n43             2
   n44             2
   n45             8
   n46             7
   n47             8
   n48             9
   n49            10
   n50             9
   n1           -277
/;

Table pp(n,*) 
			 c1		 c2
   n1                    90              71
   n2                    53               6
   n3                    94              40
   n4                    51              50
   n5                     5              62
   n6                    17               4
   n7                    75              54
   n8                    52              54
   n9                     6              95
   n10                   91               2
   n11                   47              75
   n12                   97              30
   n13                   42              19
   n14                    7               2
   n15                   11              61
   n16                   58              94
   n17                   51              37
   n18                   53              76
   n19                   97              25
   n20                    5              48
   n21                   42              65
   n22                   25              38
   n23                   85              79
   n24                   61              76
   n25                   56              56
   n26                   86              52
   n27                   19               5
   n28                   39              64
   n29                   16              39
   n30                   96              75
   n31                    0              86
   n32                   85              69
   n33                   76              10
   n34                   40              43
   n35                   69              42
   n36                   85              14
   n37                   39              55
   n38                   42              86
   n39                   78              40
   n40                   77              34
   n41                   80               3
   n42                   58              89
   n43                   53              11
   n44                   43              46
   n45                   44              36
   n46                   72              88
   n47                   39              21
   n48                   90              64
   n49                   37              13
   n50                   63              96
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

