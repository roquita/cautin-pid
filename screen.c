
#include <stdbool.h>
#include "screen.h"
#include <stdio.h>
#include "software_uart.h"

static battery_status_t battery_status = false;
static float temperature_setpoint = 0.0;
static float temperature_cautin = 0.0;

void screen_init(void) {
}

void screen_update(void) {
    char txt[50];
    snprintf(txt, sizeof (txt), "setpoint = %f || cautin T = %f\n\r", temperature_setpoint, temperature_cautin);
    software_uart_print_string(txt);
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