#line 1 "C:/Users/ab89n/OneDrive/Desktop/Proteus/Segment display/seven_seg_with_butt0n.c"
char array[] = {0x77, 0x79, 0x06, 0x3f, 0x3e};
unsigned int i = 0;
void main() {
 TRISB = 0x00;
 portb = 0xff;
 TRISD = 0xff;
 portd = 0xff;

 while(1)
 {
 if(portd.f0==1){
 delay_ms(1000);
 if(portd.f0 == 1){
 if(i<5){
 i++;
 }
 else{
 i--;
 }
 }
 }
 portb = array[i];
 delay_ms(1000);
 }
}
