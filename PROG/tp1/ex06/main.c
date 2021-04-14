#include <avr/io.h>

int main () {
	uint8_t prev_state = 0;
	uint8_t button_state;
	uint8_t nbr = 0;
	DDRB = 0x0f;
	//DDRD &= ~(1 << PD3)

	for (;;) {
		button_state = (PIND & (1 << PD3));
		if  (!prev_state && button_state) {
			for (long int i = F_CPU / 100; --i;) {};
			PORTB = (PORTB & 0xf0) | (nbr++ & 0x0f);
		}
		prev_state = button_state;
	}
}
