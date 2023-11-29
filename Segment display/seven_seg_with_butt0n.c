char array[] = {0xee, 0x79, 0x06, 0x3f, 0x3e};
unsigned int i = 0;
void main() {
      TRISB = 0x00;
      portb = 0x00;
      TRISD = 0xff;
      portd = 0xff;

      while(1)
      {
            if(portd.f0==1){
                delay_ms(100);
                if(portd.f0 == 1){
                    if(i<4){
                        i++;
                    }
                }
            }
            if(portd.f0==1){
                delay_ms(100);
                if(portd.f0 == 1){
                    if(i>0){
                        i--;
                    }
                    portb = array[i];
                }

            }
      }
}