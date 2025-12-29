The command `peek(-1)` will increase by 1 each time it is called, so it can be used to generate sequential numbers.

For `niccocoro` and `devon`, `rnd(6)` generates a random number between 0 and 1, so `int(rnd(6))+1` gives a random integer between 1 and 6. They reverse engineered the random number generator seed value `15508` to get the desired sequence.

For `ferris`, they use the difference in time from when the program started to when `fngen` is called to compute a number between 1 and 480.

```basic
user      their solution to 'gen'
----      -----------------------
underwood def fngen(x)=peek(-1)
pavelek   def fngen(x)=peek(-1)
fission   def fngen(x)=peek(-1)
happydog  DEF fngen(x) = testnr
shibu     t=th_time:def fngen(n)=int(400*(th_time-t))+1
zcj       def fnGen(x)=ret+1
devon     randomize 6:def fngen(x)=instr(" 013246",int(rnd(9)))
ferris    tn=TH_TIME : def fngen(n)=CINT(val(th_sed$(str$(CINT((TH_TIME-tn))),"0","1"))+(TH_TIME-tn)*480)
dharmy    def fngen(x)=peek(-1)
nicocoro  randomize 15508:def fngen(x)=int(rnd(6))+1
nxtdrtech DEF fngen(x)=PEEK(-1)
spenkbang randomize 0:for i=1 to 99:w(rnd)=i:next i:randomize 0:def fngen(x)=w(rnd)
pinkfur   a = rnd(-1) : for i = 1 to 1000 : set(rnd(0)) = i : next i : a = rnd(-1) : def fngen(x) = set(rnd(0))
jbomadsen def fngen(x)=peek(-1)
searinox  t=th_time:def fnGen(x)=1+nint((th_time-t)*420)
reze      def fngen(x) = peek(-1)
tehmadcow def fngen(x) = peek(-1)
```