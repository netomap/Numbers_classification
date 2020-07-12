color branco = color(255);
color preto = color(0);
int tamanho = 100;
int ampRand = 18;
float ampRot = PI/10;

void setup(){
  size(100, 100);
  for (int k=0; k < 5000; k++){
    int label = int(random(0, 10));
    desenhar_e_salvar_numero(label);
    println ("[" + k + "]: " + label);
  }
}

void desenhar_e_salvar_numero(int label){
  float rx = random(-ampRand, ampRand);
  float ry = random(-ampRand, ampRand);
  float rotacao = random(-ampRot, ampRot);
  background(branco);
  fill(preto);
  int fontSize = int(random(60, 90));
  textSize(fontSize);
  translate(tamanho/2, tamanho/2);
  rotate(rotacao);
  text(label, 25 + rx - tamanho/2, (fontSize+tamanho-20+ry)/2 - tamanho/2);
  save(label + "/numero_" + int(random(0,10000000)) + ".png");
  rotate(-rotacao);
  translate(-tamanho/2, -tamanho/2);
}


void draw(){}
