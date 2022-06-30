int getNumberOfDivisor(int num){
  int count = 0; //約数の数を初期化する
  for(int i = 1; i<=num; i++){
    if(num % i == 0) count++; //numが割り切れる場合countを1増やす
  }
  return count;
}

void setup(){
  int count = getNumberOfDivisor(4); //引数が4なので3が返る
  println(count);
}