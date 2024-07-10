'  ooooooooo     ooooooo     {88   ooooooo        Dartmouth DTSS TeleBASIC
'   888    88o  .ooooooo    <ooo  .ooooooo        .----------------------.
'   888    888 888     888   888 888     888      |    One-Line Dojo     |
'   888    888 888     888   888 888     888      | User-made challenges |
'  o888ooo88     88ooo88     888   88ooo88        `----------------------'
'                          ,o88
'
'
'              Name: roman
'          Verified: yes
'            Author: ferris
'        Difficulty: hard
'     Var/Func Name: fnr
'           Returns: string
'       Description: write a function that receives an integer n less than or equal to 39 and returns the roman numeral representation. eg. fnr$(7)="vii"
'

' Solver: yoshi (C++), me (TeleBASIC)
' C++
#include <iostream>
using namespace std;
string fnr(int n)
{
    string x[] = {"", "X", "XX", "XXX"};
    string i[] = {"", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"};
    return x[n / 10] + i[n % 10];
}
' TeleBASIC
x$ = "O,X,XX,XXX" : i$ = "O,I,II,III,IV,V,VI,VII,VIII,IX" : def fnr$(n) = th_re$(th_re$(x$,"\w+",int(n/10)+1) + th_re$(i$,"\w+",n mod 10 + 1), "[^O]+")
