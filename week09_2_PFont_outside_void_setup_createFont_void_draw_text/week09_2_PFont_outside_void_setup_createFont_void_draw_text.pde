PFont font0,font,font2;
void setup(){
  size(500,500);
  font0=createFont("Times New Roman",50);
  font=createFont("標楷體",50);
  font2=createFont("elffont-rock.otf",50);
}
void draw(){
  background(0);
  textSize(50);
  textFont(font0);
  text("Hello",50,50);
  
  textFont(font);
  text("我愛你",50,150);
  
  textFont(font2);
  text("ㄨㄛˇ ㄞˋ ㄋㄧˇ ",50,250);
}
