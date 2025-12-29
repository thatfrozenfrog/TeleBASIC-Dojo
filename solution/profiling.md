`DATA` keyword in TeleBASIC does not count towards the program size limit.
### Profiling 0x102
```basic
user      their solution to 'profiling102'
----      --------------------------------
underwood for magic = "0x102" to 12345
happydog  READ magic: DATA 0x102
zcj       read magic:data 0x102
ferris    read magic : data 0x102
nicocoro  read magic:data "0x102"
nxtdrtech READ magic DATA 0x102
pinkfur   read magic:data 0x102
jbomadsen READ MAGIC : DATA 0x102
reze      read magic : data "0x102"
```

### Profiling 101
```basic
user      their solution to 'profiling101'
----      --------------------------------
underwood for magic = 100 to 100 : next : a$ = "oo"
happydog  FOR magic = 1 TO 100: NEXT: you_want_two_bytes$ = "OK"
zcj       a=99:read magic:data 101
ferris    for magic = 1 to 100 : a=10 : next magic
nicocoro  a$="aaaaaaaaaaaaa":magic=101:if 1 then 0.00002
nxtdrtech twobytes=99 : for magic=1 to 100: next magic
pinkfur   a=12:for magic=100to0:next
jbomadsen for magic=100 to 0: next: padding=12
reze      read magic : a= 22: data 101
```