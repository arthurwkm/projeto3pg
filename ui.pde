void botoes(){
  stroke(controleDifuso[0]);
  strokeWeight(2);
  fill(controleDifuso[1]);
  rect(2,2, width/4-4, 40);
  fill(controleDifuso[2]);
  textSize(fonteDoBotaoComponente);
  textAlign(CENTER, CENTER);
  text("Difuso", width/8, 20);
  
  stroke(controleEspecular[0]);
  strokeWeight(2);
  fill(controleEspecular[1]);
  rect(width/4+2, 2, width/4-4, 40);
  fill(controleEspecular[2]);
  textSize(fonteDoBotaoComponente);
  textAlign(CENTER, CENTER);
  text("Especular", 3*width/8, 20);
    
  stroke(255);
  textSize(15);
  textAlign(CENTER, CENTER);
  text("Clique para obter uma iluminação de cor aleatória", 6*width/8, 20);
}

void mouseClicked(){
 if(((mouseX >= 2)&&(mouseX <= width/4-2))&&((mouseY >= 2)&&(mouseY <= 40))){
   if(controleDifuso[1] == cinza) {
     controleDifuso[0] = branco;
     controleDifuso[1] = preto;
     controleDifuso[2] = branco;
   }else {
      controleDifuso[0] = preto;
      controleDifuso[1] = cinza;
      controleDifuso[2] = preto;
   }
 } else if(((mouseX >= width/4+2)&&(mouseX <= width/2-2))&&((mouseY >= 2)&&(mouseY <= 40))){
   if(controleEspecular[1] == cinza) {
     controleEspecular[0] = branco;
     controleEspecular[1] = preto;
     controleEspecular[2] = branco;
   }else {
      controleEspecular[0] = preto;
      controleEspecular[1] = cinza;
      controleEspecular[2] = preto;
   }
 } else{
   corDaLuz = color(random(255), random(255), random(255));
 }
  
}
