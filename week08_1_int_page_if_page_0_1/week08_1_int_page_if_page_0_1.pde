PImage img;
void setup(){
  size(640,360);
  img=loadImage("img.jpg");
}

int page=0;
void draw(){
  if(page==0){
    background(0);
    textSize(70);
    textAlign(CENTER,CENTER);
    text("Opening",320,240);
  }else if(page==1){
    background(img);
  }
}
void mousePressed(){
  if(page==0) page=1;
}
