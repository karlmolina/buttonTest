String text = "click";
PVector textPos = new PVector(30, 50);
int x1 = 20, y1 = 20, x2 = 70, y2 = 70;
void setup() {
  rectMode(CORNERS);
}

void draw() {
  background(255);
  noFill();
  rect(x1, y1, x2, y2);
  fill(0);
  text(text, textPos.x, textPos.y);
  if (onButton()) {
    fill(0);
    rect(x1, y1, x2, y2);
    fill(255);
    text(text, textPos.x, textPos.y);
  }
}

boolean onButton() {
  return mouseX > x1 && mouseX < x2 && mouseY < y2 && mouseY > y1;
}

void mousePressed() {
  if (onButton()) {
    println(random(1000));
  }
}
