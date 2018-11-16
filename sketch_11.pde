

/*
Los arreglos en Processing pueden contener un tipo de variable
 
 Lo primero es indicar el tipo de variable
 Luego se agregan los paréntesis cuadrados []
 Sigue el nombre que le quieran asignar
 Y después del signo igual se usan paréntesis de llave
 
 datatype[] var = {}
 
 */

import processing.pdf.*;


int[] x = { 10, 61, 83, 69, 71, 50, 29, 31, 10, 100};

int a = 25;

void setup() {
  size(500, 500);
  fill(0, 0, 0);
  noLoop();

  beginRecord(PDF, "testtin1.pdf");
}

void draw() {
  
  noStroke();
  fill(255, 0, 0);
  for (int i = 0; i < x.length; i++) {
    rect(0, i*a, x[i], a-30);
  }



  noStroke();
  fill(255, 0, 0);
  for (int g = 5; g < x.length; g++) {
    rect(0, g*a, x[g], a-10);
  }
}




void keyPressed() {
  if (key == 'p') {
    endRecord();
    exit();
  }
}
