
void setup(){ 

pinMode(2,OUTPUT);//A
pinMode(3,OUTPUT);//B
pinMode(4,OUTPUT);//C
pinMode(5,OUTPUT);//D
pinMode(6,OUTPUT);//E
pinMode(7,OUTPUT);//F
pinMode(8,OUTPUT);//G
pinMode(12,OUTPUT);//Segment digit2
pinMode(13,OUTPUT);//segment digit1
pinMode(0,OUTPUT);//D
pinMode(1,OUTPUT);//C
pinMode(10,OUTPUT);//B
pinMode(11,OUTPUT);//A
pinMode(9,INPUT);//Switch
}

void loop() {

int x=digitalRead(9);

//switch=HIGH
if(x==HIGH){
  for(int j = 0; j <= 9; j++){
       
    twodigit(j);
  }  
}
//switch=LOW
else if(x==LOW){  
    for(int j = 15; j >= 6; j--){
      
         twodigit(j);
     }
  }
}

//print 2 digit
void twodigit(int j){   
      
      int digit1 = j/10;
      int digit2 = j % 10;
      
      for ( int k = 0; k < 100; k++) {

     
       digitalWrite(12, LOW);
       digitalWrite(13, HIGH);  
        
        if(digit1 == 0){
          zero();}
        else if(digit1 == 1){
          one();}
        else if(digit1 == 2){
          two();}
        else if(digit1 == 3){
          three();}
        else if(digit1 == 4){
          four();}
        else if(digit1 == 5){
          five();}
        else if(digit1 == 6){
          six();}
        else if(digit1 == 7){
          seven();}
        else if(digit1 == 8){ 
          eight();}
        else if(digit1 == 9){
          nine();}
          delay(5);
         
         value(j);

         
        digitalWrite(13, LOW);
        digitalWrite(12, HIGH);  
        
        if(digit2 == 0){
          zero();}
        else if(digit2 == 1){
          one();}
        else if(digit2 == 2){
          two();}
        else if(digit2 == 3){
          three();}
        else if(digit2 == 4){
          four();}
        else if(digit2 == 5){
          five();}
        else if(digit2 == 6){
          six();}
        else if(digit2 == 7){
          seven();}
        else if(digit2 == 8){ 
          eight();}
        else if(digit2 == 9){
          nine();}
          
        delay(5);
      }
}
void value(int num)
{
  if(num==0){
  digitalWrite(0, LOW);
  digitalWrite(1, LOW);
  digitalWrite(10, LOW);
  digitalWrite(11, LOW);
  }
  else if(num==1){
  digitalWrite(0, LOW);
  digitalWrite(1, LOW);
  digitalWrite(10, LOW);
  digitalWrite(11, HIGH);
  }
  else if(num==2){
  digitalWrite(0, LOW);
  digitalWrite(1, LOW);
  digitalWrite(10,HIGH);
  digitalWrite(11, LOW);
  }
  else if(num==3){
  digitalWrite(0, LOW);
  digitalWrite(1, LOW);
  digitalWrite(10, HIGH);
  digitalWrite(11, HIGH);
  }
  else if(num==4){
  digitalWrite(0, LOW);
  digitalWrite(1, HIGH);
  digitalWrite(10, LOW);
  digitalWrite(11, LOW);
  }
    if(num==5){
  digitalWrite(0, LOW);
  digitalWrite(1, HIGH);
  digitalWrite(10, LOW);
  digitalWrite(11, HIGH);
  }
  else if(num==6){
  digitalWrite(0, LOW);
  digitalWrite(1, HIGH);
  digitalWrite(10, HIGH);
  digitalWrite(11, LOW);
  }
  else if(num==7){
  digitalWrite(0, LOW);
  digitalWrite(1, HIGH);
  digitalWrite(10, HIGH);
  digitalWrite(11, HIGH);
  }
  else if(num==8){
  digitalWrite(0, HIGH);
  digitalWrite(1, LOW);
  digitalWrite(10, LOW);
  digitalWrite(11, LOW);
  }
   else if(num==9){
  digitalWrite(0, HIGH);
  digitalWrite(1, LOW);
  digitalWrite(10, LOW);
  digitalWrite(11, HIGH);
  }
     else if(num==10){
   digitalWrite(0, HIGH);
  digitalWrite(1, LOW);
  digitalWrite(10, HIGH);
  digitalWrite(11, LOW);
  }
     else if(num==11){
  digitalWrite(0, HIGH);
  digitalWrite(1, LOW);
  digitalWrite(10, HIGH);
  digitalWrite(11, HIGH);
  }
     else if(num==12){
   digitalWrite(0, HIGH);
  digitalWrite(1, HIGH);
  digitalWrite(10, LOW);
  digitalWrite(11, LOW);
  }
     else if(num==13){
   digitalWrite(0, HIGH);
  digitalWrite(1, HIGH);
  digitalWrite(10, LOW);
  digitalWrite(11, HIGH);
  }
     else if(num==14){
   digitalWrite(0, HIGH);
  digitalWrite(1, HIGH);
  digitalWrite(10, HIGH);
  digitalWrite(11, LOW);
  }
     else if(num==15){
   digitalWrite(0, HIGH);
  digitalWrite(1, HIGH);
  digitalWrite(10, HIGH);
  digitalWrite(11, HIGH);
  }
}
void zero(){
  digitalWrite(2, HIGH);
  digitalWrite(3, HIGH);
  digitalWrite(4, HIGH);
  digitalWrite(5, HIGH);
  digitalWrite(6, HIGH);
  digitalWrite(7, HIGH);
  digitalWrite(8, LOW);
  
}

void one(){
  digitalWrite(2, LOW);
  digitalWrite(3, HIGH);
  digitalWrite(4, HIGH);
  digitalWrite(5, LOW);
  digitalWrite(6, LOW);
  digitalWrite(7, LOW);
  digitalWrite(8, LOW);
  
}

void two(){
  digitalWrite(2, HIGH);
  digitalWrite(3, HIGH);
  digitalWrite(4, LOW);
  digitalWrite(5, HIGH);
  digitalWrite(6, HIGH);
  digitalWrite(7, LOW);
  digitalWrite(8, HIGH);
}

void three(){
  digitalWrite(2, HIGH);
  digitalWrite(3, HIGH);
  digitalWrite(4, HIGH);
  digitalWrite(5, HIGH);
  digitalWrite(6, LOW);
  digitalWrite(7, LOW);
  digitalWrite(8, HIGH);
}
void four(){
  digitalWrite(2, LOW);
  digitalWrite(3, HIGH);
  digitalWrite(4, HIGH);
  digitalWrite(5, LOW);
  digitalWrite(6, LOW);
  digitalWrite(7, HIGH);
  digitalWrite(8, HIGH);
 
}

void five(){
  digitalWrite(2, HIGH);
  digitalWrite(3, LOW);
  digitalWrite(4, HIGH);
  digitalWrite(5, HIGH);
  digitalWrite(6, LOW);
  digitalWrite(7, HIGH);
  digitalWrite(8, HIGH);
}

void six(){
  digitalWrite(2, HIGH);
  digitalWrite(3, LOW);
  digitalWrite(4, HIGH);
  digitalWrite(5, HIGH);
  digitalWrite(6, HIGH);
  digitalWrite(7, HIGH);
  digitalWrite(8, HIGH);
}

void seven(){
  digitalWrite(2, HIGH);
  digitalWrite(3, HIGH);
  digitalWrite(4, HIGH);
  digitalWrite(5, LOW);
  digitalWrite(6, LOW);
  digitalWrite(7, LOW);
  digitalWrite(8, LOW);

  }

void eight(){
  digitalWrite(2, HIGH);
  digitalWrite(3, HIGH);
  digitalWrite(4, HIGH);
  digitalWrite(5, HIGH);
  digitalWrite(6, HIGH);
  digitalWrite(7, HIGH);
  digitalWrite(8, HIGH);
 
}

void nine(){
  digitalWrite(2, HIGH);
  digitalWrite(3, HIGH);
  digitalWrite(4, HIGH);
  digitalWrite(5, HIGH);
  digitalWrite(6, LOW);
  digitalWrite(7, HIGH);
  digitalWrite(8, HIGH);
  
}
