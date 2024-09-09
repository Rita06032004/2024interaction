void setup() {
  size(500, 500); //大小
}

void draw() {
  if (mousePressed) line(mouseX, mouseY, pmouseX, pmouseY);
}
