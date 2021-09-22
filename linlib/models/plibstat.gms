* Create cb.gms
$echo '                             EQ      GEQ     LEQ     EEQ     rEQ     VAR  ContVAR  BinVAR  IntVAR   SCVAR   SIVAR    SS1     SS2         NZ         MNZ     CNZ      QMaxNZ     QMaxRows     NumQ'  > mstats.txt
$echo 'cplexmps' >  convert.opt
$echo 'qmaker'   >> convert.opt
$echo 'cplexmps' >  convert.op2
$echo '$include performlib.gms' > cb.gms
$echo 'file fgen / cbk.gms /;' >> cb.gms
$echo 'put fgen "$echo * Best known solution values > bestknown.txt" /;' >> cb.gms
$echo 'loop(bk(m,p),' >> cb.gms
$echo '   put fgen "$call gams cbkstat --gdxfile=" m.tl:0 " --point=" p.tl:0  ' >> cb.gms
$echo 'put /;)' >> cb.gms
$echo 'loop(m, ' >> cb.gms
$echo '         put fgen "$if exist qmaker.gdx $call rm -f qmaker.gdx"/' >> cb.gms
$echo '   if(nogdx(m),'    >> cb.gms
$echo '      if(mlp(m) or mmip(m),'   >> cb.gms
$echo '         put fgen "$call gams " m.tl:0  " lp=convert mip=convert qcp=convert miqcp=convert rmiqcp=convert optfile=2 reslim=0 iterlim=0"/' >> cb.gms
$echo '      else'  >> cb.gms
$echo '         put fgen "$call gams " m.tl:0  " lp=convert mip=convert qcp=convert miqcp=convert rmiqcp=convert optfile=1 reslim=0 iterlim=0"/' >> cb.gms
$echo '      );' >> cb.gms
$echo '      put fgen "$call mps2gms cplex.mps " m.tl:0 ".gdx"/' >> cb.gms
$echo '      put fgen "$call gams crstat_nogdx --gdxfile=" m.tl:0 / ' >> cb.gms
$echo '      put fgen "$call rm -f " m.tl:0 ".gdx qmaker.*"  ' >> cb.gms
$echo '   else'    >> cb.gms
$echo '      put fgen "$call gams crstat --gdxfile="m.tl:0  ' >> cb.gms
$echo '   );'    >> cb.gms
$echo 'put / ' >> cb.gms
$echo '); ' >> cb.gms


*=== Create crstat.gms (gets the model statistics) 
$onecho > crstat.gms
 
set mps2gdx;  
parameter mps2gdxstats(mps2gdx); 
$gdxin %gdxfile%.gdx 
$load mps2gdx mps2gdxstats 
$gdxin 
file statfile /mstats.txt/; 
statfile.ap=1; 

parameter nz, mnz, cnz, is_qcp;
nz = mps2gdxstats("par_ac") + mps2gdxstats("par_ab") + mps2gdxstats("par_ai") + mps2gdxstats("par_asc") + mps2gdxstats("par_asi") + mps2gdxstats("par_as1") + mps2gdxstats("par_as2") + mps2gdxstats("par_c");
mnz = mps2gdxstats("par_ac") + mps2gdxstats("par_ab") + mps2gdxstats("par_ai") + mps2gdxstats("par_asc") + mps2gdxstats("par_asi") + mps2gdxstats("par_as1") + mps2gdxstats("par_as2");
cnz = mps2gdxstats("par_c");
 
if ( (mps2gdxstats("set_jb") gt 0) or (mps2gdxstats("set_ji") gt 0) or (mps2gdxstats("set_js1") gt 0) or (mps2gdxstats("set_js2") gt 0) or (mps2gdxstats("set_jsc") gt 0) or (mps2gdxstats("set_jsi") gt 0)  , 
   put statfile '%gdxfile%':20:0, '.MIP'; 
else 
   put statfile '%gdxfile%':20:0, '.LP '; 
); 
put mps2gdxstats("set_i"):8:0,   mps2gdxstats("set_ig"):8:0,  mps2gdxstats("set_il"):8:0; 
put mps2gdxstats("set_ie"):8:0,  mps2gdxstats("set_ir"):8:0;  
put mps2gdxstats("set_j"):8:0,   mps2gdxstats("set_jc"):8:0,  mps2gdxstats("set_jb"):8:0, mps2gdxstats("set_ji"):8:0; 
put mps2gdxstats("set_jsc"):8:0, mps2gdxstats("set_jsi"):8:0, mps2gdxstats("set_js1"):8:0, mps2gdxstats("set_js2"):8:0; 
put nz:12:0,  mnz:12:0,  cnz:8:0
put /;     
putclose statfile; 
$offecho



*=== Create crstat_nogdx.gms (gets the model statistics) 
$onecho > crstat_nogdx.gms

set mps2gms;  
parameter mps2gmsstats(mps2gms); 
$gdxin %gdxfile%.gdx 
$load mps2gms mps2gmsstats 
$gdxin 

scalar    MaxQnz, MaxQ; 
parameter QDCnt;

$if exist qmaker.gdx $gdxin qmaker.gdx
$if exist qmaker.gdx $load  MaxQnz MaxQ QDCnt
$if exist qmaker.gdx $gdxin 

$if exist qmaker.gdx     $set qmaker 1
$if not exist qmaker.gdx $set qmaker 0
alias(i,*);
if(not %qmaker%,
   QDCnt(i) = 0;
   MaxQnz   = 0;
   MaxQ     = 0;
);

file statfile /mstats.txt/; 
statfile.ap=1; 

parameter nz, mnz, cnz;
nz = mps2gmsstats("par_ac") + mps2gmsstats("par_ab") + mps2gmsstats("par_ai") + mps2gmsstats("par_asc") + mps2gmsstats("par_asi") + mps2gmsstats("par_as1") + mps2gmsstats("par_as2") + mps2gmsstats("par_c");
mnz = mps2gmsstats("par_ac") + mps2gmsstats("par_ab") + mps2gmsstats("par_ai") + mps2gmsstats("par_asc") + mps2gmsstats("par_asi") + mps2gmsstats("par_as1") + mps2gmsstats("par_as2");
cnz = mps2gmsstats("par_c");

 
if(%qmaker%,
   if ( (mps2gmsstats("set_jb") gt 0) or (mps2gmsstats("set_ji") gt 0) or (mps2gmsstats("set_js1") gt 0) or (mps2gmsstats("set_js2") gt 0) or (mps2gmsstats("set_jsc") gt 0) or (mps2gmsstats("set_jsi") gt 0)  , 
      put statfile '%gdxfile%':18:0, '.MIQCP'; 
   else 
      put statfile '%gdxfile%':20:0, '.QCP'; 
   ); 
else
   if ( (mps2gmsstats("set_jb") gt 0) or (mps2gmsstats("set_ji") gt 0) or (mps2gmsstats("set_js1") gt 0) or (mps2gmsstats("set_js2") gt 0) or (mps2gmsstats("set_jsc") gt 0) or (mps2gmsstats("set_jsi") gt 0)  , 
      put statfile '%gdxfile%':20:0, '.MIP'; 
   else 
      put statfile '%gdxfile%':20:0, '.LP '; 
   ); 
);

put mps2gmsstats("set_i"):8:0,   mps2gmsstats("set_ig"):8:0,  mps2gmsstats("set_il"):8:0; 
put mps2gmsstats("set_ie"):8:0,  mps2gmsstats("set_ir"):8:0;  
put mps2gmsstats("set_j"):8:0,   mps2gmsstats("set_jc"):8:0,  mps2gmsstats("set_jb"):8:0, mps2gmsstats("set_ji"):8:0; 
put mps2gmsstats("set_jsc"):8:0, mps2gmsstats("set_jsi"):8:0, mps2gmsstats("set_js1"):8:0, mps2gmsstats("set_js2"):8:0; 
put nz:12:0,  mnz:12:0,  cnz:8:0;
put MaxQnz:11:0 MaxQ:13:0;

alias(i,*);
scalar numQs/0/;
loop(i$QDcnt(i),
  numQs = numQs+1;
);


put numQs:9:0;

put /;     
putclose statfile; 
$offecho


* Create cbkstat.gms (gets the best known solution)
$onecho > cbkstat.gms
set mps2gdx;   
variable obj;
parameter mps2gdxstats(mps2gdx);  
$gdxin %gdxfile%_%point%.gdx 
$load obj
$gdxin
$gdxin %gdxfile%.gdx 
$load mps2gdx mps2gdxstats 
$gdxin  
file statfile /bestknown.txt/;  
statfile.ap=1;  
  
put statfile '%gdxfile%':20:0;
put '.%point%':10:0; 
put obj.l:20:10;
put /;
      
putclose statfile;  
$offecho 

$call gams cb.gms
$call gams cbk.gms

$include performlib.gms

parameter bestknown(m,p) /
$ondelim
$include bestknown.txt
$offdelim
/;




$eolcom #
Table stats(m,mtype,*) 
$include mstats.txt
;

* Computer other discrete variables 
parameter ODvar(m,mtype);
ODvar(m,mtype) = stats(m,mtype,'intvar') +  stats(m,mtype,'scvar') + stats(m,mtype,'sivar') + stats(m,mtype,'ss1') + stats(m,mtype,'ss2'); 


file ftxt  / performstat.txt /
     fhtm  / htm.htm /




put ftxt "PERFORMLib Model Statistics" /
put ftxt "Name          Type     #Eqns   #Vars  #BVars   #ODVars        #NZ     NumQ     QMaxRows     QMaxNZ            BestObj  Point" /;            
loop((m,mtype)$(stats(m,mtype,'var')),									    
  put m.tl:15;												    
  put mtype.tl:5 											    
  put stats(m,mtype,'eq'):8:0;										    
  put stats(m,mtype,'var'):8:0;										    
  put stats(m,mtype,'binvar'):8:0;									    
  put ODvar(m,mtype):8:0;	
  put stats(m,mtype,'nz'):12:0;										    
  put stats(m,mtype,'NumQ'):10:0;									    
  put stats(m,mtype,'QMaxRows'):13:0;									    
  put stats(m,mtype,'QMaxNZ'):11:0;									    
  loop(bk(m,p), put bestknown(bk):20:4 " " p.tl:0);							    
  put /;												    
)													    
													    
	

* Start HTML model statistics page.
set c /													    
    c1 fefefe												    
    c2 e0e0e0												    
/													    
      													    
set mc(m,c);												    
    mc(m,'c1')$(mod(ord(m),2)=1) = yes;									    
    mc(m,'c2')$(mod(ord(m),2)=0) = yes;									    
    													    
scalar havesol;				

Alias(j_htm, i_htm);
Alias(m,n);


* For each HTML page (grouping of models) write header
loop(i_htm,
       if (ord(i_htm) eq 1,
          put_utilities 'ren'/ 'performstat.htm';
       else
          put_utilities 'ren'/ 'performstat' i_htm.tl:0 '.htm';
       ); 		
       								    
       put '<html> <head> <title>LINLib Model Statistics</title>'					    
               / '<!--#include virtual="/performance/header.html" -->';					    
       put '<H3>LINLib Model Statistics</H3>' /								    
       													    
       put '<B>Total number of models: &nbsp ' card(m):0:0 '</B><P>' /

       put '<TR><TD width="100%"> '/										    
       put '<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%"><TBODY> '/				    
       put '   <TR><TH align=right vAlign=center>[  '/		
   
       loop((j_htm,n)$m_htm(j_htm,n),											    
   													    
         if(first_m(j_htm,n),	
            if (ord(j_htm) eq 1,
               put ' <a href="  performstat.htm">' n.tl:5	
   	    else
               put ' <a href="  performstat' j_htm.tl:0 '.htm">' n.tl:5
            );								   					   			
         );													    
     													    
         if( (ord(n) eq card(n)) and (ord(j_htm) eq card(j_htm) ),						    
            put$(last_m(j_htm,n))  '  --  ' n.tl:5 ' </a> &nbsp ' /;				    
         else				         								    
            put$(last_m(j_htm,n))  '  --  ' n.tl:5 ' </a> &nbsp | &nbsp ' /;				    
         );													    
      );	
   
      put '   ] </TH></TR></TBODY> '/										    
      put '</TABLE></TD></TR><BR> '/										    
      													    
      put '<TABLE WIDTH="100%" BGCOLOR="#f8f8f8" BORDER=0  CELLSPACING=0 CELLPADDING=0>' /			    
      put '<TH ALIGN=LEFT BGCOLOR="#00080"><FONT COLOR="#ffffff">Name</FONT></TH>' /				    
      put '<TH ALIGN=LEFT BGCOLOR="#00080"><FONT COLOR="#ffffff">Type</FONT></TH>' /				    
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">Equations</FONT></TH>' /			    
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">Total Number</FONT></TH>' /			    
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">Binary</FONT></TH>' /			    
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">Other Discrete</FONT></TH>' /		    
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">Nonzeros</FONT></TH>' /			    
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">Number of</FONT></TH>' /			    
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">Max Nonzeros in</FONT></TH>' /			    
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">Max Rows in</FONT></TH>' /			    
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">Best</FONT></TH>' /				    
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">at Point</FONT></TH>' /			    
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">&nbsp;</FONT></TH></TR>' /			    
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">&nbsp;</TH>' / 				    
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">&nbsp;</TH>' / 				    
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">&nbsp;</TH>' / 				    
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">of Variables</TH>' / 			    
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">Variables</TH>' / 				    
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">Variables</TH>' / 				    
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">&nbsp;</TH>' / 
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">Q Matrices</TH>' /	
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">Q Matrices</TH>' /				    
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">Q Matrices</TH>' /				    
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">Solution</TH>' / 				    
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">&nbsp;</TH>' / 				    
      put '<TH ALIGN=RIGHT BGCOLOR="#00080"><FONT COLOR="#ffffff">&nbsp;</TH>' / 						

* Add model data
      loop( (m,mtype,c)$(mc(m,c) and m_htm(i_htm,m) and stats(m,mtype,"var") gt 0),
          put '<TR>'/;												    
          put '<TD BGCOLOR="#' c.te(c) '"><a href="' m.tl:0 '.htm">' m.tl:0 '</a></TD>'/;			    
         													    
          put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' mtype.tl:0:0 '</TD>'/;					    
          													    
          put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' stats(m,mtype,"eq"):0:0 '</TD>'/;			    
          put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' stats(m,mtype,"var"):0:0 '</TD>'/;			    
          put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' stats(m,mtype,"binvar"):0:0 '</TD>'/;			    
          put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' ODvar(m,mtype):0:0 '</TD>'/;				    
          put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' stats(m,mtype,"nz"):0:0 '</TD>'/;	
          put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' stats(m,mtype,"NumQ"):0:0 '</TD>'/;	
          put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' stats(m,mtype,"QMaxNZ"):0:0 '</TD>'/;			    
          put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' stats(m,mtype,"QMaxRows"):0:0 '</TD>'/;   		    
          havesol=0;												    
          loop(bk(m,p)$(not havesol), 										    
               havesol=1;											    
               put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '">' bestknown(bk):12:4 				    
                            '</TD><TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '"><a href="' m.tl:0			    
                            '_' p.tl:0 '.htm">' p.tl:0 '</a></TD>'						    
          );													    
          if (havesol=0,											    
             put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '"> &nbsp;</TD>'					    
                 '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '"> &nbsp;</TD>';					    
          );  													    
          put '<TD ALIGN=RIGHT BGCOLOR="#' c.te(c) '"> &nbsp;</TD></TR>'/;						
      );	    
      put '</TABLE>';  
   
 	
);  		
  	
  
