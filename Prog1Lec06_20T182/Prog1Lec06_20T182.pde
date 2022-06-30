size(200, 200);
rectMode(CENTER);
for(int i = 10; i > 0; i--){ //i を10から1ずつ減らす
  if(i % 2 == 0) {
    fill(0, 0, 255); //偶数で青に変更
  } else {
    fill(0, 255, 0); //奇数で緑に変更
  }
  int width = i * 10; //横幅の設定
  int height = i * 10; //高さの設定
  rect(50, 50, width, height);
}