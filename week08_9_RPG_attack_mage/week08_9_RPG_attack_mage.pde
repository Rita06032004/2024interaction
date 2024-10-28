int [][] floor={
  {1,1}
};
PImage img,user;
PImage [] fimg=new PImage[40]
void setup(){
  size(474,269);
  img=loadImage("r.jpg");
  user=loadImage("15.png")
  for(int i=1;i<22;i++) fimg[i]=loadImage(i+".png");
}
int userI=12,userJ=15;
void draw(){
  //background(img);
  for(int i=0;i<3;i++){
    for(int j=0;j<20;j++){
      int now=floor[i][j];
      image(fimg[now],j*32,i*32);
    }
  }
  image(user,16,16);
  textSize(30);
  text("Level: "+level,16,90);
  textSize(20);
  text("HP: "+hp,16,140);
  text("Attack: "+attack,16,170);
  text("Defense: "+defense,16,200);
  text("Magic: "+magic,16,230);
  text("Exp: "+exp,16,260);
  text("Coins: "+cpin,16,290);
  image(user,userJ*32,userI*32);
  if(gameOver) background(0,255,0);
}
int level=1,hp=2693,attack=14,defense=16,magic=10,exp=72,coin=72;
int gameOver=0;
void keyPressed(){
  int newI=userI,newJ=userJ
  if(keyCode==RIGHT) newJ++;
  if(keyCode==LEFT) newJ--;
  if(keyCode==UP) newI--;
  if(keyCode==DOWN) newI++;
  if(floor[newI][newJ]==9){
    if(hp-10<=0) gameOver=2;
    else{
      hp-=10;
      coin+=10;
      exp+=1;
      userI=newI;
      userJ=newJ;
      floor[newI][newJ]=2;
    }
  }else if(floor[newI][newJ]==!=1 && floor[newI][newJ]==!=3){
    userI=newI;
    userJ=newJ;
    if(floor[newI][newJ]==21) gameOver=true;
    floor[newI][newJ]=2;
  }
}
