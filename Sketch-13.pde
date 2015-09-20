class Ball {
  float x, y;
  float vx, vy;
  float radius;
  color c;

  Ball() {
    noStroke();
    colorMode(HSB, 100);
    x = 100;
    y = 100;
    radius = 10;
    vx = (random(6));
    vy = (random(6));
    c = color(random(100), 100, 100);
  }

  void draw() {
    fill(c);
    ellipse(x, y, radius*5, radius*5);
  }

  void move() {
    x = x + vx;
    y = y + vy;
    if (x < radius || x > width-radius) {
      vx = -vx;
    }
    if (y < radius || y > height-radius) {
      vy = -vy;
    }
  }
}

Ball b, b2;

void setup() {
  size(500, 500);

  b = new Ball();
  b2 = new Ball();
}

void draw() {
  colorMode(RGB, 100);
  background(255, 255, 255);

  b.draw();
  b.move();

  b2.draw();
  b2.move();
}
