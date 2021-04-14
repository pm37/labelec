#include <avr/io.h>

int main() {
	DDRB |= ( 1 << PB1 );		// set PB1 as output
	TCCR1A |= ( 1 << COM1A0 );	// set toggle mode for Timer1 for OC1A pin(PB1)
	TCCR1B |= ( 1 << WGM12 );	// set CTC mode for Timer1
	OCR1A = F_CPU / (256 * 2) - 1;	// set exact number for 1 sec frequency
	TCCR1B |= ( 1 << CS12 );		// start counting with prescaler 256
	for (;;);
}
