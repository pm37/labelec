#include <avr/io.h>

void TIMER0_COMPA_vect() __attribute__ ((signal));
void TIMER0_COMPA_vect() {
	static int i = 1;
   	int top = 10000;
	int t0_freq = 200;
	int adj = top / (t0_freq / 2);
	if (i == 1) {
		if (OCR1A <= (top - adj)) {
			OCR1A += adj;
		} else {
			OCR1A = top;
			i = 0;
		}
	} else {
		if (OCR1A >= adj) {
			OCR1A -= adj;
		} else {
			OCR1A = 0;
			i = 1;
		}
	}
}

int main() {
	DDRB |= (1 << PB1); // set PB1 as ouput
	TCCR1A |= ( 1 << COM1A1 ); // set pin at 0, clear pin OC1A when Timer1 = OCR1A
	TCCR1A |= ( 1 << WGM11 );
	TCCR1B = ( 1 << WGM12 ) | ( 1 << WGM13 ); // mode 14 Fast PWM
	ICR1 = 10000; // setting TOP as 0.005 secondes (200 Hz)
	OCR1A = 0; // setting duty cycle
	TCCR0A = (1 << WGM00) | (1 << WGM01); // mode 7 Fast PWM
	TCCR0B |= (1 << WGM02);
	OCR0A = 25; // 200 Hz
	TIMSK0 |= (1 << OCIE0A);	
	TCCR1B |= (1 << CS11); // start Timer1 with prescaler 8
	TCCR0B = (1 << CS02) | (1 << CS00); // start Timer0 with prescaler 1024
	SREG |= (1 << 7); // allow interrupts
	for (;;);
}
