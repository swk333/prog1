int leftX= -1;
int leftY= -1;
int rightX = -1;
int rightY = -1;

void setup(){
  size(640,480);
}

void draw(){
  if(mousePressed == true){
    if(mouseButton == LEFT ){
      leftX = mouseX ; //左クリックしたときにX座標を記録する
      leftY = mouseY ; //左クリックしたときにY座標を記録する
    }
    if(mouseButton == RIGHT ){
      rightX = mouseX; //右クリックしたときにX座標を記録する
      rightY = mouseY; //右クリックしたときにY座標を記録する
    }
    if(leftX != -1 && leftY != -1
      && rightX != -1 && rightY !=-1){
      rect(leftX, leftY, rightX - leftX, rightY - leftY); //X座標・Y座標が記録されていれば四角形を描写する
    }
  }
}
