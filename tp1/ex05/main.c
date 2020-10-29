#include <avr/io.h>

int main () {
	uint8_t prev_state = 0;
	uint8_t button;
	DDRB = (1 << PB3);

	for (;;) {
		button = (PIND & (1 << PD3));
		if  (prev_state && !button) {
			for (long int i = F_CPU / 200; --i;);
			PORTB ^= (1 << PB3);
		}
		prev_state = button;
	}
}
