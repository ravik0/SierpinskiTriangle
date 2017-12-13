int len = 20;
int x = 190;
int y = 190;
public void setup() {
  size(400,400);
}
public void draw() {
  /*fill(255);
  triangle(0,0,50,100,100,0);
  fill(0);
  triangle(0,0,25,50,50,0);
  triangle(50,0,75,50,100,0);
  triangle(50,100,75,50,25,50);*/
  //triangleDraw(200,200,200);
  background(#C1B7B7);
  triangleDraw(x,y,len);
}
public void mousePressed() {
  len+=20;
  x-=10;
  y-=10;
}
public void triangleDraw(int x, int y, int len) {
  if (len < 20) {
    triangle(x,y,x+len,y,x+len/2,y+len);
  }
  else {
    triangleDraw(x,y,len/2);
    triangleDraw(x+len/2,y,len/2);
    triangleDraw(x+len/4,y+len/2,len/2);
  }
}