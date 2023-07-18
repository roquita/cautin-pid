
#include <stdint.h>
#include "project_defines.h"

static float setpoint = SETPOINT_MIN;
static float kp = 1.0;
static float ki = 0.005;//0.01
static float kd = 0.0;

static float ek1 = 0.0;
static float ek2 = 0.0;
static float uk1 = 0.0;

void pid_init(void) {

}

void pid_set_setpoint(float s) {
    setpoint = s;
}

float pid_get_setpoint(void) {
    return setpoint;
}

uint8_t pid_execute(float sensor) {
    float ek = setpoint - sensor;
    float uk = uk1 + kp * (ek - ek1) + ki * (ek / 2.0f + ek1 / 2.0f) + kd * (ek + 2 * ek1 + ek2);
    if (uk > 100.0)
        uk = 100.0;
    if (uk < 0.0)
        uk = 0.0;

    ek2 = ek1;
    ek1 = ek;
    uk1 = uk;

    return (uint8_t) uk;

    //uint8_t duty = (uint8_t) (setpoint * (100.0f / 400.0f));
    //return duty;
}