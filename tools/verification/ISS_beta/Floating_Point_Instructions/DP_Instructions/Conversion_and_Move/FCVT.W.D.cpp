#include<iostream>
#include<stdio.h>
#include <sstream>
#include <fenv.h>
#pragma STDC FENV_ACCESS ON

void fcvtwd(int rd, int rs1,std::string rm)
{
const int Round = fegetround();
getrounding(rm);
std::stringstream out1;
for(int i=0; i < 64 ; ++i)
out1 << Freg[rs1][i];
std::string operand(out1.str()); 
double a1 = GetFloat64(operand);
int a2 = std::rint(a1);
dec2binsg32(Rreg[rd],a2);
fesetround(Round);
}
