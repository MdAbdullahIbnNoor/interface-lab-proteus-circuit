
_main:

;seven_seg_with_butt0n.c,3 :: 		void main() {
;seven_seg_with_butt0n.c,4 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;seven_seg_with_butt0n.c,5 :: 		portb = 0xff;
	MOVLW      255
	MOVWF      PORTB+0
;seven_seg_with_butt0n.c,6 :: 		TRISD = 0xff;
	MOVLW      255
	MOVWF      TRISD+0
;seven_seg_with_butt0n.c,7 :: 		portd = 0xff;
	MOVLW      255
	MOVWF      PORTD+0
;seven_seg_with_butt0n.c,9 :: 		while(1)
L_main0:
;seven_seg_with_butt0n.c,11 :: 		if(portd.f0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;seven_seg_with_butt0n.c,12 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;seven_seg_with_butt0n.c,13 :: 		if(portd.f0 == 1){
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;seven_seg_with_butt0n.c,14 :: 		if(i<5){
	MOVLW      0
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main9
	MOVLW      5
	SUBWF      _i+0, 0
L__main9:
	BTFSC      STATUS+0, 0
	GOTO       L_main5
;seven_seg_with_butt0n.c,15 :: 		i++;
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;seven_seg_with_butt0n.c,16 :: 		}
	GOTO       L_main6
L_main5:
;seven_seg_with_butt0n.c,18 :: 		i--;
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;seven_seg_with_butt0n.c,19 :: 		}
L_main6:
;seven_seg_with_butt0n.c,20 :: 		}
L_main4:
;seven_seg_with_butt0n.c,21 :: 		}
L_main2:
;seven_seg_with_butt0n.c,22 :: 		portb = array[i];
	MOVF       _i+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;seven_seg_with_butt0n.c,23 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;seven_seg_with_butt0n.c,24 :: 		}
	GOTO       L_main0
;seven_seg_with_butt0n.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
