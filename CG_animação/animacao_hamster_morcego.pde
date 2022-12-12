import processing.opengl.*;

void setup() {
    // Aspect Ratio 16x9
    //size(360, 480, OPENGL);
    size(270, 480, OPENGL);
}

void draw(){
   
  background(255, 255, 255);
  lights();
  noStroke();
  
  //MORCEGO
  
  pushMatrix();
    
    translate( 135, 240, 0 );
    scale(30,30,30);
    
    rotateX(PI/2);
    rotateZ(-PI/2);
    
    geraCorpoMorcego();
    
    olho_direito_morcego();
    olho_esquerdo_morcego();
    
    presa_direita();
    presa_esquerda();
    
    orelha_direita();
    orelha_esquerda();
  
    perna_esquerda();
    perna_direita();
  
    pushMatrix();
    asa_direita();
    asa_esquerda();
    popMatrix();
    
  popMatrix();
  
  //HAMSTER
  
  pushMatrix();
    translate( 135, 240, 0 );
    scale(30,30,30);
   rotateZ(PI);
    
    geraCorpo();

  pushMatrix();
    peEsquerdoDianteiro();
  popMatrix();
  
  pushMatrix();
    peDireitoDianteiro();
  popMatrix();
  
  pushMatrix();
    peDireitoTraseiro();
  popMatrix();
  
  pushMatrix();
    peEsquerdoTraseiro();
  popMatrix();

    
    orelhaDireita();
    orelhaEsquerda();
    olhoEsquerdo();
    olhoDireito();
    bigodes();
    
  popMatrix();
}
