
#include <stdbool.h>
#include "screen.h"
#include <stdio.h>
#include "software_uart.h"

static module_status_t module_status = DEFAULT_MODULE_STATUS;
static battery_status_t battery_status = BATTERY_LOW;
static float temperature_setpoint = SETPOINT_MIN;
static float temperature_cautin = 0.0;

static void screen_turn_on() {
}

static void screen_turn_off() {
}

void screen_init(void) {


    (module_status == MODULE_WORKING) ? screen_turn_on() : screen_turn_off();
}

void screen_update(void) {

    char txt[50];
    snprintf(txt, sizeof (txt), "%.2f,%.2f\r", temperature_setpoint, temperature_cautin);
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