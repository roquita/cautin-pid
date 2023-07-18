
#include "software_uart.h"
#include <stdint.h>
#include <xc.h>
#include "project_defines.h"
#include <stdarg.h>
#include <stdio.h>
#include <string.h>

const uint8_t bit_lenght = 8;
const uint8_t bittime_us = 104;

#define init_pin() {PORTCbits.RC6=0;LATCbits.LATC6=0;TRISCbits.TRISC6=0;}
#define set_low() (PORTCbits.RC6=0)
#define set_high() (LATCbits.LATC6=1)
#define wait_bit_time() (__delay_us(bittime_us))

void software_uart_init(void) {
    init_pin();
    set_high();
}

void software_uart_print_char(char c) {
    uint8_t bits = bit_lenght;

    // start bit
    set_low();
    wait_bit_time();

    // data-bits
    do {
        if (c & 1) {
            set_high();
        } else {
            set_low();
        }
        wait_bit_time();
        c >>= 1;
    } while (--bits);

    // no parity-bit
    /*
    set_low();
    wait_bit_time();
     */

    // stop-bit(s)
    set_high();
    wait_bit_time();
}

void software_uart_print_string(char* str) {
    while (*str != 0) {
        software_uart_print_char(*str);
        str++;
    }
}
void software_uart_print_fmt(const char* fmt, ...){
	char buffer[100];
	
	va_list args;
	va_start(args,fmt);
	vsprintf(buffer, fmt, args);
	software_uart_print_string(buffer);
	va_end(args);
}