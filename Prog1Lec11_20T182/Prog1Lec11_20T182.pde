size(320, 320);
int size = 300;
int x = 160;
int y = 160;
ellipseMode(CENTER);
while(size > 0){
  ellipse(x, y, size, size); //円を描写する
  size -= 30; //円の直径をへらす
}