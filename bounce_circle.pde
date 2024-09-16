int x = 50;
int y = 50;
int grote = 20;
int horspeed = -3;
int verspeed = 3;

void setup(){
  size(1000,500);
}

void draw(){
  x += horspeed;
  y += verspeed;
  background (0,0,0);
  ellipse(x,y,grote,grote);

  if(x > 1000){
     horspeed = -3;
  }
    if(x < 0){
      horspeed = 3;
    }
        if(y > 500){
  verspeed = -3;
        }
  if(y < 0){
  verspeed = 3;
    }
}
