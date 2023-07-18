/* 
 * File:   software_uart.h
 * Author: bille
 *
 * Created on July 17, 2023, 12:43 AM
 */

#ifndef SOFTWARE_UART_H
#define	SOFTWARE_UART_H

#ifdef	__cplusplus
extern "C" {
#endif

void software_uart_init(void);
void software_uart_print_char(char c);
void software_uart_print_string(char* str);
void software_uart_print_fmt(const char* fmt, ...);

#ifdef	__cplusplus
}
#endif

#endif	/* SOFTWARE_UART_H */

