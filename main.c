#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

unsigned lfsr_fib(uint16_t start_value)
{
	if (start_value == 0)
		return (-1);
	uint16_t start_state = start_value;
	uint16_t lfsr = start_state;
	uint16_t bit;
	uint16_t period = 0;
	
	lfsr++;
	while (lfsr != start_state)
	{
		bit = ((lfsr >> 0) ^ (lfsr >> 2) ^ (lfsr >> 3) ^ (lfsr >> 5)) & 1u;
		lfsr = (lfsr >> 1) | (bit << 15);
		++period;
	}
	
	return period;
}

int	main(int argc, char **argv)
{
	if (argc > 1 && argv)
		printf("%u ", lfsr_fib(atoi(argv[1])));
}