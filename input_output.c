#include "input_ouput.h"
#include <xc.h>
#include <stdbool.h>

/////////////////////////////////////////////////////////////////////////

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
    PIR1bits.TMR1IF = 0;
    PIE1bits.TMR1IE = 1;
    INTCONbits.PEIE = 1;
    INTCONbits.GIE = 1;
    T1CONbits.TMR1ON = 1;
    TRISDbits.RD0 = 0; // RD0 as dig out

    // RA3 ON/OFF BUTOON
    TRISAbits.RA3 = 1;
}
/////////////////////////////////////////////////////////////////////////

battery_status_t io_get_battery_status_from_GPIO(void) {
    return (PORTAbits.RA1 == 0) ? BATTERY_OK : BATTERY_LOW;
}
/////////////////////////////////////////////////////////////////////////

float io_get_cautin_temperature_from_ADC(void) {

    ADCON0bits.GO_DONE = 1;
    while (ADCON0bits.GO_DONE == 1);
    //ADCON0bits.ADON = 0;
    return ADRES * ADC_COUNTS_TO_CELSIUS;
}
/////////////////////////////////////////////////////////////////////////
volatile uint8_t duty = PWM_DUTY_MIN;
volatile uint8_t counter = 0;

void io_set_cautin_duty_cycle_PWM(uint8_t d) {
    duty = d;
}
// ISR TO EMULATE PWM
// T = 100ms ; duty 1% = 1ms

void ISR_TIMER_1(void) {
    if (PIR1bits.TMR1IF) {
        PIR1bits.TMR1IF = 0;
        TMR1 = 53536; // 1ms

        if (counter < duty)
            LATDbits.LATD0 = 1;
        else if (counter < PWM_DUTY_MAX)
            LATDbits.LATD0 = 0;

        counter++;
        if (counter >= PWM_DUTY_MAX)
            counter = 0;

    }
    return;
}

/////////////////////////////////////////////////////////////////////////
static float setpoint = SETPOINT_MIN;
static uint8_t prevBA = 0b11;
module_status_t module_status = DEFAULT_MODULE_STATUS;

void io_encoder_toogle_module_status(void) {

    if (module_status == MODULE_WORKING) {
        module_status = MODULE_IDLE;
        prevBA = 0b11;
    } else {
        module_status = MODULE_WORKING;
    }
}

bool io_encoder_module_is_working(void) {
    return module_status == MODULE_WORKING;
}

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

static void EEPROM_Guardar(int dir, char data) {
    EEADR = dir;
    EEDATA = data;
    EECON1bits.EEPGD = 0;
    EECON1bits.CFGS = 0;
    EECON1bits.WREN = 1;
    INTCONbits.GIE = 0;
    EECON2 = 0x55;
    EECON2 = 0x0AA;
    EECON1bits.WR = 1;
    INTCONbits.GIE = 1;
    while (!PIR2bits.EEIF);
    PIR2bits.EEIF = 0;
    EECON1bits.WREN = 0;
}

static void EEPROM_Guardar_float(int dir, float data) {
    for (int i = 0; i < 4; i++) {
        EEPROM_Guardar(dir + i, *((int8_t*) (&data) + i));
    }
}

static unsigned char EEPROM_Lectura(int dir) {
    EEADR = dir;
    EECON1bits.EEPGD = 0;
    EECON1bits.CFGS = 0;
    EECON1bits.RD = 1;
    return EEDATA;
}

static float EEPROM_Lectura_float(int dir) {
    float data;
    for (int i = 0; i < 4; i++) {
        *((int8_t*) (&data) + i) = EEPROM_Lectura(dir + i);
    }
    return (data);
}

void io_encoder_save_setpoint(void) {
    EEPROM_Guardar_float(0, setpoint);
}

void io_encoder_load_setpoint(void) {
    setpoint = EEPROM_Lectura_float(0);
}
/////////////////////////////////////////////////////////////////////////

bool io_onoff_button_is_pressed(void) {
    return (PORTAbits.RA3 == 0);
}
/////////////////////////////////////////////////////////////////////////