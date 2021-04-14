#include <avr/io.h>

int main() {
	DDRB |= ( 1 << PB1 ); // set PB1 as output
	TCCR1A |= ( 1 << COM1A1 ); // set pin at 0, clear pin OC1A when Timer1 = OCR1A
	TCCR1A |= ( 1 << WGM11 );
	TCCR1B = ( 1 << WGM12 ) | ( 1 << WGM13 ); // mode 14 PWM FAST
	ICR1 = F_CPU / 256 - 1; // setting TOP as 1 second
	OCR1A = (F_CPU / 256 - 1) * 0.1; // setting time when led is On (10% of duty cycle)
	TCCR1B |= ( 1 << CS12 ); // start couting with prescaler 256(CS12)
	for (;;);
}
