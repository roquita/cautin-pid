# cautin-pid

 Control de temperatura para cautín energizado con 20VDC, variación de temperatura vía encoder, on/off vía botón y alerta de batería configurado a 17VDC.

- Modelo cautín: 907A
- MPLABX version: v6.1
- PIC18Fxxxx_DFP version: 1.4.151
- Toolchain version: XC8 v2.41
- Microcontrolador: PIC18F4550 - 48MHz
- OLED : SSD1306 - 0.96" - I2C 

Pines
 * RC6 - uart TX
 * RA0 - Entrada analoga de cautin
 * RD0 - Salida pwm a cautin
 * RA1 - Entrada digital de bateria
 * RB0 - SDA i2c oled
 * RB1 - SCL i2c oled
 * RB2 - entrada A encoder
 * RB3 - entrada B encoder
 * RB4 - boton encoder
 * RA3 - boton ON
