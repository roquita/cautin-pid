
// PIC18F4550 Configuration Bit Settings

// 'C' source line config statements


// CONFIG1L
#pragma config PLLDIV = 5       // PLL Prescaler Selection bits (Divide by 5 (20 MHz oscillator input))
#pragma config CPUDIV = OSC1_PLL2// System Clock Postscaler Selection bits ([Primary Oscillator Src: /1][96 MHz PLL Src: /2])
#pragma config USBDIV = 2       // USB Clock Selection bit (used in Full-Speed USB mode only; UCFG:FSEN = 1) (USB clock source comes from the 96 MHz PLL divided by 2)

// CONFIG1H
#pragma config FOSC = HSPLL_HS  // Oscillator Selection bits (HS oscillator, PLL enabled (HSPLL))
#pragma config FCMEN = OFF      // Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor disabled)
#pragma config IESO = OFF       // Internal/External Oscillator Switchover bit (Oscillator Switchover mode disabled)

// CONFIG2L
#pragma config PWRT = ON        // Power-up Timer Enable bit (PWRT enabled)
#pragma config BOR = OFF        // Brown-out Reset Enable bits (Brown-out Reset disabled in hardware and software)
#pragma config BORV = 3         // Brown-out Reset Voltage bits (Minimum setting 2.05V)
#pragma config VREGEN = OFF     // USB Voltage Regulator Enable bit (USB voltage regulator disabled)

// CONFIG2H
#pragma config WDT = OFF        // Watchdog Timer Enable bit (WDT disabled (control is placed on the SWDTEN bit))
#pragma config WDTPS = 32768    // Watchdog Timer Postscale Select bits (1:32768)

// CONFIG3H
#pragma config CCP2MX = ON      // CCP2 MUX bit (CCP2 input/output is multiplexed with RC1)
#pragma config PBADEN = OFF      // PORTB A/D Enable bit (PORTB<4:0> pins are configured as analog input channels on Reset)
#pragma config LPT1OSC = OFF    // Low-Power Timer 1 Oscillator Enable bit (Timer1 configured for higher power operation)
#pragma config MCLRE = ON       // MCLR Pin Enable bit (MCLR pin enabled; RE3 input pin disabled)

// CONFIG4L
#pragma config STVREN = ON      // Stack Full/Underflow Reset Enable bit (Stack full/underflow will cause Reset)
#pragma config LVP = OFF         // Single-Supply ICSP Enable bit (Single-Supply ICSP enabled)
#pragma config ICPRT = OFF      // Dedicated In-Circuit Debug/Programming Port (ICPORT) Enable bit (ICPORT disabled)
#pragma config XINST = OFF      // Extended Instruction Set Enable bit (Instruction set extension and Indexed Addressing mode disabled (Legacy mode))

// CONFIG5L
#pragma config CP0 = OFF        // Code Protection bit (Block 0 (000800-001FFFh) is not code-protected)
#pragma config CP1 = OFF        // Code Protection bit (Block 1 (002000-003FFFh) is not code-protected)
#pragma config CP2 = OFF        // Code Protection bit (Block 2 (004000-005FFFh) is not code-protected)
#pragma config CP3 = OFF        // Code Protection bit (Block 3 (006000-007FFFh) is not code-protected)

// CONFIG5H
#pragma config CPB = OFF        // Boot Block Code Protection bit (Boot block (000000-0007FFh) is not code-protected)
#pragma config CPD = OFF        // Data EEPROM Code Protection bit (Data EEPROM is not code-protected)

// CONFIG6L
#pragma config WRT0 = OFF       // Write Protection bit (Block 0 (000800-001FFFh) is not write-protected)
#pragma config WRT1 = OFF       // Write Protection bit (Block 1 (002000-003FFFh) is not write-protected)
#pragma config WRT2 = OFF       // Write Protection bit (Block 2 (004000-005FFFh) is not write-protected)
#pragma config WRT3 = OFF       // Write Protection bit (Block 3 (006000-007FFFh) is not write-protected)

// CONFIG6H
#pragma config WRTC = OFF       // Configuration Register Write Protection bit (Configuration registers (300000-3000FFh) are not write-protected)
#pragma config WRTB = OFF       // Boot Block Write Protection bit (Boot block (000000-0007FFh) is not write-protected)
#pragma config WRTD = OFF       // Data EEPROM Write Protection bit (Data EEPROM is not write-protected)

// CONFIG7L
#pragma config EBTR0 = OFF      // Table Read Protection bit (Block 0 (000800-001FFFh) is not protected from table reads executed in other blocks)
#pragma config EBTR1 = OFF      // Table Read Protection bit (Block 1 (002000-003FFFh) is not protected from table reads executed in other blocks)
#pragma config EBTR2 = OFF      // Table Read Protection bit (Block 2 (004000-005FFFh) is not protected from table reads executed in other blocks)
#pragma config EBTR3 = OFF      // Table Read Protection bit (Block 3 (006000-007FFFh) is not protected from table reads executed in other blocks)

// CONFIG7H
#pragma config EBTRB = OFF      // Boot Block Table Read Protection bit (Boot block (000000-0007FFh) is not protected from table reads executed in other blocks)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>
#include "screen.h"
#include "software_uart.h"
#include "project_defines.h"
#include <stdio.h>
#include "systimer.h"
#include "input_ouput.h"
#include "pid.h"

/*
 PINES 
 * RC6 - uart TX
 * RA0 - Entrada analoga de cautin
 * RD0 - Salida pwm a cautin
 * RA1 - Entrada digital de bateria
 * RB0 - SDA i2c oled
 * RB1 - SCL i2c oled
 * RB2 - entrada A encoder
 * RB3 - entrada B encoder
 * RB4 - boton encoder
 * RA3 - boton ON
 */

void main(void) {

    io_init();
    software_uart_init();
    screen_init();
    systimer_init();
    pid_init();

    uint32_t screen_countMS = 0;
    uint32_t pid_countMS = 0;

    io_encoder_load_setpoint();
    pid_set_setpoint(io_get_setpoint_from_ENCODER());
    screen_set_temperature_setpoint(io_get_setpoint_from_ENCODER());

    while (1) {

        if (io_encoder_module_is_working()) {
            io_encoder_loop();
        }

        if (io_encoder_button_is_pressed() && pid_module_is_working()) {
            pid_set_setpoint(io_get_setpoint_from_ENCODER());
            screen_set_temperature_setpoint(io_get_setpoint_from_ENCODER());
            io_encoder_save_setpoint();
        }

        if (io_onoff_button_is_pressed()) {
            __delay_ms(500);
            pid_toogle_module_status();
            screen_toogle_module_status();
            io_encoder_toogle_module_status();
        }

        if (systimer_get_ms() - screen_countMS >= SCREEN_REFRESH_PERIOD_MS) {
            screen_countMS = systimer_get_ms();

            // TODO EVERY 1s
            if (screen_module_is_working()) {
                screen_set_battery_status(io_get_battery_status_from_GPIO());
                screen_set_temperature_setpoint(io_get_setpoint_from_ENCODER());
                screen_set_temperature_cautin(io_get_cautin_temperature_from_ADC());
                screen_update();
            }
        }

        if (systimer_get_ms() - pid_countMS >= PID_REFRESH_PERIOD_MS) {
            pid_countMS = systimer_get_ms();

            // TODO EVERY 50ms
            if (pid_module_is_working()) {
                float cautin_temperature = io_get_cautin_temperature_from_ADC();
                uint8_t duty = pid_execute(cautin_temperature);
                io_set_cautin_duty_cycle_PWM(duty);
            } else {
                pid_reset();
                io_set_cautin_duty_cycle_PWM(0);
            }
        }

    }
    return;
}

