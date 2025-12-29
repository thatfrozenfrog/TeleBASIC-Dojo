The original problem asked the user to calculate and compare the ASCII sum of two md5 hashes. <br>
However, the challenge author later updated the problem to input the two strings' ASCII sum value directly, so there are two valid approaches to solve this challenge. <br> <br>
My solution:
```basic
DEF FNF(S$,I)=ASC(MID$(S$,I,1)):DEF FNE(S$,I)=FNF(S$,I)+FNF(S$,I+8)+FNF(S$,I+16)+FNF(S$,I+24):DEF FNV(A$)=FNE(A$,1)+FNE(A$,2)+FNE(A$,3)+FNE(A$,4)+FNE(A$,5)+FNE(A$,6)+FNE(A$,7)+FNE(A$,8):DEF FNSWORTH$(A$,B$)=CHR$((FNV(A$)<FNV(B$))+65)
```
<br>

```basic
user      their solution to 'sworth'
----      --------------------------
underwood def fnsworth$(a,b)=mid$("ab",a>b,1)
pavelek   def fnsworth$(a$,b$)=chr$(97+(hex$(a$)<hex$(b$)))
fission   def fnsworth$(a$,b$)=left$(string$(val(a$)>val(b$),"a")+"b",1)
zcj       def fnSWorth$(a,b)=chr$(65+(a<b))
ferris    def fnsworth$(a$,b$)=STRING$(SGN(int(a$)-int(b$)),"A")+STRING$(SGN(int(b$)-int(a$)),"B")
dharmy    def fna(x$,i)=ASC(MID$(x$,i,1))+ASC(MID$(x$,i+9,1))+ASC(MID$(x$,i+18,1)):def fnb(y$)=fna(y$,1)+fna(y$,2)+fna(y$,3)+fna(y$,4)+fna(y$,5)+fna(y$,6)+fna(y$,7)+fna(y$,8)+fna(y$,9):def fnsworth$(a$,b$)=STRING$(fnb(a$)>=fnb(b$),"A")+STRING$(fnb(a$)<fnb(b$),"B")
nicocoro  def fnsworth$(a$,b$)=mid$("AB",(val(b$)>val(a$))+1,1)
nxtdrtech DEF fnsworth$(a$,b$) = MID$("AB", 1 + (a$ <  b$), 1)
pinkfur   def fnsworth$(a$,b$)=chr$(65+(a$<b$))
jbomadsen def fna(x$,i)=asc(mid$(x$,i,1))+asc(right$(x$,i)):def fnb(z$)=fna(z$,1)+fna(z$,2)+fna(z$,3)+fna(z$,4):def fnm(z$)=fnb(mid$(z$,1,8))+fnb(mid$(z$,9,8))+fnb(mid$(z$,17,8))+fnb(mid$(z$,25,8)):def fnsworth$(a$,b$)=left$(string$(fnm(a$)>fnm(b$),"A")+"B",1)
gte       def fnsworth$(a$,b$)=chr$(97+ (val(a$) < val(b$)))
reze      def fnsworth$(a$,b$) = chr$((val(a$)<val(b$))+65)
```