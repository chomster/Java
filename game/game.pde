float []notes1 = new float[12];//{0, -700};
float []notes2 = new float[12];//{-100, -600};
float []notes3 = new float[12];//{-200, -500};
float []notes4 = new float[12];//{-300, -400};
float verSpeed = 20;
boolean Akey = false;
boolean Skey = false;
boolean Kkey = false;
boolean Lkey = false;
int score = 0;


void setup() {
  size(500, 700);

  float offset = -1000;
  int index = 0;
  for (int i = 0; i<6; i++) {
    notes1[index] = offset;
    notes2[index] = offset - 100;
    notes3[index] = offset - 200;
    notes4[index] = offset - 300;
    index++;
    offset -= 400;
    notes4[index] = offset;
    notes3[index] = offset - 100;
    notes2[index] = offset - 200;
    notes1[index] = offset - 300;
    index++;
    offset -= 400;
  }
}


void draw() {

  background(0, 0, 0);
  
   text(score,220,100);
   textSize(50);
  ellipse(100,590,90,90);
  if (Akey){
  ellipse(100,590,100,100);
  }
   
  ellipse(200,590,90,90);
   if (Skey){
  ellipse(200,590,100,100);
  }
   
  ellipse(300,590,90,90);
  if (Kkey){
  ellipse(300,590,100,100);
  }
   
  ellipse(400,590,90,90);
  if (Lkey){
  ellipse(400,590,100,100);
  }
  for (int i = 0; i<notes1.length; i++) {

    ellipse(100, notes1[i], 90, 90);
    ellipse(200, notes2[i], 90, 90);
    ellipse(300, notes3[i], 90, 90);
    ellipse(400, notes4[i], 90, 90);


    notes1[i]= notes1[i] + verSpeed;
    notes2[i]= notes2[i] + verSpeed;
    notes3[i]= notes3[i] + verSpeed;
    notes4[i]= notes4[i] + verSpeed;
  }
}



void keyPressed(){
 if(key == 'a'){
  
 Akey = true;
 
 
 
 for(int i = 0; i<notes1.length; i++){
 if(notes1[i] >= 540 && notes1[i] <= 640){
   notes1[i] = 1000; 
   score = score + 1000;
   println(score);

  
 }
  }
 }
 
 if(key == 's'){
 Skey = true;
 
  for(int i = 0; i<notes2.length; i++){
 if(notes2[i] >= 540 && notes2[i] <= 640){
   notes2[i] = 1000;
   score = score + 1000;
   println(score);

 }
  }
 }
 
 if(key == 'k'){
 Kkey = true;
   for(int i = 0; i<notes3.length; i++){
 if(notes3[i] >= 540 && notes3[i] <= 640){
   notes3[i] = 1000;
   score = score + 1000;
   println(score);
    
   

   
 }
  }
 }
 
 if(key == 'l'){
 Lkey = true;
   for(int i = 0; i<notes4.length; i++){
 if(notes4[i] >= 540 && notes4[i] <= 640){
   notes4[i] = 1000;
   score = score + 1000;
   println(score);

 }
   }
 }
}

void keyReleased(){
 if(key == 'a'){
 Akey = false;
}
 if(key == 's'){
 Skey = false;
}
 if(key == 'k'){
 Kkey = false;
}
 if(key == 'l'){
 Lkey = false;
}
}
