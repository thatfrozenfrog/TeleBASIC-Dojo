### TeleBASIC
```basic
s$=left$(th_md5hex$(timer),5):a=1:b=0:for i=1 to len(s$):a=(a+asc(mid$(s$,i,1))) mod 65521:b=(b+a) mod 65521:next i:adler32$=th_sprintf$("%x",b*65536+a)
```
### C++
```cpp
int a = 1;
int b = 0;
for (int i = 0; i < 5; i++) {
    char c = th_md5hex_(th_timer_())[i];
    a = (a + static_cast<int>(c)) % 65521;
    b = (b + a) % 65521;
}
string adler32 = th_sprintf_("%x", b * 65536 + a); //to hex
```
Refer to: https://en.wikipedia.org/wiki/Adler-32 for details of the algorithm.

### Other solutions
```basic
user      their solution to 'adler32'
----      ---------------------------
jonbo     a = 1 : b = 0 : s$ = left$(th_md5hex$(timer), 5) : FOR i = 1 TO 5 : a = a + ASC(MID$(s$, i, 1)) : b = b + a : NEXT i : adler32$ = HEX$(b) + "0" + HEX$(a)
underwood s$=left$(th_md5hex$(timer),5):a=1:b=0:for i = 1 to len(s$):a=(a+asc(mid$(s$,i,1))) mod 65521: b=(b+a) mod 65521:next:adler32$=hex$(b*(2^16) or a)
happydog  n$=left$(th_md5hex$(timer),5): L=LEN(n$): a=1: b=0: FOR i=1 TO L: a=a+ASC(MID$(n$,i,1)): b=b+a: NEXT i: r=b*65536+a: h$="0123456789ABCDEF0":adler32$="": FOR i = 1 TO 7: d=((r/16)-INT(r/16))*16: r=INT(r/16): adler32$=MID$(h$,d+1,1)+adler32$: NEXT i
shibu     x$=left$(th_md5hex$(timer),5):a=1:for i=1to 5:a=a+asc(mid$(x$,i,1)):b=b+a:next:adler32$=hex$(b*2^16or a)
zcj       a=1:for i=1to5:a=a+asc(mid$(left$(th_md5hex$(timer),5),i,1)):b=b+a:next:adler32$=hex$(b*2^16or a)
nuxi      a$=left$(th_md5hex$(timer), 5):S1=1:S2=0:FOR I = 1 TO 5:S1 = (S1 + ASC(MID$(A$, I, 1))) MOD 65521:S2 = (S2 + S1) MOD 65521:NEXT I:ADLER32$ = HEX$(S2) + "0" +  HEX$(S1)' OMG AN AI WROTE THIS
gunpointg s$=left$(th_md5hex$(timer),5):adler32$=hex$(1+(asc(mid$(s$,1))*5)+(asc(mid$(s$,2))*4)+(asc(mid$(s$,3))*3)+(asc(mid$(s$,4))*2)+asc(mid$(s$,5))+4)+"0"+hex$(asc(mid$(s$,1))+asc(mid$(s$,2))+asc(mid$(s$,3))+asc(mid$(s$,4))+asc(mid$(s$,5))+1)
nxtdrtech a = 1 : b = 5 : s$ = left$(th_md5hex$(timer), 5) : FOR i = 1 to 5 : a = ( a + ASC( MID$( s$, i ) ) MOD 65521 ) : b = ( ( b + (6 - i) * ASC( MID$( s$, i ) ) ) MOD65521 ) : NEXT i : adler32$ = HEX$( b * 65536 + a )
spenkbang s$=left$(th_md5hex$(timer),5):a=1:b=0:for i=1 to 5:a=a+asc(mid$(s$,i,1)):b=b+a:next i:adler32$=hex$(b*2^16 or a)
dgrim     a=1:b=0:a$=left$(th_md5hex$(timer),5):for i=1 to len(a$):a=a+asc(mid$(a$,i)) mod 65521:b=b+a mod 65521:next i:adler32$=hex$(b)+STRING$(len(hex$(a))<4, "0") + hex$(a)
jbomadsen a=1:for i=1to5:a=a+asc(mid$(th_md5hex$(timer),i,1)):b=b+a:next:adler32$=hex$(a+(b mod65521)*4^8)
searinox  d$=left$(th_md5hex$(timer),5):a=1:b=0:for i=1 to len(d$):a=(a+asc(mid$(d$,i,1)))mod 65521:b=(b+a)mod 65521:next i:adler32$=hex$(b*2^16 or a)
egroj     cadena$=left$(th_md5hex$(timer), 5): a=1: b=0: FOR i=1 TO 5: a=a+asc(mid$(cadena$, i, 1)): b=b+a: NEXT i: adler32$=HEX$(b)+"0"+HEX$(a)
```