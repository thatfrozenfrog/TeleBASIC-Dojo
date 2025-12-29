Trials and errors to get the 'corporate' challenge working.
```basic
user      their solution to 'corporate'
----      -----------------------------
jonbo     DEF FNs$(n$,a$,b$) = STRING$(n$ = a$, b$) OR STRING$(n$ = b$, a$) : DEF FNimp(n) = -VAL(TH_REV$(STR$(n))) : DEF FNimp$(n$) = FNs$(n$, "Up", "Down") + FNs$(n$, "Left", "Right") + FNs$(n$, "Good", "Bad") + FNs$(n$, "Above", "Below")
underwood o$("above")="Below":o$("below")="Above":o$("up")="Down":o$("down")="Up":o$("left")="Right":o$("right")="Left":def fnimp(i)=val(right$(str$(i),1)+left$(str$(i),1))*-1:def fnimp$(s$)=o$(s$)
pavelek   def fnimp(n)=-n+(n+val(th_rev$(str$(n))))*(peek(-1)>1):def fno$(n$)=th_sed$(th_re$("updown abovebelow leftright","[^ ]*"+n$+"[^ ]*"),n$):def fnl$(n,m$)=string$(n<2,m$)+string$(n>1,ups$(m$)):def fnimp$(n$)=fnl$(peek(-1),left$(fno$(n$),1))+mid$(fno$(n$),2)
fission   def fnimp(n)=(pos(str$(n),"9")=0)*-n+(pos(str$(n),"9")<>0)*val(th_rev$(str$(n))):def fnimp$(n$)=string$(n$="above","Below")+string$(n$="left","Right")+string$(n$="up","Down")
happydog  Op$(ASC("u"))="Down": Op$(ASC("l"))="Right": Op$(ASC("a"))="Below": DEF fnImp$(N$) = Op$(ASC(LEFT$(N$, 1))): DEF fnImp(N) = INT(STRING$(N MOD 10 <> 9, STR$(0 - N)) + STRING$(N MOD 10 = 9, "9" + LEFT$(STR$(N), 1)))
shibu     def fnimp(n)=-91:def fnImp$(n)="Right"
zcj       def fnImp(n)=-val(mid$(n,2,1)+mid$(n,1,1)):def fnImp$(n$)=string$(n$="above","Below")+string$(n$="up","Down")+string$(n$="left","Right")
nuxi      def fnimp(n)=-val(MID$(STR$(n),int(rnd(0)*2+1),1 )+MID$(STR$(n),int(rnd(0)*2+1),1 )):def fnimp$(N$)=TH_SED$(TH_SED$(TH_SED$(N$,"above","Below"),"left","Right"),"up","Down")
devon     def fnImp(x)=-(10*(x mod10)+int(x/10)):s$("down")="up":s$("up")="Down":s$("left")="Right":s$("right")="left":s$("above")="Below":s$("Below")="above":def fnImp$(x$)=s$(x$)
ferris    def fnImp(N)=-val(th_re$(str$(N),"\d$")+th_re$(str$(N), "^\d")) : def fnImp$(N$)=th_sed$(th_sed$(th_sed$(N$,"up","down"),"left","Right"),"above","Below")
sighup    r$(97)="Below":r$(108)="Right":r$(117)="Down":def fnimp(n)=(10*(n mod10)+int(n/10))*(n mod2)-n*(n mod2=0):def fnimp$(n$)=r$(asc(n$))
whack23   o$("above")="Below":o$("left")="Right":o$("up")="Down":def fnImp(n)=-val(th_rev$(str$(n))):def fnImp$(n$)=o$(n$)
ezod      i% = 0: def fnImp(n) = -(int(n/10)*(1+i%*9)+(n mod 10)*(1+(1-i%)*9)): def fnImp$(n$) = th_sed$(th_sed$(th_sed$(n$, "up", "Down"), "lef", "Righ"), "above", "Below")
dharmy    X$("left")="Right":X$("right")="Left":X$("up")="Down":X$("down")="Up":X$("above")="Below":X$("below")="Above":def fnImp(n)=VAL(STRING$(n mod 2=0,-1*n)+STRING$(n mod 2=1,TH_REV$(STR$(n)))):def fnImp$(N$)=X$(N$):
nicocoro  def fnt(n)=n mod 10=9:def fnimp(n)=fnt(n)*val(th_rev$(str$(n)))+(not fnt(n))*-n:def fnimp$(n$)=string$(n$="left","Right")+string$(n$="above","Below")+string$(n$="up","Down")
nxtdrtech DEF fnImp(n) = -VAL(TH_REV$(STR$(n))) : DEF fnImp$(n$) = TH_SED$( TH_SED$( TH_SED$( TH_SED$( TH_SED$( n$, "above", "below"), "good", "bad"), "high", "low"), "up", "down" ), "left", "Right")
indygo    def fnImp(f)=-1*VAL(TH_REV$(STR$(f))):def fnImp$(N$)=STRING$(INSTR("above",n$)=0,"Below")+STRING$(INSTR("left", n$)=0,"Right")+STRING$(INSTR("up", n$)=0,"Down")
spenkbang def fnimp(N)=((peek(-1)=1)*-1*N)or((peek(-1)>1)*val(th_rev$(str$(n)))): o$("up")="Down":o$("left")="Right":o$("above")="Below":def fnimp$(n$)=o$(n$)
pinkfur   def fnImp(n) = -int(th_rev$(str$(n))) : m$("down") = "Up" : m$("up") = "Down" : m$("left") = "Right" : m$("right") = "Left" : def fnImp$(n$) = m$(n$)
jbomadsen def fno$(i$,a$,b$)=th_sed$(th_sed$(i$,"^"+a$,"x"+b$,"i"),"^"+b$,"x"+a$,"i"):def fnImp(x$)=-val(x$)*(peek(-1)<2)+(peek(-1)>2)*val(th_rev$(x$)) : def fnImp$(y$)=th_sed$(fno$(fno$(fno$(y$,"Right","Left"),"Up","Down"),"Below","Above"),"^x","")
searinox  def fnIf$(c$,x$,y$)=mid$(y$,1,(c$=x$)*len(y$)):def fnImp(n)=(n*-1)*(t=timer)+(val(mid$(str$(n),0,1)+mid$(str$(n),-1,1)))*(t<>timer):def fnImp$(s$)=fnIf$(s$,"above","Below")+fnIf$(s$,"left","Right")+fnIf$(s$,"up","Down"):t=timer
reze      a$("a")="Below":a$("u")="Down":a$("l")="Right":b(1)=-13:b(2)=-96:def fnImp(n)=b(peek(-1)):def fnImp$(a$)=a$(left$(a$,1))
```
