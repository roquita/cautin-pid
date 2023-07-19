#include <stdint.h>
#include <stdbool.h>
#include "screen.h"
#include <stdio.h>
#include "software_uart.h"
#include "oled.c"
#include "systimer.h"

static module_status_t module_status = DEFAULT_MODULE_STATUS;
static battery_status_t battery_status = BATTERY_LOW;
static float temperature_setpoint = SETPOINT_MIN;
static float temperature_cautin = 0.0;

static void screen_turn_on() {
    SSD1306_Dim(false);
}

static void screen_turn_off() {
    SSD1306_Dim(true);
}

void screen_init(void) {
    SSD1306_Begin(SSD1306_VCCSTATE, SSD1306_I2C_ADDRESS); 
    //SSD1306_Display();

    /*
    I2C_Init();
    for (uint8_t i = 0; i < 0xff; i++) {
        I2C_Start();
        I2C_Tx(i);
        I2C_Stop();
        __delay_ms(250);
    }
     */

    (module_status == MODULE_WORKING) ? screen_turn_on() : screen_turn_off();
}

void screen_update(void) {
    /*
    char a[50];
    snprintf(a, sizeof (a), "%.2f,%.2f\r", temperature_setpoint, temperature_cautin);
    software_uart_print_string(a);
     */

    SSD1306_ClearDisplay();
    char txt[50];

    snprintf(txt, sizeof (txt), "Temperatura Setpoint");
    SSD1306_DrawText(0, 0, txt, 1);

    snprintf(txt, sizeof (txt), "  %.2f", temperature_setpoint);
    SSD1306_DrawText(1, 12, txt, 2);

    snprintf(txt, sizeof (txt), "Temperatura Real");
    SSD1306_DrawText(1, 30, txt, 1);

    snprintf(txt, sizeof (txt), "  %.2f", temperature_cautin);
    SSD1306_DrawText(1, 42, txt, 2);

    snprintf(txt, sizeof (txt), "%s", battery_status == BATTERY_OK ? "Bateria OK" : "Bateria baja");
    SSD1306_DrawText(1, 57, txt, 1);

    snprintf(txt, sizeof (txt), "%5lu", (uint32_t)(systimer_get_ms()/1000.0f));
    SSD1306_DrawText(90, 57, txt, 1);

    SSD1306_Display();
    
}

void screen_set_battery_status(battery_status_t status) {

    battery_status = status;
}

battery_status_t screen_get_battery_status(void) {
    return battery_status;
}

float screen_get_temperature_setpoint(void) {
    return temperature_setpoint;
}

void screen_set_temperature_setpoint(float f) {

    temperature_setpoint = f;
}

void screen_set_temperature_cautin(float f) {

    temperature_cautin = f;
}

float screen_get_temperature_cautin(void) {
    return temperature_cautin;
}

void screen_toogle_module_status(void) {

    if (module_status == MODULE_IDLE) {
        module_status = MODULE_WORKING;
        screen_turn_on();
    } else {
        module_status = MODULE_IDLE;
        screen_turn_off();
    }
}

bool screen_module_is_working(void) {
    return module_status == MODULE_WORKING;
}