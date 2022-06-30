void setup() {
  size(480, 480);
  // fill(0, 102);
  // noStroke();
  // println("starting");
  // strokeWeight(5);

}

// void draw() {
//   // ellipse(mouseX, mouseY, 9, 9);
//   // println("running");
//   // background(255);
//   // line(150, 150, mouseX, mouseY);
//   if(mousePressed == true) {
//     // ellipse(mouseX, mouseY, 10, 10);
//     if(mouseButton == LEFT)
//       stroke(0, 255, 0);
//     if(mouseButton == RIGHT)
//       stroke(255, 0, 0);
//   }else{
//     background(255);
//   }
//   line(mouseX, mouseY, pmouseX, pmouseY);
// }

int x = 80;
int y = 30;
int w = 80;
int h = 60;

void draw(){
  background(204);
  if((mouseX > x && mouseX < x+w) && (mouseY > y && mouseY < y+h)){
    fill(0);
    if(mousePressed == true){
      x = x + mouseX - pmouseX;
      y = y + mouseY - pmouseY;
    }
  }else{
    fill(255);
  }
  rect(x, y, w, h);
}