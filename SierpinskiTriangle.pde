public void setup() {
  size(400,400);
  noFill();
}

public void draw() {
  sierpinski(0,400,400);
}

public void sierpinski(int x, int y, int len) {
  if (len <= 10) {
    triangle(0,400,200,0,400,400);
  } else {
    //fill(256,256,256);
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
    triangle(x,y,x+(len/4),y-len/2,x+len/2,y);
    triangle(x+len/2,y,x+3*(len/4),y-len/2,x+len/2,y);
    triangle(x+len/4,y-len/2,x+len/2,y-len,x+3*(len/4),y-len/2);
  }
}
