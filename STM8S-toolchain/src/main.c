#include <stdbool.h>
#include <stm8s.h>
//#include <stdio.h>
#include "main.h"
#include "milis.h"
//#include "delay.h"
//#include "uart1.h"
#include "daughterboard.h"

void init(void)
{
    CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);      // taktovani MCU na 16MHz

    GPIO_Init(LED_PORT, LED_PIN, GPIO_MODE_OUT_PP_LOW_SLOW);
#if defined (BTN_PORT) || defined (BTN_PIN)
    GPIO_Init(BTN_PORT, BTN_PIN, GPIO_MODE_IN_FL_NO_IT);
#endif

    init_milis();
    //init_uart1();


    TIM2_TimeBaseInit(TIM2_PRESCALER_1024,37114-1);
    TIM2_Cmd(ENABLE); // rozběhnu TIM2 
    TIM2_ITConfig(TIM2_IT_UPDATE, ENABLE);  //povolení přerušení
    enableInterrupts();  // povolí interupt 
}


int main(void)
{
  
    uint32_t time = 0;

    init();

    while (1) {
        if(milis()- time > 333) {
            time = milis();
            REVERSE(LED1);
        }
    }
}

/*-------------------------------  Assert -----------------------------------*/
#include "__assert__.h"
