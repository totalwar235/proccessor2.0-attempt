int x = 240,y = 240;
float x_A = x + 25;
float y_A = y + 25;
char key2;
int attack = 0;
float attack_loc = 0;
float start = 0;

void setup(){
  size(480,480);
  background(255, 255, 255);
  rect(x,y,50,50);
  frameRate(60);
}

void draw(){
  clear();
    if (keyPressed) {
      keyPressed();
        if(key2 == 'w' || key2 == 's' || key2 == 'a' || key2 == 'd'){
          movement();
        }
        if(key == ' ')
        {
           attack = 10;
        }
    }
   fill(255);
   rect(x,y,50,50);
    
    if(attack >= 1)
    {
        attack--;
        fill(100);
        arc(x_A, y_A, 500.0, 500.0, start, attack_loc, OPEN);
        print(" attack " + attack);
    }
}

void movement(){
  if (key2 == 'w') {
        y = y - 5;
        x_A = x + 25;
        y_A = y;
        start = -0.01;
        attack_loc = PI;
        return;
      }
      if(key2 == 's'){
        y = y + 5;
        x_A = x + 25;
        y_A = y + 50;
        start = 0;
        attack_loc = PI;
        return;
      }
      if(key2 == 'a'){
        x = x - 5;
        x_A = x;
        y_A = y + 25;
        start = -0.01;
        attack_loc = HALF_PI;
        return;
      }
      if(key2 == 'd'){
        x = x + 5;
        x_A = x + 50;
        y_A = y + 25;
        start = 0;
        attack_loc = QUARTER_PI;
        return;
      }
      
}

void keyPressed(){
  key2 = key;
}
