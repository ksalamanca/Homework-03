void setup(){
  background(0);
  size(500,500);
  noStroke();
  frameRate(15);
}
int Bars = 20;
void draw(){
  if (Bars < width) {
    fill(0); 
    rect(Bars, 0, 20, height);
    fill(255); 
    rect(Bars, random(height),5, height); 
    Bars += 20;
  } else {
    Bars = 20; 
  }
}
