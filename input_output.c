#include "input_ouput.h"
#include <xc.h>
#include <stdbool.h>

void io_init(void) {
    // RA1 battery pin
    ADCON1bits.PCFG = 0b1110; // AN0 as analog  - AN1 as digital
    TRISAbits.TRISA1 = 1;

    // RB2(A) RB3(B) encoder for setpoint
    TRISBbits.RB2 = 1; //A
    TRISBbits.RB3 = 1; // B
    TRISBbits.RB4 = 1; // button

    // ADC AN0 for cautin temperature
    ADCON2bits.ACQT = 3;
    ADCON2bits.ADCS = 5;
    ADCON2bits.ADFM = 1;
    ADCON0 = 0;
    ADCON0bits.ADON = 1;

    // PWM RD0 for PID control signal
    INTCONbits.GIE = 0;
    INTCONbits.PEIE = 0;
    T1CONbits.RD16 = 1;
    TMR1 = 53536; // 1ms
    //T1CONbits.T1CKPS = 0; // preescaler /1
    PIR1bits.TMR1IF = 0;
    PIE1bits.TMR1IE = 1;
    INTCONbits.PEIE = 1;
    INTCONbits.GIE = 1;
    T1CONbits.TMR1ON = 1;

    TRISDbits.RD0 = 0; // RD0 as dig out

}

battery_status_t io_get_battery_status_from_GPIO(void) {
    return (PORTAbits.RA1 == 0) ? BATTERY_OK : BATTERY_LOW;
}

float io_get_cautin_temperature_from_ADC(void) {

    ADCON0bits.GO_DONE = 1;
    while (ADCON0bits.GO_DONE == 1);
    //ADCON0bits.ADON = 0;
    return ADRES * (400.0f / 1024.0f); // 400°c == 4.95v == 1024counts(10bit)
}

volatile uint8_t duty = 0;
volatile uint8_t counter = 0;

void io_set_cautin_duty_cycle_PWM(uint8_t d) {
    duty = d;
}

static float setpoint = 0.0;
static uint8_t prevBA = 0b11;

void io_encoder_loop(void) {
    uint8_t BA = ((PORTB & 0b00001100) >> 2);
    bool NegEdge_A = (prevBA == 0b01 && BA == 0b00);
    bool PosEdge_A = (prevBA == 0b00 && BA == 0b01);

    if (NegEdge_A)
        setpoint += SETPOINT_STEP_SIZE;
    else if (PosEdge_A)
        setpoint -= SETPOINT_STEP_SIZE;

    if (setpoint < SETPOINT_MIN)
        setpoint = SETPOINT_MIN;
    else if (setpoint > SETPOINT_MAX)
        setpoint = SETPOINT_MAX;

    prevBA = BA;
}

float io_get_setpoint_from_ENCODER(void) {
    return setpoint;
}

bool io_encoder_button_is_pressed(void) {
    return (PORTBbits.RB4 == 0);
}

void ISR_TIMER_1(void) {
    if (PIR1bits.TMR1IF) {
        PIR1bits.TMR1IF = 0;
        TMR1 = 53536; // 1ms
        
        if (counter < duty)
            LATDbits.LATD0 = 1;
        else if (counter < 100)
            LATDbits.LATD0 = 0;

        counter++;
        if (counter >= 100)
            counter = 0;
        
    }
    return;
}