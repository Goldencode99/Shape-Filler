float x;
float y;
float circle_dots = 0.0;
float total_dots = 0.0;
float dot_ratio;
PFont font;
int i = 0;
int flip_counter = 1;

void setup() {
  background(255);
  frameRate(600);
  size(400,400);
  font = loadFont("HiraKakuProN-W6-48.vlw");
  textFont(font, 32);
  textAlign(CENTER);
  fill(0);
  stroke(0);
  ellipse(200, 200, 3, 3);
  circle_dots++;
  total_dots++;
}
void draw() {
  x = random(400);
  y = random(400);
  //if (sqrt(sq(x - 200) + sq(y - 200)) > 200) {
  if ((y < (-2 * x) + 400) || (y < (2 * x) - 400)) {
  //if (y < pow(x - 200, ) + 200) {
    fill(200, 200, 255);
    stroke(200, 200, 255);
    total_dots = total_dots + 1;
  } else {
    fill(0);
    stroke(0);
    circle_dots = circle_dots + 1;
    total_dots = total_dots + 1;
  }
  ellipse(x, y, 3, 3);
  fill(255);
  stroke(0);
  rect(120, 168, 160, 40);
  if (i == 100) {
    dot_ratio = circle_dots / total_dots;
    i = 0;
  } else {
    i++;
  }
  if (abs(dot_ratio - 0.5) > 100 / total_dots) {
    fill(255);
    stroke(0);
    rect(50, 325, 300, 40);
    fill(200, 200, 255);
    textFont(font, 15);
    text("Random Number Generator is Broken", 200, 350);
  } else {
    fill(255);
    stroke(0);
    rect(50, 325, 300, 40);
    fill(200, 200, 255);
    textFont(font, 15);
    text(100 / total_dots, 200, 350);
  }
  /*if (dot_ratio != 0.5) {
    if (flip_counter == 1) {
      fill(255);
      stroke(0);
      rect(50, 325, 300, 40);
      fill(200, 200, 255);
      textFont(font, 15);
      text("Random Number Generator is Broken", 200, 350);
    }
    if (flip_counter == -1) {
      fill(0);
      stroke(255);
      rect(50, 325, 300, 40);
      fill(255, 0, 0);
      textFont(font, 15);
      text("Random Number Generator is Broken", 200, 350);
    }
    flip_counter = flip_counter * -1;
  }*/
  fill(200, 200, 255);
  textFont(font, 32);
  text((int(dot_ratio * 100000) / 1000.0) + "%", 200, 200);
}
