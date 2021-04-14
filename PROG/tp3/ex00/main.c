#include <avr/io.h>


 __attribute__ ((signal)) void INT1_vect () {
	PORTB |= (1 << PB3);
}

int main() {
	DDRB |= (1 << PB3); // set PB3 as output
	SREG |= (1 << SREG_I ); // allow interrupts
	EIMSK |= (1 << INT1); // allow interrupt for INT1
	for(;;);
}
