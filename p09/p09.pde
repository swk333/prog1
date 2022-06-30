size(150, 150);
int x=20, y=20;
ellipseMode(CENTER);
for(int i=0; i<5; i++){
  if(i%2==0)fill(255);
  else fill(0);
  ellipse(x, y, 20, 20);
  y+=20;
}