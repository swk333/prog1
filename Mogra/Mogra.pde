boolean showMogra;
int mograPointX = 0;
int mograPointY = 0;
void setup(){
  size(1000, 500);
  showMogra = true;
  mograPointX = floor(random(3));
  mograPointY = floor(random(1));
}

void draw(){

  float x = 50;
  float y = 200;
  int rectWidth = 200;
  int rectHeight = 10;
  float judgeAreaX = x + mograPointX * rectWidth + 50;
  float judgeAreaY = 100 + mograPointY * 200;
  float judgeAreaEndX = judgeAreaX + rectWidth;
  float judgeAreaEndY = judgeAreaY + 110;
  float arcX = 150 + mograPointX * 250;
  float arcY = 205 + mograPointY * 200;
  float diameter = 180;



  if(mousePressed){
    println("mouse is pressed" + mouseX + " " + mouseY);
  
    if(mouseX > judgeAreaX && mouseX < judgeAreaEndX && mouseY > judgeAreaY && mouseY < judgeAreaEndY) {
      showMogra = false;
      mouseHit();
      background(204);
      mograPointX = floor(random(3));
      mograPointY = floor(random(2));
    }
  }
  else {
    showMogra = true;
    for(int i = 0; i < 2; i++){
      for(int j = 0; j < 3; j++){
        fill(255, 255, 255);
        rect(x+250*j, y+200*i, rectWidth, rectHeight);

      }
    }
  }

  if(showMogra) {
    fill(255, 255, 0);
    arc(arcX, arcY, diameter, diameter, PI, TWO_PI);
  }
}

void mouseHit(){
  println("いた>_<");
}