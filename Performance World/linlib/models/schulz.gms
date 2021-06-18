$TITLE Schulz - Prison Guard

$ontext

Sometimes experimental solvers do not terminate in the prespecified
time limit or at all. Running batches of models with such a solver
(e.g. for performance testing) requires frequent attention (to
terminate the hanging process). This little GAMS/AWK program scans the
list of processes and checks if the time (elapsed/CPU time/...)
exceedes the preset limit. If the time is exceeded 'schulz' sends a
terminate signal to the process. If the process still doesn't
terminate and remains in the list of processes, the 'schulz' sends a
more effective signal.

gams schulz --watch ^gms --time etime --sleep 60 --resseq 120:180:240 --sigseq 2:1:9 

--watch the process names to watch (argument is a regular expression)

--time  which type of time should be monitored 
        (PC: etime/cputime/kerneltime, Unix: every 'time' column 
        accessible with -o for ps) (in seconds)

--sleep frequency of checking (in seconds)

--reseq list of times where action is required (in seconds separated
        by :)

--sigseq list of corresponding signals to send to the processes
        (separated by :). Try "man signal" on Unix for more
        information.

The parameters in the example call of 'schulz' represent the defaults
for the options.

Terminate a 'schulz' job with Ctrl-C.

$offtext

$if not set sleep   $set sleep   60
$if not set resseq  $set resseq 120:180:240
$if not set sigseq  $set sigseq   2:1:9
$if not set watch   $set watch  ^gms

* Set default time to cputime for WIN and etime for UNIX
$if not set time    $set time   etime
$if %system.filesys% != UNIX $set time cputime

$escape =
$set sleepcmd system("sleep " sleepsec)
$if %system.filesys% == UNIX $goto unix
* Some of the regular command (e.g. date) are prefixed with a g (e.g. gdate)
* because "date" is a Shell buildin for CMD on Windows 2000
$set gprefix g

$set timecol  $9
$ifi %time% == cputime    $set timecol $7
$ifi %time% == kerneltime $set timecol $8
$set kill    pskill
$set nul     " > nul"
$set getpid  pslist | awk \"$1 ~ /%watch%/ {printf(\\\"%=s,%=s,%=s#\\\",$2,%timecol%,tolower($1))}\"
$goto start

$label unix
$set gprefix 
$set kill    'kill -" signal "'
$set nul     " &> /dev/null"
$set name    comm
$ifi %system.platform% == "hp7" $set psprefix "env UNIX95=XPG4 "
$ifi %system.platform% == "sol" $set psprefix /usr/bin/
$ifi %system.platform% == "sol" $set name     fname
$ifi %system.platform% == "lnx" $set sleepcmd 1-system("sleep " sleepsec " && false")

$if  not set psprefix           $set psprefix
$set getpid  %psprefix%ps -Ao pid,%time%,%name% | awk '$3 ~ /%watch%/ {printf(\"%s,%s,%s#\",$1,$2,tolower($3))}'

$label start
$onecho > %gams.scrdir%x.scr
BEGIN {
    sleepsec = %sleep%<=0? 10:%sleep%;
    resn = split("%resseq%",resl,":");
    sign = split("%sigseq%",sigl,":");
    if (resn != sign) {
        print "--- length od resseq <> length of sigseq. Exiting...";
        exit;
    }
    if (length("%watch%") < 4) {
        print "--- not enough characters to watch: %watch% Exiting...";
        exit;
    }

    sstr = "%getpid%";
    for (;;) {
        rc = %sleepcmd%; if (rc) exit;
        ap = "";
        sstr | getline ap; close(sstr);
        "%gprefix%date | cut -c1-19" | getline sdate; close("%gprefix%date | cut -c1-19");
        printf("--- " sdate ":");
        sfmt = "--- Sending";
        for (i = np = split(ap,apl,"#")-1; i>0; i--) {
            split(apl[i],ppp,",");
            if (signal = dokill(ppp[2])) {
                sfmt = sfmt " Signal " signal " to " ppp[1] " [" ppp[3] "]"
                system("%kill% " ppp[1] " %nul%");
            }
            printf(" %=5d:%=ds", ppp[1],secs);
            delete apl[i];
        }
        print "";
        if (length(sfmt)> 12) print sfmt
    }
}

    function dokill(stime) { # stime comes in [[[dd-]hh:]mm:]ss
        di = index(stime,"-"); 
        nt = split(substr(stime,di+1),timer,":"); 
        secs = 0;
        for (j=nt; j>0; j--) secs += timer[j]*60**(nt-j) 
        if (di) secs += substr(stime,1,di-1)*86400;
        for (j=resn; j>0; j--) 
            if (secs > resl[j]) 
                return sigl[j];
        if (0 == j) return 0;
    }
$offecho

$call awk -f %gams.scrdir%x.scr
