#include <avr/io.h>


__attribute__ ((signal)) void TIMER0_COMPA_vect() {
	static uint8_t i = 0;
	if (i < 200) {
		OCR1A = (i <= 100) ? (20 * i) : (20 * (200 - i));
	}
	else {
		i = 0;
		OCR1A = 0;
	}
	i++;
}

int main() {
	DDRB |= (1 << PB1); // set PB1 as ouput
	
	TCCR1A |= ( 1 << COM1A1 ); // set pin OC1A high when Timer1 = 0, clear pin OC1A when Timer1 = OCR1A
	TCCR1A |= ( 1 << WGM11 );
	TCCR1B = ( 1 << WGM12 ) | ( 1 << WGM13 ); // mode 14 Fast PWM
	ICR1 = 2000; // setting TOP as 0.001 secondes (1000 Hz)
	OCR1A = 0; // setting duty cycle
	TCCR1B |= (1 << CS11); // start Timer1 with prescaler 8
	
	TCCR0A |= (1 << WGM00) | (1 << WGM01); // mode 7 Fast PWM
	TCCR0B |= (1 << WGM02);
	OCR0A = 78; // 200 Hz
	TIMSK0 |= (1 << OCIE0A);
	TCCR0B |= (1 << CS02) | (1 << CS00); // start Timer0 with prescaler 1024
	
	SREG |= (1 << 7); // allow interrupts
	
	for (;;);
}
