#include <xc.h>
void ISR_TIMER_0(void);
void ISR_TIMER_1(void);

void __interrupt(low_priority) isr(void) {
    ISR_TIMER_0();
    ISR_TIMER_1();

}


/*
             char txt[50];
            snprintf(txt, sizeof (txt), "%.2f,%.2f\r", pid_get_setpoint(), cautin_temperature);
            software_uart_print_string(txt);
 
 */