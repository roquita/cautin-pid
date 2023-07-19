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
#define SETPOINT_STEP_SIZE (2.0f)//2.0f
#define SETPOINT_MAX (395.0f)//(400.0f)
#define SETPOINT_MIN (280.0f)
#define PWM_DUTY_MAX (100)
#define PWM_DUTY_MIN (0)
#define PID_KP (1.5f)  // 1.0
#define PID_KI (0.01f) //0.01
#define PID_KD (0.0f)  //0.0
#define ADC_COUNTS_TO_CELSIUS (400.0f / 1024.0f) //// 400°c == 4.95v == 1024counts(10bit)
#define DEFAULT_MODULE_STATUS (MODULE_WORKING)
#define SSD1306_I2C_ADDRESS 0x3C//0x7A //0x3C
#define SSD1306_VCCSTATE  SSD1306_SWITCHCAPVCC

    typedef enum {
        BATTERY_OK = 0,
        BATTERY_LOW = 1,
    } battery_status_t;

    typedef enum {
        MODULE_IDLE,
        MODULE_WORKING,
    } module_status_t;

#ifdef	__cplusplus
}
#endif

#endif	/* PROJECT_DEFINES_H */

