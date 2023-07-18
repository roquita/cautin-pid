#include <xc.h>
void ISR_TIMER_0(void);
void ISR_TIMER_1(void);

void __interrupt(low_priority) isr(void) {
    ISR_TIMER_0();
    ISR_TIMER_1();

}
