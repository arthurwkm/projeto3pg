PImage mapaNormais, imagemDifusa, imagemEspecular, imagemFinal;
int branco = 255;
int cinza = 167;
int preto = 0;

int controleDifuso[] = {branco, preto, branco};
int controleEspecular[] = {branco, preto, branco};
int controleDoVermelho = preto;
int controleDoVerde = preto;
int controleDoAzul = preto;

int r = 255, g = 255, b = 255;

int fonteDoBotaoComponente = 30;
int fonteDoBotaoCores = 25;

PVector direcaoDaVista = new PVector(0,1,1);
PVector direcaoDaLuz;
color corDaLuz;
float brilho;
float coordX, coordY;

void setup(){
  background(0);
  size(800,800);
  imagemDifusa = loadImage("./Imagens/d.png");
  imagemEspecular = loadImage("Imagens/s.png");
  mapaNormais = loadImage("Imagens/n.png");
  
  brilho = 1;
  corDaLuz = color(255,255,255);
  coordX = width/2.0 - imagemDifusa.width/2.0;
  coordY = height/2.0 - imagemDifusa.height/2.0;
}

void draw(){
  background(0);
  botoes();
  direcaoDaLuz = new PVector(mouseX - width/10, mouseY - height/10, 0.1).normalize();
  imagemFinal = createImage(imagemDifusa.width, imagemDifusa.height, ARGB);
  renderizarImagem();
  image(imagemFinal, coordX, coordY);
}
  

  
