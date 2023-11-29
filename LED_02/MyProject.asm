
_main:

;MyProject.c,1 :: 		void main() {
;MyProject.c,2 :: 		int i = 0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
	CLRF       main_j_L0+0
	CLRF       main_j_L0+1
;MyProject.c,4 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;MyProject.c,5 :: 		portb = 0x00;
	CLRF       PORTB+0
;MyProject.c,7 :: 		while(1){
L_main0:
;MyProject.c,8 :: 		for(i=1000;i<6000;i+=1000){
	MOVLW      232
	MOVWF      main_i_L0+0
	MOVLW      3
	MOVWF      main_i_L0+1
L_main2:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      23
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main9
	MOVLW      112
	SUBWF      main_i_L0+0, 0
L__main9:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;MyProject.c,9 :: 		for(j=5000;j>=5000;j-=1000){
	MOVLW      136
	MOVWF      main_j_L0+0
	MOVLW      19
	MOVWF      main_j_L0+1
L_main5:
	MOVLW      128
	XORWF      main_j_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      19
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main10
	MOVLW      136
	SUBWF      main_j_L0+0, 0
L__main10:
	BTFSS      STATUS+0, 0
	GOTO       L_main6
;MyProject.c,10 :: 		portb.f4 = 1;
	BSF        PORTB+0, 4
;MyProject.c,11 :: 		vdelay_ms(i);
	MOVF       main_i_L0+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       main_i_L0+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;MyProject.c,12 :: 		portb.f4=0;
	BCF        PORTB+0, 4
;MyProject.c,13 :: 		vdelay_ms(j);
	MOVF       main_j_L0+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       main_j_L0+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;MyProject.c,9 :: 		for(j=5000;j>=5000;j-=1000){
	MOVLW      232
	SUBWF      main_j_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_j_L0+1, 1
	MOVLW      3
	SUBWF      main_j_L0+1, 1
;MyProject.c,14 :: 		}
	GOTO       L_main5
L_main6:
;MyProject.c,8 :: 		for(i=1000;i<6000;i+=1000){
	MOVLW      232
	ADDWF      main_i_L0+0, 1
	MOVLW      3
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      main_i_L0+1, 1
;MyProject.c,15 :: 		}
	GOTO       L_main2
L_main3:
;MyProject.c,16 :: 		}
	GOTO       L_main0
;MyProject.c,17 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
