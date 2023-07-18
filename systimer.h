/* 
 * File:   systimer.h
 * Author: bille
 *
 * Created on July 17, 2023, 7:19 PM
 */

#ifndef SYSTIMER_H
#define	SYSTIMER_H

#include <stdint.h>

#ifdef	__cplusplus
extern "C" {
#endif

    void systimer_init(void);
    uint32_t systimer_get_ms(void);

#ifdef	__cplusplus
}
#endif

#endif	/* SYSTIMER_H */

