/* 
 * File:   screen.h
 * Author: bille
 *
 * Created on July 16, 2023, 11:04 PM
 */

#ifndef SCREEN_H
#define	SCREEN_H

#include <stdbool.h>
#include "project_defines.h"



#ifdef	__cplusplus
extern "C" {
#endif
    void screen_init(void);
    void screen_update(void);
    void screen_set_battery_status(battery_status_t status);
    battery_status_t screen_get_battery_status(void);
    float screen_get_temperature_setpoint(void);
    void screen_set_temperature_setpoint(float f);
    void screen_set_temperature_cautin(float f);
    float screen_get_temperature_cautin(void);

#ifdef	__cplusplus
}
#endif

#endif	/* SCREEN_H */

