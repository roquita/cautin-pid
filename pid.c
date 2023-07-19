
#include <stdint.h>
#include "project_defines.h"
#include <stdbool.h>

static module_status_t module_status = DEFAULT_MODULE_STATUS;
static float setpoint = SETPOINT_MIN;

static float ek1 = 0.0;
static float ek2 = 0.0;
static float uk1 = 0.0;

void pid_init(void) {

}

void pid_reset(void) {
    ek1 = 0.0;
    ek2 = 0.0;
    uk1 = 0.0;
}

void pid_set_setpoint(float s) {
    setpoint = s;
}

float pid_get_setpoint(void) {
    return setpoint;
}

uint8_t pid_execute(float sensor) {

    float ek = setpoint - sensor;
    float uk = uk1 + PID_KP * (ek - ek1) + PID_KI * (ek / 2.0f + ek1 / 2.0f) + PID_KD * (ek + 2 * ek1 + ek2);
    if (uk > (PWM_DUTY_MAX * 1.0f))
        uk = (PWM_DUTY_MAX * 1.0f);
    if (uk < (PWM_DUTY_MIN * 1.0f))
        uk = (PWM_DUTY_MIN * 1.0f);

    ek2 = ek1;
    ek1 = ek;
    uk1 = uk;

    return (uint8_t) uk;

}

void pid_toogle_module_status(void) {
    module_status = ((module_status == MODULE_IDLE) ? MODULE_WORKING : MODULE_IDLE);
}

bool pid_module_is_working(void) {
    return module_status == MODULE_WORKING;
}