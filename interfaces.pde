interface Pantallas{
  void display();
  int cambioPantalla();
}

interface Combate{
  void display1();
  void display2();
  void display3();
}

void Reinicio(){
  crit1=0;
  crit2=0;
  PH1=100;
  PH2=100;
  turno=1;
  println(turno);
}

void cielo(float n){
  for(int i =0; i<width; i+=5){ 
    for(int j = 0; j<height; j+=5){
    fill(noise(i*0.005,j*0.005,n)*128,noise(i*0.005,j*0.005,n)*89,noise(i*0.005,j*0.005,n)*118);
    noStroke();
    rect(i,j,5,5);
    }
  }
}
