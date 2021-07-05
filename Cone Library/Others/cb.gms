$include conelib_nlp.gms
file fgen / cbk.gms /;
put fgen "$echo * Best known solution values > bestknown.txt" /;
loop(bk(m,p),
 put fgen "$echon " m.tl:0 "." p.tl:0 ", >> bestknown.txt" /;
 put fgen "$call grep objvar.l " m.tl:0 "." p.tl:0 " | cut -d= -f2 | sed s/\;//g >> bestknown.txt" /;);
