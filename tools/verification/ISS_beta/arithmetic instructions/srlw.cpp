//Program for the SRLW opcode
//SRLW is a logical right shift (zeros are shifted into the upper bits)
//Works only on lower 32 bits
#include <stdio.h>

void srlw(int rd, int rs1, int rs2)
{
	int shift=0, temp[64];
	int i=0;
	
	for(i=0; i<5; i++)
	{
		shift += pow(2,i)*Rreg[rs2][63-i];
	}

	for (i = 0; i < shift; ++i)
	{
		temp[32+i] = 0;
	}
	i = 32;
	std::cout << "SRLW TAKEN\n";
	while(i < 64-shift)
	{
		temp[i+shift] = Rreg[rs1][i];
		i++;
	}

	for(i = 0; i < 32; i++)
	{
		temp[i] = temp[32];
	}
	if(rd!=0)
	{
	for( i = 0; i < 64; ++i)
	    Rreg[rd][i] = temp[i];
	}
}
