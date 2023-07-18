/* 
 * File:   project_defines.h
 * Author: bille
 *
 * Created on July 17, 2023, 1:39 AM
 */

#ifndef PROJECT_DEFINES_H
#define	PROJECT_DEFINES_H

#ifdef	__cplusplus
extern "C" {
#endif


#define _XTAL_FREQ (48UL*1000UL*1000UL)
#define SCREEN_REFRESH_PERIOD_MS (1000UL)
#define PID_REFRESH_PERIOD_MS (50)
#define SETPOINT_STEP_SIZE (10.0f)
#define SETPOINT_MAX (400.0f)
#define SETPOINT_MIN (200.0f)
    
    typedef enum {
        BATTERY_OK = 0,
        BATTERY_LOW = 1,
    } battery_status_t;

#ifdef	__cplusplus
}
#endif

#endif	/* PROJECT_DEFINES_H */

