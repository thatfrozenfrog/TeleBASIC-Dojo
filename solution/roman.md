## Solver: yoshi (C++), me (TeleBASIC)
### C++
```cpp
#include <iostream>
using namespace std;
string fnr(int n)
{
    string x[] = {"", "X", "XX", "XXX"};
    string i[] = {"", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"};
    return x[n / 10] + i[n % 10];
}
```

### TeleBASIC

```basic
x$ = "O,X,XX,XXX" : i$ = "O,I,II,III,IV,V,VI,VII,VIII,IX" : def fnr$(n) = th_re$(th_re$(x$,"\w+",int(n/10)+1) + th_re$(i$,"\w+",n mod 10 + 1), "[^O]+")
```

### Other solutions
```basic
user      their solution to 'roman'
----      -------------------------
jonbo     DEF FNr$(x) = STRING$(x/10, "X") + STRING$((x mod 10)/9, "IX") + STRING$((x mod 10 mod 9)/5, "V") + STRING$((x mod 10 mod 9 mod 5)/4, "IV") + STRING$(x mod 10 mod 9 mod 5 mod 4, "I")
underwood def fna(n)=n mod10:def fnr$(n)=string$(n/10,"x")+string$(fna(n)/5 and fna(n)/5<1.7,"v")+string$(fna(n)/5>1.7,"ix")+string$(fna(n)*(fna(n)<9)-5*(fna(n)>=4),"i")+string$(fna(n)=4,"iv")
fission   def fnr$(n)=string$(n/10,"X")+string$((n mod 10)*((n mod 10)<4),"I")+string$((n mod 10)=4,"IV")+string$(((n mod 10)>4)and((n mod 10)<9),"V"+string$((n mod 10)-5,"I"))+string$((n mod 10)=9,"IX")
happydog  FOR I = 1 TO 9: READ Numerals$(I): NEXT I: DEF fnR$(n%) = STRING$(INT(n% / 10), "x") + Numerals$(n% MOD 10): DATA "i", "ii", "iii", "iv", "v", "vi", "vii", "viii", "ix"
shibu     for i = 1 to 39:c$(i)=string$(int(i/10),"X")+string$(i mod 10<4,string$(i mod 10,"I"))+string$(i mod 10=4,"IV")+string$(i mod 10=5,"V")+string$((i mod 10)>5and(i mod 10)<9,"V"+string$((i mod 10)-5,"I"))+string$(i mod 10=9,"IX"):next i:def fnr$(n)=c$(n)
zcj       def fnR$(d)=th_re$(th_plan$,"\S+",d)
ferris    def fna(n)=n mod10:def fnr$(n)=string$(n/10,"X")+string$(fna(n)/5>=1 and fna(n)/5<1.8,"V")+string$(fna(n)/5=1.8,"IX")+string$(fna(n)*(fna(n)<9)-5*(fna(n)>=4),"I")+string$(fna(n)=4,"IV")
spenkbang def fnr$(n)=string$(n/10,"X")+string$(n mod10=9,"IX")+string$(n mod10,string$(n mod10<4,"I"))+string$((n mod10)=4,"I")+string$(n mod10>3and n mod10<9,"V")+string$(n mod10<>9,string$(n mod10-5,"I"))
```