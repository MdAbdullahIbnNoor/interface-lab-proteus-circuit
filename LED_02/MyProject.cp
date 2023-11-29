#line 1 "C:/Users/ab89n/OneDrive/Desktop/Proteus/LED_02/MyProject.c"
void main() {
 int i = 0;
 int j = 0;
 TRISB = 0x00;
 portb = 0x00;

 while(1){
 for(i=1000;i<6000;i+=1000){
 for(j=5000;j>=5000;j-=1000){
 portb.f4 = 1;
 vdelay_ms(i);
 portb.f4=0;
 vdelay_ms(j);
 }
 }
 }
}
