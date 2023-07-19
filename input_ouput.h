/* 
 * File:   input_ouput.h
 * Author: bille
 *
 * Created on July 17, 2023, 11:24 PM
 */

#ifndef INPUT_OUPUT_H
#define	INPUT_OUPUT_H

#include "project_defines.h"
#include <stdbool.h>
#include <stdint.h>

#ifdef	__cplusplus
extern "C" {
#endif

    void io_init(void);
    battery_status_t io_get_battery_status_from_GPIO(void);
    float io_get_cautin_temperature_from_ADC(void);
    void io_set_cautin_duty_cycle_PWM(uint8_t duty);
    void io_encoder_toogle_module_status(void);
    bool io_encoder_module_is_working(void);
    void io_encoder_loop(void);
    float io_get_setpoint_from_ENCODER(void);
    bool io_encoder_button_is_pressed(void);
    void io_encoder_save_setpoint(void);
    void io_encoder_load_setpoint(void);
    bool io_onoff_button_is_pressed(void);

#ifdef	__cplusplus
}
#endif

#endif	/* INPUT_OUPUT_H */

