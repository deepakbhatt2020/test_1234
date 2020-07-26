/**************************************************
 *
 * Copyright 2012 IAR Systems. All rights reserved.
 *
 * $Revision: 488 $
 *
 **************************************************/

;
; The modules in this file are included in the libraries, and may be replaced
; by any user-defined modules that define the PUBLIC symbol _program_start or
; a user defined start symbol.
; To override the cstartup defined in the library, simply add your modified
; version to the workbench project.
;
; The vector table is normally located at address 0.
; When debugging in RAM, it can be located in RAM, aligned to at least 2^6.
; The name "__vector_table" has special meaning for C-SPY:
; it is where the SP start value is found, and the NVIC vector
; table register (VTOR) is initialized to this address if != 0.
;
; Cortex-M version
;

        MODULE  ?cstartup

        ;; Forward declaration of sections.
        SECTION CSTACK:DATA:NOROOT(3)

        SECTION .intvec:CODE:ROOT(2)

        EXTERN  __iar_program_start
        PUBLIC  __vector_table

        DATA
__vector_table
        DCD     sfe(CSTACK)                    ; Top of Stack
        DCD     __iar_program_start            ; Reset Handler
        DCD     NMI_Handler                    ; NMI Handler
        DCD     HardFault_Handler              ; Hard Fault Handler
        DCD     MemManage_Handler              ; Reserved
        DCD     BusFault_Handler               ; Reserved
        DCD     UsageFault_Handler             ; Reserved
        DCD     0                              ; Reserved
        DCD     0                              ; Reserved
        DCD     0                              ; Reserved
        DCD     0                              ; Reserved
        DCD     SVC_Handler                    ; SVCall Handler
        DCD     DebugMon_Handler               ; Reserved
        DCD     0                              ; Reserved
        DCD     PendSV_Handler                 ; PendSV Handler
        DCD     SysTick_Handler                ; SysTick Handler
        ; External Interrupts
        DCD     DMA0_IRQHandler                ;DMA channel 0 transfer complete
        DCD     DMA1_IRQHandler                ;DMA channel 1 transfer complete
        DCD     DMA2_IRQHandler                ;DMA channel 2 transfer complete
        DCD     DMA3_IRQHandler                ;DMA channel 3 transfer complete
        DCD     DMA4_IRQHandler                ;DMA channel 4 transfer complete
        DCD     DMA5_IRQHandler                ;DMA channel 5 transfer complete
        DCD     DMA6_IRQHandler                ;DMA channel 6 transfer complete
        DCD     DMA7_IRQHandler                ;DMA channel 7 transfer complete
        DCD     DMA8_IRQHandler                ;DMA channel 8 transfer complete
        DCD     DMA9_IRQHandler                ;DMA channel 9 transfer complete
        DCD     DMA10_IRQHandler               ;DMA channel 10 transfer complete
        DCD     DMA11_IRQHandler               ;DMA channel 11 transfer complete
        DCD     DMA12_IRQHandler               ;DMA channel 12 transfer complete
        DCD     DMA13_IRQHandler               ;DMA channel 13 transfer complete
        DCD     DMA14_IRQHandler               ;DMA channel 14 transfer complete
        DCD     DMA15_IRQHandler               ;DMA channel 15 transfer complete
        DCD     DMA_Error_IRQHandler           ;DMA error interrupt channels 0-15
        DCD     MCM_IRQHandler                 ;FPU sources
        DCD     FTFC_IRQHandler                ;FTFC command complete
        DCD     Read_Collision_IRQHandler      ;FTFC read collision
        DCD     LVD_LVW_IRQHandler             ;PMC controller low-voltage detect, low-voltage warning
        DCD     FTFC_Fault_IRQHandler          ;FTFC Double bit fault detect
        DCD     WDOG_EWM_IRQHandler            ;Single interrupt vector for WDOG and EWM
        DCD     RCM_IRQHandler                 ;RCM Asynchronous Interrupt
        DCD     LPI2C0_Master_IRQHandler       ;Inter-integrated circuit 0
        DCD     LPI2C0_Slave_IRQHandler        ;Inter-integrated circuit 0
        DCD     LPSPI0_IRQHandler              ;Serial peripheral Interface 0
        DCD     LPSPI1_IRQHandler              ;Serial peripheral Interface 1
        DCD     LPSPI2_IRQHandler              ;Serial peripheral Interface 2
        DCD     Default_Handler                ;Reserved interrupt
        DCD     Default_Handler                ;Reserved interrupt
        DCD     LPUART0_RxTx_IRQHandler        ;LPUART0 receive/transmit interrupt
        DCD     LPUART0_ERR_IRQHandler         ;LPUART0 Receive overrun, parity error, framing error or noise error
        DCD     LPUART1_RxTx_IRQHandler        ;LPUART1 receive/transmit interrupt
        DCD     LPUART1_ERR_IRQHandler         ;LPUART1 Receive overrun, parity error, framing error or noise error
        DCD     LPUART2_RxTx_IRQHandler        ;LPUART2 receive/transmit interrupt
        DCD     LPUART2_ERR_IRQHandler         ;LPUART2 Receive overrun, parity error, framing error or noise error
        DCD     Default_Handler                ;Reserved interrupt
        DCD     Default_Handler                ;Reserved interrupt
        DCD     ADC0_IRQHandler                ;ADC0 conversion complete interrupt
        DCD     ADC1_IRQHandler                ;ADC1 conversion complete interrupt
        DCD     CMP0_IRQHandler                ;CMP0 interrupt
        DCD     Default_Handler                ;Reserved interrupt
        DCD     Default_Handler                ;Reserved interrupt
        DCD     ERM_single_fault_IRQHandler    ;ERM single fault
        DCD     ERM_double_fault_IRQHandler    ;ERM double fault
        DCD     RTC_IRQHandler                 ;RTC alarm interrupt
        DCD     RTC_Seconds_IRQHandler         ;RTC seconds interrupt overflow
        DCD     LPIT0_Ch0_IRQHandler           ;LPIT0 channel 0 overflow
        DCD     LPIT0_Ch1_IRQHandler           ;LPIT0 channel 1 overflow
        DCD     LPIT0_Ch2_IRQHandler           ;LPIT0 channel 2 overflow
        DCD     LPIT0_Ch3_IRQHandler           ;LPIT0 channel 3 overflow
        DCD     PDB0_IRQHandler                ;Programmable delay block
        DCD     Default_Handler                ;Reserved interrupt
        DCD     Default_Handler                ;Reserved interrupt
        DCD     Default_Handler                ;Reserved interrupt
        DCD     Default_Handler                ;Reserved interrupt
        DCD     SCG_IRQHandler                 ;System clock generator
        DCD     LPTMR0_IRQHandler              ;Single interrupt vector for  Low Power Timer 0
        DCD     PORTA_IRQHandler               ;Port A pin detect interrupt
        DCD     PORTB_IRQHandler               ;Port B pin detect interrupt
        DCD     PORTC_IRQHandler               ;Port C pin detect interrupt
        DCD     PORTD_IRQHandler               ;Port D pin detect interrupt
        DCD     PORTE_IRQHandler               ;Port E pin detect interrupt
        DCD     SWI_IRQHandler                 ;Software interrupt
        DCD     Default_Handler                ;Reserved interrupt
        DCD     Default_Handler                ;Reserved interrupt
        DCD     Default_Handler                ;Reserved interrupt
        DCD     PDB1_IRQHandler                ;Programmable delay block
        DCD     FLEXIO_IRQHandler              ;FLEXIO
        DCD     Default_Handler                ;Reserved interrupt
        DCD     Default_Handler                ;Reserved interrupt
        DCD     Default_Handler                ;Reserved interrupt
        DCD     Default_Handler                ;Reserved interrupt
        DCD     Default_Handler                ;Reserved interrupt
        DCD     Default_Handler                ;Reserved interrupt
        DCD     Default_Handler                ;Reserved interrupt
        DCD     Default_Handler                ;Reserved interrupt
        DCD     CAN0_ORed_IRQHandler           ;can
        DCD     CAN0_Error_IRQHandler          ;can
        DCD     CAN0_Wake_Up_IRQHandler        ;can
        DCD     CAN0_ORed_0_15_MB_IRQHandler   ;can
        DCD     CAN0_ORed_16_31_MB_IRQHandler  ;can
        DCD     Default_Handler                ;Reserved interrupt
        DCD     Default_Handler                ;Reserved interrupt
        DCD     CAN1_ORed_IRQHandler           ;can
        DCD     CAN1_Error_IRQHandler          ;can
        DCD     CAN1_Wake_Up_IRQHandler        ;can
        DCD     CAN1_ORed_0_15_MB_IRQHandler   ;can
        DCD     CAN1_ORed_16_31_MB_IRQHandler  ;can
        DCD     Default_Handler                ;Reserved interrupt
        DCD     Default_Handler                ;Reserved interrupt
        DCD     CAN2_ORed_IRQHandler           ;can
        DCD     CAN2_Error_IRQHandler          ;can
        DCD     CAN2_Wake_Up_IRQHandler        ;can
        DCD     CAN2_ORed_0_15_MB_IRQHandler   ;can
        DCD     CAN2_ORed_16_31_MB_IRQHandler  ;can
        DCD     Default_Handler                ;Reserved interrupt
        DCD     Default_Handler                ;Reserved interrupt
        DCD     FTM0_Ch0_Ch1_IRQHandler        ;FTM0 ch0 and ch1
        DCD     FTM0_Ch2_Ch3_IRQHandler        ;FTM0 ch2 and ch3
        DCD     FTM0_Ch4_Ch5_IRQHandler        ;FTM0 ch4 and ch5
        DCD     FTM0_Ch6_Ch7_IRQHandler        ;FTM0 ch6 and ch7
        DCD     FTM0_Fault_IRQHandler          ;FTM0 Fault
        DCD     FTM0_Ovf_Reload_IRQHandler     ;FTM0 Counter overflow, Reload
        DCD     FTM1_Ch0_Ch1_IRQHandler        ;FTM1 ch0 and ch1
        DCD     FTM1_Ch2_Ch3_IRQHandler        ;FTM1 ch2 and ch3
        DCD     FTM1_Ch4_Ch5_IRQHandler        ;FTM1 ch4 and ch5
        DCD     FTM1_Ch6_Ch7_IRQHandler        ;FTM1 ch6 and ch7
        DCD     FTM1_Fault_IRQHandler          ;FTM1 Fault
        DCD     FTM1_Ovf_Reload_IRQHandler     ;FTM1 Counter overflow, Reload
        DCD     FTM2_Ch0_Ch1_IRQHandler        ;FTM2 ch0 and ch1
        DCD     FTM2_Ch2_Ch3_IRQHandler        ;FTM2 ch2 and ch3
        DCD     FTM2_Ch4_Ch5_IRQHandler        ;FTM2 ch4 and ch5
        DCD     FTM2_Ch6_Ch7_IRQHandler        ;FTM2 ch6 and ch7
        DCD     FTM2_Fault_IRQHandler          ;FTM2 Fault
        DCD     FTM2_Ovf_Reload_IRQHandler     ;FTM2 Counter overflow, Reload
        DCD     FTM3_Ch0_Ch1_IRQHandler        ;FTM3 ch0 and ch1
        DCD     FTM3_Ch2_Ch3_IRQHandler        ;FTM3 ch2 and ch3
        DCD     FTM3_Ch4_Ch5_IRQHandler        ;FTM3 ch4 and ch5
        DCD     FTM3_Ch6_Ch7_IRQHandler        ;FTM3 ch6 and ch7
        DCD     FTM3_Fault_IRQHandler          ;FTM3 Fault
        DCD     FTM3_Ovf_Reload_IRQHandler     ;FTM3 Counter overflow, Reload



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Default interrupt handlers.
;;

        PUBWEAK NMI_Handler
        PUBWEAK HardFault_Handler
        PUBWEAK MemManage_Handler
        PUBWEAK BusFault_Handler
        PUBWEAK UsageFault_Handler
        PUBWEAK SVC_Handler
        PUBWEAK DebugMon_Handler
        PUBWEAK PendSV_Handler
        PUBWEAK SysTick_Handler
        PUBWEAK DMA0_IRQHandler
        PUBWEAK DMA1_IRQHandler
        PUBWEAK DMA2_IRQHandler
        PUBWEAK DMA3_IRQHandler
        PUBWEAK DMA4_IRQHandler
        PUBWEAK DMA5_IRQHandler
        PUBWEAK DMA6_IRQHandler
        PUBWEAK DMA7_IRQHandler
        PUBWEAK DMA8_IRQHandler
        PUBWEAK DMA9_IRQHandler
        PUBWEAK DMA10_IRQHandler
        PUBWEAK DMA11_IRQHandler
        PUBWEAK DMA12_IRQHandler
        PUBWEAK DMA13_IRQHandler
        PUBWEAK DMA14_IRQHandler
        PUBWEAK DMA15_IRQHandler
        PUBWEAK DMA_Error_IRQHandler
        PUBWEAK MCM_IRQHandler
        PUBWEAK FTFC_IRQHandler
        PUBWEAK Read_Collision_IRQHandler
        PUBWEAK LVD_LVW_IRQHandler
        PUBWEAK FTFC_Fault_IRQHandler
        PUBWEAK WDOG_EWM_IRQHandler
        PUBWEAK RCM_IRQHandler
        PUBWEAK LPI2C0_Master_IRQHandler
        PUBWEAK LPI2C0_Slave_IRQHandler
        PUBWEAK LPSPI0_IRQHandler
        PUBWEAK LPSPI1_IRQHandler
        PUBWEAK LPSPI2_IRQHandler
        PUBWEAK LPUART0_RxTx_IRQHandler
        PUBWEAK LPUART0_ERR_IRQHandler
        PUBWEAK LPUART1_RxTx_IRQHandler
        PUBWEAK LPUART1_ERR_IRQHandler
        PUBWEAK LPUART2_RxTx_IRQHandler
        PUBWEAK LPUART2_ERR_IRQHandler
        PUBWEAK ADC0_IRQHandler
        PUBWEAK ADC1_IRQHandler
        PUBWEAK CMP0_IRQHandler
        PUBWEAK ERM_single_fault_IRQHandler
        PUBWEAK ERM_double_fault_IRQHandler
        PUBWEAK RTC_IRQHandler
        PUBWEAK RTC_Seconds_IRQHandler
        PUBWEAK LPIT0_Ch0_IRQHandler
        PUBWEAK LPIT0_Ch1_IRQHandler
        PUBWEAK LPIT0_Ch2_IRQHandler
        PUBWEAK LPIT0_Ch3_IRQHandler
        PUBWEAK PDB0_IRQHandler
        PUBWEAK SCG_IRQHandler
        PUBWEAK LPTMR0_IRQHandler
        PUBWEAK PORTA_IRQHandler
        PUBWEAK PORTB_IRQHandler
        PUBWEAK PORTC_IRQHandler
        PUBWEAK PORTD_IRQHandler
        PUBWEAK PORTE_IRQHandler
        PUBWEAK SWI_IRQHandler
        PUBWEAK PDB1_IRQHandler
        PUBWEAK FLEXIO_IRQHandler
        PUBWEAK CAN0_ORed_IRQHandler
        PUBWEAK CAN0_Error_IRQHandler
        PUBWEAK CAN0_Wake_Up_IRQHandler
        PUBWEAK CAN0_ORed_0_15_MB_IRQHandler
        PUBWEAK CAN0_ORed_16_31_MB_IRQHandler
        PUBWEAK CAN1_ORed_IRQHandler
        PUBWEAK CAN1_Error_IRQHandler
        PUBWEAK CAN1_Wake_Up_IRQHandler
        PUBWEAK CAN1_ORed_0_15_MB_IRQHandler
        PUBWEAK CAN1_ORed_16_31_MB_IRQHandler
        PUBWEAK CAN2_ORed_IRQHandler
        PUBWEAK CAN2_Error_IRQHandler
        PUBWEAK CAN2_Wake_Up_IRQHandler
        PUBWEAK CAN2_ORed_0_15_MB_IRQHandler
        PUBWEAK CAN2_ORed_16_31_MB_IRQHandler
        PUBWEAK FTM0_Ch0_Ch1_IRQHandler
        PUBWEAK FTM0_Ch2_Ch3_IRQHandler
        PUBWEAK FTM0_Ch4_Ch5_IRQHandler
        PUBWEAK FTM0_Ch6_Ch7_IRQHandler
        PUBWEAK FTM0_Fault_IRQHandler
        PUBWEAK FTM0_Ovf_Reload_IRQHandler
        PUBWEAK FTM1_Ch0_Ch1_IRQHandler
        PUBWEAK FTM1_Ch2_Ch3_IRQHandler
        PUBWEAK FTM1_Ch4_Ch5_IRQHandler
        PUBWEAK FTM1_Ch6_Ch7_IRQHandler
        PUBWEAK FTM1_Fault_IRQHandler
        PUBWEAK FTM1_Ovf_Reload_IRQHandler
        PUBWEAK FTM2_Ch0_Ch1_IRQHandler
        PUBWEAK FTM2_Ch2_Ch3_IRQHandler
        PUBWEAK FTM2_Ch4_Ch5_IRQHandler
        PUBWEAK FTM2_Ch6_Ch7_IRQHandler
        PUBWEAK FTM2_Fault_IRQHandler
        PUBWEAK FTM2_Ovf_Reload_IRQHandler
        PUBWEAK FTM3_Ch0_Ch1_IRQHandler
        PUBWEAK FTM3_Ch2_Ch3_IRQHandler
        PUBWEAK FTM3_Ch4_Ch5_IRQHandler
        PUBWEAK FTM3_Ch6_Ch7_IRQHandler
        PUBWEAK FTM3_Fault_IRQHandler
        PUBWEAK FTM3_Ovf_Reload_IRQHandler
        PUBWEAK Default_Handler
        
        SECTION .text:CODE:REORDER:NOROOT(1)
        THUMB

NMI_Handler
HardFault_Handler
MemManage_Handler
BusFault_Handler
UsageFault_Handler
SVC_Handler
DebugMon_Handler
PendSV_Handler
SysTick_Handler
DMA0_IRQHandler
DMA1_IRQHandler
DMA2_IRQHandler
DMA3_IRQHandler
DMA4_IRQHandler
DMA5_IRQHandler
DMA6_IRQHandler
DMA7_IRQHandler
DMA8_IRQHandler
DMA9_IRQHandler
DMA10_IRQHandler
DMA11_IRQHandler
DMA12_IRQHandler
DMA13_IRQHandler
DMA14_IRQHandler
DMA15_IRQHandler
DMA_Error_IRQHandler
MCM_IRQHandler
FTFC_IRQHandler
Read_Collision_IRQHandler
LVD_LVW_IRQHandler
FTFC_Fault_IRQHandler
WDOG_EWM_IRQHandler
RCM_IRQHandler
LPI2C0_Master_IRQHandler
LPI2C0_Slave_IRQHandler
LPSPI0_IRQHandler
LPSPI1_IRQHandler
LPSPI2_IRQHandler
LPUART0_RxTx_IRQHandler
LPUART0_ERR_IRQHandler
LPUART1_RxTx_IRQHandler
LPUART1_ERR_IRQHandler
LPUART2_RxTx_IRQHandler
LPUART2_ERR_IRQHandler
Reserved53_IRQHandler
Reserved54_IRQHandler
ADC0_IRQHandler
ADC1_IRQHandler
CMP0_IRQHandler
ERM_single_fault_IRQHandler
ERM_double_fault_IRQHandler
RTC_IRQHandler
RTC_Seconds_IRQHandler
LPIT0_Ch0_IRQHandler
LPIT0_Ch1_IRQHandler
LPIT0_Ch2_IRQHandler
LPIT0_Ch3_IRQHandler
PDB0_IRQHandler
SCG_IRQHandler
LPTMR0_IRQHandler
PORTA_IRQHandler
PORTB_IRQHandler
PORTC_IRQHandler
PORTD_IRQHandler
PORTE_IRQHandler
SWI_IRQHandler
PDB1_IRQHandler
FLEXIO_IRQHandler
CAN0_ORed_IRQHandler
CAN0_Error_IRQHandler
CAN0_Wake_Up_IRQHandler
CAN0_ORed_0_15_MB_IRQHandler
CAN0_ORed_16_31_MB_IRQHandler
CAN1_ORed_IRQHandler
CAN1_Error_IRQHandler
CAN1_Wake_Up_IRQHandler
CAN1_ORed_0_15_MB_IRQHandler
CAN1_ORed_16_31_MB_IRQHandler
CAN2_ORed_IRQHandler
CAN2_Error_IRQHandler
CAN2_Wake_Up_IRQHandler
CAN2_ORed_0_15_MB_IRQHandler
CAN2_ORed_16_31_MB_IRQHandler
FTM0_Ch0_Ch1_IRQHandler
FTM0_Ch2_Ch3_IRQHandler
FTM0_Ch4_Ch5_IRQHandler
FTM0_Ch6_Ch7_IRQHandler
FTM0_Fault_IRQHandler
FTM0_Ovf_Reload_IRQHandler
FTM1_Ch0_Ch1_IRQHandler
FTM1_Ch2_Ch3_IRQHandler
FTM1_Ch4_Ch5_IRQHandler
FTM1_Ch6_Ch7_IRQHandler
FTM1_Fault_IRQHandler
FTM1_Ovf_Reload_IRQHandler
FTM2_Ch0_Ch1_IRQHandler
FTM2_Ch2_Ch3_IRQHandler
FTM2_Ch4_Ch5_IRQHandler
FTM2_Ch6_Ch7_IRQHandler
FTM2_Fault_IRQHandler
FTM2_Ovf_Reload_IRQHandler
FTM3_Ch0_Ch1_IRQHandler
FTM3_Ch2_Ch3_IRQHandler
FTM3_Ch4_Ch5_IRQHandler
FTM3_Ch6_Ch7_IRQHandler
FTM3_Fault_IRQHandler
FTM3_Ovf_Reload_IRQHandler
Default_Handler
        B Default_Handler

        END