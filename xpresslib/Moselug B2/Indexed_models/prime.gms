******************************************************
*   Mosel User Guide Example Problems
*   =================================
*
* origin file prime.mos
*   ``````````````
*   Working with sets.
*
*   (c) 2001 Dash Associates
*       author: S. Heipcke
*******************************************************

* model Prime

$Set LIMIT 100
Set I /i1*i%LIMIT%/ ;

Set SNumbers(I) ;
* Set of numbers to be checked
Set SPrime(I)   ;  SPrime(I) = Yes ;
* Set of prime numbers
Alias(I,J);
Alias(I,K);

Parameter A , B ;


Display "Prime numbers "  ;

Parameter N , M ;
* Search for prime numbers in 2..LIMIT

Loop(I$(ord(I) gt 1),
M = ord(I) ;
Loop(J,
N = M * ord(J) ;

Loop(K,
If ( ((N eq ord(K))and (ord(J) gt 1)) ,  SNumbers(K) = Yes ;  );
);
B = card(SNumbers) ;
Display N , B ;

);
);


SPrime(I) = SPrime(I) - SNumbers(I) ;
SPrime('i1') = No;

Display SPrime ;
Display " prime numbers  = " ;
A = card(SPrime);
Display A ;
