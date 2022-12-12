import processing.opengl.*;


void setup()
{
  size(450, 720, OPENGL);
}


float i = 0;
float k = 0.01;

void draw()
{
  background(0, 128, 255);
  lights();


  //body
  noStroke();
  fill(0, 255, 0);
  translate( 225, 300, 0 );
  rotateX(300);
  i = i + k;
  drawCylinder( 30, 100, 200 );
  pushMatrix();
    //head
    fill(0, 0,255);
    translate(0, 0, -130);
    sphere(60);
  popMatrix();
  pushMatrix();
    //left forearm
    fill(0, 0, 255);
    translate( 120, 0, -20);
    rotateX(-i);
    drawCylinder(28, 25, 125 );
    pushMatrix();
       //left arm
        fill(255, 0,0 );
        translate( 0, 0, 125);
        drawCylinder(28, 25, 125 );
    popMatrix();    
  popMatrix();
  pushMatrix();
    //right forearm
    fill(255, 0, 0);
    translate( -125, 0, -20);
    rotateX(i);
    drawCylinder(28, 25, 125 );
    pushMatrix();
       //right arm
        fill(0, 0,255 );
        translate( 0, 0, 125);
        drawCylinder(28, 25, 125 );
    popMatrix();   
  popMatrix();
  pushMatrix();
    //waist
    fill(255, 255, 0);
    translate( 0, 0, 120 );
    drawCylinder( 30, 100, 40 );
  pushMatrix();
     //left leg
     fill(0, 255, 0);
     translate( 50, 0, 75);
     rotateX(i);
     drawCylinder(32, 25, 125 );
     pushMatrix();
       //left leg
       fill(255, 255, 0);
       translate( 0, 0, 125);
       drawCylinder(32, 25, 125 );
     popMatrix();
    popMatrix();
    pushMatrix();
      //right leg
      fill(255, 255, 0);
      translate( -50, 0, 75);
      rotateX(-i);
      drawCylinder(32, 25, 125 );
      pushMatrix();
        //right leg
        fill(0, 255, 0);
        translate( 0, 0, 125);
        drawCylinder(32, 25, 125 );    
      popMatrix();
    popMatrix();
    popMatrix();
    if (i>1) k = k*-1 ;
    if (i<-0.5) k = k*-1 ;

}


void drawCylinder( int sides, float r, float h)
{
  float angle = 360 / sides;
  float halfHeight = h / 2;

  // draw top of the tube
  beginShape();
  for (int i = 0; i < sides; i++) {
    float x = cos( radians( i * angle ) ) * r;
    float y = sin( radians( i * angle ) ) * r;
    vertex( x, y, -halfHeight);
  }
  endShape(CLOSE);

  // draw bottom of the tube
  beginShape();
  for (int i = 0; i < sides; i++) {
    float x = cos( radians( i * angle ) ) * r;
    float y = sin( radians( i * angle ) ) * r;
    vertex( x, y, halfHeight);
  }
  endShape(CLOSE);

  // draw sides
  beginShape(TRIANGLE_STRIP);
  for (int i = 0; i < sides + 1; i++) {
    float x = cos( radians( i * angle ) ) * r;
    float y = sin( radians( i * angle ) ) * r;
    vertex( x, y, halfHeight);
    vertex( x, y, -halfHeight);
  }
  endShape(CLOSE);
}
