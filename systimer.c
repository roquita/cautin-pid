

#include <stdint.h>
#include <xc.h>

volatile uint32_t _ms = 0;

void systimer_init(void) {
    INTCONbits.GIE = 0;
    T0CONbits.T0CS = 0; // Temporizador
    T0CONbits.PSA = 0; // Habilitamos Pre escaler
    T0CONbits.T0PS = 0b111; //256 Pre escaler
    T0CONbits.T08BIT = 0; // 16 bits de cuenta 
    T0CONbits.TMR0ON = 1; // Tmr0 empieza
    INTCONbits.TMR0IF = 0; //Flag del Timer 0 apagado
    INTCONbits.TMR0IE = 1; // Permitir el desbordamiento del Timer0
    INTCONbits.PEIE = 1; // Interrupciones de perifericos
    TMR0 = 63192; // 50ms 
    INTCONbits.GIE = 1;
}
//2343.75 counts = 50ms
// 16 bit = 65536

uint32_t systimer_get_ms(void) {
    di();
    uint32_t ms = _ms;
    ei();
    return ms;
}

void  ISR_TIMER_0(void) {
    if (INTCONbits.TMR0IF) {
        INTCONbits.TMR0IF = 0;
        TMR0 = 63192; // 50ms 
        _ms += 50;
    }
    return;
}