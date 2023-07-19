/* 
 * File:   pid.h
 * Author: bille
 *
 * Created on July 18, 2023, 1:31 AM
 */

#ifndef PID_H
#define	PID_H

#include <stdint.h>

#ifdef	__cplusplus
extern "C" {
#endif

    void pid_init(void);
    void pid_reset(void);
    void pid_set_setpoint(float s);
    float pid_get_setpoint(void);
    uint8_t pid_execute(float sensor);
    void pid_toogle_module_status(void);
    bool pid_module_is_working(void);

#ifdef	__cplusplus
}
#endif

#endif	/* PID_H */

