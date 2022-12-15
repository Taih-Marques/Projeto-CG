import gifAnimation.*;
import processing.opengl.*;
import processing.sound.*;
SoundFile file;
Gif myAnimation;

void setup() {
    // Aspect Ratio 16x9
    size(1024, 640, OPENGL);
    //size(1600, 800, OPENGL);
    
     myAnimation = new Gif(this, "floresta.gif");
     myAnimation.play();
    
     file = new SoundFile(this, "sample.mp3");
     file.play();
}
float i = 0;
float k = 0.1;

float j = 0;
float z = 0.02;

float m = 0;
float n = 0.1;

void draw(){
    //background(225,225, 225);
  //PImage b; 
 // b = loadImage("floresta.gif"); 
   image(myAnimation, 0,0);
 // background(b); 
  


  lights();
  noStroke();
   i = i + k;
   j = j + z;
   m = m + n;

  //MORCEGO

  pushMatrix();
    translate( 235, 70, 0 );
    scale(30,30,30);

    rotateX(PI/4);
    rotateZ(-PI/2);
 
    translate(i,i); 
    pushStyle();
     fill(100,100,100);
     geraCorpoMorcego();
    popStyle();
    
    pushStyle();
       fill(0,0,0);
      olho_direito_morcego();
      olho_esquerdo_morcego();
    popStyle();
    
    pushStyle();
      fill(225,0,0);
      presa_direita();
      presa_esquerda();
    popStyle();
    
    pushStyle();
      fill(35,40,43);
      pushMatrix();
     rotateZ(-0.3);
      orelha_direita();
      popMatrix();
      
      pushMatrix();
      rotateX(-0.1);
      orelha_esquerda();
      popMatrix();
    popStyle();
    
    pushStyle();
      fill(0,0,0);
      perna_esquerda();
      perna_direita();
    popStyle();
    
    
    pushStyle();
    fill(33,30,34);
    pushMatrix(); 
    rotateZ(i+0.5);
    asa_direita();
    popMatrix();
    
    pushMatrix();  
    rotateZ(-i-0.5);
    asa_esquerda();
    popStyle();
    popMatrix();
   
  popMatrix();

  //HAMSTER

  pushMatrix();
    translate( 235, 540, 0 );
    scale(30,30,30);
    rotateZ(PI);
    rotateX(-0.2);
    
    
    translate(m,-m); 
    pushStyle();
      fill(150,75,0);
      geraCorpo();
    popStyle();
    
    pushStyle();
      fill(205,133,63);
      pushMatrix();
      rotateX(j+0.1);
        peEsquerdoDianteiro();
      popMatrix();

      pushMatrix();
      rotateX(-j);
        peDireitoDianteiro();
      popMatrix();

      pushMatrix();
      rotateX(-j);
       peDireitoTraseiro();
      popMatrix();
  
      pushMatrix();
      rotateX(j);
        peEsquerdoTraseiro();
      popMatrix();
    popStyle();
    
    pushStyle();
      fill(214,145,45 );
      orelhaDireita();
      orelhaEsquerda();
    popStyle();
    
    
    pushStyle();
      fill(0,0,0);
      olhoEsquerdo();
      olhoDireito();    
      bigodes();
    popStyle();

popMatrix();
    if (i>1) k = k*-1 ;
    if (i<-0.8) k = k*-1 ;
    
    if (j>0.1) z = z*-1 ;
    if (j<-0.1) z = z*-1 ;
    
    
    if (m<-1) n = n*-1 ;
    if (m>5) n =n*-1 ;
}
