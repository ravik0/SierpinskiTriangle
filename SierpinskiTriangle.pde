int len = 20;
int x = 190;
int y = 190;
public void setup() {
  size(400,400);
}
public void draw() {
  background(#C1B7B7);
  triangleDraw(x,y,len);
}
public void mousePressed() {
  len+=20;
  x-=10;
  y-=10;
  if (len >= 420) {
    len = 20;
    x=190;
    y=190;
  }
}
public void triangleDraw(int x, int y, int len) {
  if (len < 20) {
    fill(255,255,255);
    triangle(x,y,x+len,y,x+len/2,y+len);
  }
  else {
    triangleDraw(x,y,len/2);
    triangleDraw(x+len/2,y,len/2);
    triangleDraw(x+len/4,y+len/2,len/2);
    fill(255,255,255);
    ellipse(x+len/2,y+len/3,len/3,len/4);
    fill(0);
    ellipse(x+len/2,y+len/3,len/8,len/8);
  }
}