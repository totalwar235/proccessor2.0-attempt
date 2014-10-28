int x = 240,y = 240;
char key2;

void setup(){
  size(480,480);
  background(0, 0, 0);
  rect(x,y,50,50);
  frameRate(60);
}

void draw(){
    if (keyPressed) {
      keyPressed();
        if(key2 == 'w' || key2 == 's' || key2 == 'a' || key2 == 'd'){
          movement();
          clear();
          rect(x,y,50,50);
        }
    }
}

void movement(){
  if (key == 'w') {
        y = y - 5;
        return;
      }
      if(key == 's'){
        y = y + 5;
        return;
      }
      if(key == 'a'){
        x = x - 5;
        return;
      }
      if(key == 'd'){
        x = x + 5;
        return;
      }
      
}

void keyPressed(){
  key2 = key;
}
