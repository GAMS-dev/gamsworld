$offlisting
$include performlib.gms
$onlisting


file fgms /f.gms/;
put fgms;


*=== Create LP models
loop(m$(not mmip(m)),

   put_utilities 'ren' / m.tl:0 '.gms'; 
  
   put  / 'sets i      all rows in MPS order       '   
        / 'ig(i)  greater-than-or equal rows  	   '   
        / 'il(i)  less-than-or equal rows     	   '   
        / 'ie(i)  equality rows               	   '   
        / 'ir(i)  ranged rows;                	   ' //;
					      	       
   put  / 'equations eobj   objective function	   '   
        / '  eg(i)  greater-than-or equal equs	   '   
        / '  el(i)  less-than-or equal equs   	   '   
        / '  ee(i)  equality equs	      	   '   
        / '  er(i)  ranged equs;              	   ' //;

   put  / 'sets j        all columns in MPS order  '
        / 'jc (j)   continuous columns;            ' //;
 


   put  / '         variables obj        objective variable    '
        / 'positive variables xc (j)     continuous variables  '
        / '                   r  (i)     ranged row variables; ' //;


   put  / 'parameters  c(j)        objective coefs          '   
        / '            cobj        objective constant	    '   
        / '            b(i)        right hand sides	    ' 
        / '            ac (i,jc)   matrix coefs: continuous variables; ' //;



   put  / 'eobj.. obj =e= sum(jc,       c(jc  )*xc (jc )) '
        / '       + cobj;                                 ' //;

   put  / 'eg(ig)..       sum(jc,  ac (ig,jc )*xc (jc ))  '   
        / '             =g= b(ig);			  ' //;

   put  / 'el(il)..       sum(jc,  ac (il,jc )*xc (jc ))  '   
        / '             =l= b(il);			  ' //;

   put  / 'ee(ie)..       sum(jc,  ac (ie,jc )*xc (jc ))  '   
        / '             =e= b(ie);			  ' //;

   put  / 'er(ir)..       sum(jc,  ac (ir,jc )*xc (jc ))  '   
        / '             =e= r(ir);			  ' //;

   put  / 'model m / all /; ' //;


   put  / 'set mps2gdx; parameter mps2gdxstats(mps2gdx); ' //;

   put / 'set mps2gdx; parameter mps2gdxstats(mps2gdx); ' //

   put  / '*=== If --gdxfile specified                     '
   put  / '*======= Load model data 			   '
   put  / '$if not set gdxfile $goto nogdxfile		   '
   put  / '$gdxin %gdxfile%.gdx	                           '
   put  / '$load i j mps2gdx  mps2gdxstats		   '
   put  / '$load ig il ie ir                               '
   put  / '$load jc           		                   '
   put  / '$load cobj c b				   '
   put  / '$load ac               		           '
   put  / '$load xc             		           '
   put  / '$gdxin                                          ' //

   put  / '*====== If specified, load point data           '   
   put  / '$if     set point $gdxin %gdxfile%_%point%.gdx  '   
   put  / '$if set point $load ee eg el eobj		   '   
   put  / '$if set point $load xc                          '   
   put  / '$goto donegdxfile				   ' // //



   put  / '*=== No --gdxfile specified                          '      
   put  / '*======= Load model data				'      
   put  / '$label nogdxfile					'      
   put  / '$gdxin ' m.tl:0 '.gdx          	                '      
   put  / '$load i j mps2gdx  mps2gdxstats			'      
   put  / '$load ig il ie ir					'      
   put  / '$load jc                                             '     
   put  / '$load cobj c b					'      
   put  / '$load ac                                             '      
   put  / '$load xc                                             '      
   put  / '$gdxin						' //   
           							       
   put  / '*======= If specified, load point data		'      
   put  / '$if     set point $gdxin ' m.tl:0 '_%point%.gdx      '            
   put  / '$if     set point $load ee eg el eobj		'      
   put  / '$if     set point $load xc 	                        '      
   put  / '$label donegdxfile					' // 


   put  / 'option limcol=0,limrow=0,solprint=off;        ' //;

   put  / 'solve m using lp minimizing obj;              ' //;



);



*=== Create MIP models
loop(m$mmip(m),

   put_utilities 'ren' / m.tl:0 '.gms'; 

   put / 'sets i      all rows in MPS order               '      
       / 'ig(i)  greater-than-or equal rows      	  '   
       / 'il(i)  less-than-or equal rows         	  '   
       / 'ie(i)  equality rows                   	  '   
       / 'ir(i)  ranged rows;                    	  ' //

   put / 'equations eobj   objective function             '   
       / '          eg(i)  greater-than-or equal equs	  '   
       / '          el(i)  less-than-or equal equs	  '   
       / '          ee(i)  equality equs		  '   
       / '          er(i)  ranged equs;			  ' //

   put / 'sets j        all columns in MPS order          '   
       / '     jc (j)   continuous columns                '   
       / '     jb (j)   binary columns			  '   
       / '     ji (j)   integer columns			  '   
       / '     jsc(j)   semi-continuous columns		  ' 
       / '     jsi(j)   semi-integer columns              '   
       / '     s        sos sets			  '   
       / '     js1(s,j) sos 1 columns			  '   
       / '     js2(s,j) sos 2 columns;			  ' //   
							  

   put / '         variables obj        objective variable    '
       / 'positive variables xc (j)     continuous variables  ' 
       / '                   r  (i)     ranged row variables  ' //

   put / 'binary   variables xb (j)     binary variables             '      
       / 'integer  variables xi (j)     integer variables	     '     
       / 'semicont variables xsc(j)     semi-continuous variables    '     
       / 'semiint  variables xsi(j)     semi-integer variables	     '     
       / 'sos1     variables xs1(s,j)   sos 1 variables		     '     
       / 'sos2     variables xs2(s,j)   sos 2 variables;	     '  //     
								     

   put / 'parameters  c(j)        objective coefs                    '      
       / '            cobj        objective constant		     '      
       / '            b(i)        right hand sides		     '      
       / '            ac (i,jc)   matrix coefs: continuous variables '      
       / '            ab (i,jb)   matrix coefs: binary variables     '      
       / '            ai (i,ji)   matrix coefs: integer variables    '  
       / '      asc(i,jsc)  matrix coefs: semi-continuous variables  '      
       / '      asi(i,jsi)  matrix coefs: semi-integer variables     '      
       / '      as1(i,s,j)  matrix coefs: sos 1 variables	     '      
       / '      as2(i,s,j)  matrix coefs: sos 2 variables;	     ' //      
      						           
       								     
   put / 'eobj.. obj =e= sum(jc,       c(jc  )*xc (jc ))             '   
       / '             + sum(jb,       c(jb  )*xb (jb ))	     '   
       / '             + sum(ji,       c(ji  )*xi (ji ))	     '   
       / '             + sum(jsc,      c(jsc )*xsc(jsc))	     '   
       / '             + sum(jsi,      c(jsi )*xsi(jsi))	     '   
       / '             + sum(js1(s,j), c(j)*xs1(js1))		     '   
       / '             + sum(js2(s,j), c(j)*xs2(js2)) + cobj;	     ' //
      
   put / 'eg(ig)..       sum(jc,  ac (ig,jc )*xc (jc ))              '   
       / '                       + sum(jb,  ab (ig,jb )*xb (jb ))    '   
       / '             + sum(ji,  ai (ig,ji )*xi (ji ))		     '   
       / '             + sum(jsc, asc(ig,jsc)*xsc(jsc))		     '   
       / '             + sum(jsi, asi(ig,jsi)*xsi(jsi))		     '   
       / '             + sum(js1, as1(ig,js1)*xs1(js1))		     '   
       / '             + sum(js2, as2(ig,js2)*xs2(js2)) =g= b(ig);   ' //

   put / 'el(il)..       sum(jc,  ac (il,jc )*xc (jc ))              '   
       / '             + sum(jb,  ab (il,jb )*xb (jb ))		     '   
       / '             + sum(ji,  ai (il,ji )*xi (ji ))		     '   
       / '             + sum(jsc, asc(il,jsc)*xsc(jsc))		     '   
       / '             + sum(jsi, asi(il,jsi)*xsi(jsi))		     '   
       / '             + sum(js1, as1(il,js1)*xs1(js1))		     '   
       / '             + sum(js2, as2(il,js2)*xs2(js2)) =l= b(il);   ' //


   put / 'ee(ie)..       sum(jc,  ac (ie,jc )*xc (jc ))              '   
       / '             + sum(jb,  ab (ie,jb )*xb (jb ))		     '   
       / '             + sum(ji,  ai (ie,ji )*xi (ji ))		     '   
       / '             + sum(jsc, asc(ie,jsc)*xsc(jsc))		     '   
       / '             + sum(jsi, asi(ie,jsi)*xsi(jsi))		     '   
       / '             + sum(js1, as1(ie,js1)*xs1(js1))		     '   
       / '             + sum(js2, as2(ie,js2)*xs2(js2)) =e= b(ie);   ' //

   put / 'er(ir)..       sum(jc,  ac (ir,jc )*xc (jc ))              '    
       / '             + sum(jb,  ab (ir,jb )*xb (jb ))		     '   
       / '             + sum(ji,  ai (ir,ji )*xi (ji ))		     '   
       / '             + sum(jsc, asc(ir,jsc)*xsc(jsc))		     '   
       / '             + sum(jsi, asi(ir,jsi)*xsi(jsi))		     '   
       / '             + sum(js1, as1(ir,js1)*xs1(js1))		     '   
       / '             + sum(js2, as2(ir,js2)*xs2(js2)) =e= r(ir);   ' //

   put / 'model m / all /;   ' //

   put / 'set mps2gdx; parameter mps2gdxstats(mps2gdx); ' //

   put  / '*=== If --gdxfile specified                     '
   put  / '*======= Load model data 			   '
   put  / '$if not set gdxfile $goto nogdxfile		   '
   put  / '$gdxin %gdxfile%.gdx	                           '
   put  / '$load i j mps2gdx s mps2gdxstats		   '
   put  / '$load ig il ie ir                               '
   put  / '$load jc jb ji jsc jsi js1 js2		   '
   put  / '$load cobj c b				   '
   put  / '$load ac ab ai asc asi as1 as2		   '
   put  / '$load xc xb xi xsc xsi xs1 xs2 r		   '
   put  / '$gdxin                                          ' //

   put  / '*====== If specified, load point data           '   
   put  / '$if     set point $gdxin %gdxfile%_%point%.gdx  '   
   put  / '$if set point $load ee eg el eobj		   '   
   put  / '$if set point $load xc xb xi xsc xsi xs1 xs2 r  '   
   put  / '$goto donegdxfile				   ' // //



   put  / '*=== No --gdxfile specified                          '      
   put  / '*======= Load model data				'      
   put  / '$label nogdxfile					'      
   put  / '$gdxin ' m.tl:0 '.gdx          	                '      
   put  / '$load i j mps2gdx s mps2gdxstats			'      
   put  / '$load ig il ie ir					'      
   put  / '$load jc jb ji jsc jsi js1 js2			'      
   put  / '$load cobj c b					'      
   put  / '$load ac ab ai asc asi as1 as2			'      
   put  / '$load xc xb xi xsc xsi xs1 xs2 r			'      
   put  / '$gdxin						' //   
           							       
   put  / '*======= If specified, load point data		'      
   put  / '$if     set point $gdxin ' m.tl:0 '_%point%.gdx      '            
   put  / '$if     set point $load ee eg el eobj		'      
   put  / '$if     set point $load xc xb xi xsc xsi xs1 xs2 r	'      
   put  / '$label donegdxfile					' // 


   put / 'option limcol=0,limrow=0,solprint=off;                     '
*   put / 'm.optfile=1;                                               '
   put / 'solve m using mip minimizing obj;                          ' // 

);