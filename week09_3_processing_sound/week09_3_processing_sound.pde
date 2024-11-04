import processing.sound.*;
SoundFile sound;

void setup(){
  size(500,500);
  sound=new SoundFile(this,"In Game Music.mp3");
  //sound.play(); //播放一次
  sound.loop(); //一直迴圈播放
}

void draw(){
  
}
