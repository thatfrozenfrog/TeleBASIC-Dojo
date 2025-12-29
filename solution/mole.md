This challenge only requires user to implement the mole calculation formula:

<pre>moles = (number of particles) / (Avogadro's number)</pre>
where Avogadro's number is approximately 6.02214076 × 10^23 mol^−1.

```basic
user      their solution to 'mole'
----      ------------------------
jonbo     DEF FNmole(a, b) = (6.02214076e23 * b)/a
underwood def fnmole(a,b)=6.02214076e23/a*b
ihaveroot DEF FNMOLE(a, b) = 6.02214076e+23 * b / a
pavelek   def fnmole(a,b)=val(th_sed$(str$(b/a*int(31.998/2*(3.76407322957685e+22))),"2e","1e"))
fission   def fnmole(a,b)=6.02214076e+23*b/a
happydog  def fnMole(AMU, Atoms) = 6.02214076e23 / AMU * Atoms
shibu     def fnmole(a,b)=6.02214076e+23/a*b
zcj       def fnMole(x,y)=6.02214076e23/x*y
devon     def fnmole(a,b)=6.02214076e23/a*b
ferris    def fnmole(a,b)=((6.02214076e23)/a)*b
sighup    def fnmole(a,b)=6.02214076e23*b/a
overlord  def fnmole(a,b)=int((6.02214076)*10^23*b/a*10^10)/10^10
ezod      def fnmole(a,b) = (6.02214076e23 * b) / a
gunpointg def fnmole(a,b) = (6.02214076e23 * b) / a
dharmy    G=6.02214076e23:def fnmole(a,b)=G*b/a
nicocoro  def fnmole(a,b)=6.02214076e+23*b/a
nxtdrtech DEF fnmole(a,n) = 6.02214076e23*n/a
spenkbang def fnmole(a,b)=602214076000000000000000*b/a
pinkfur   def fnmole(a,b)=6.02214076e23/a*b
pbernicc  def fnmole(a,b)=b*(6.02214076E23)/a
jbomadsen gadro=6.02214076e+23 :def fnmole(M,atoms)=(gadro*atoms)/M
searinox  def fnmole(p,x)=6.02214076e23*x/p
reze      DEF FNMOLE(A,B) = 6.02214076E23 * B / A
```