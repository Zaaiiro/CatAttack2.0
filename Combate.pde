///////////////////////////////////////////INDICADORES DE VIDA Y CRITICOS
class BarraPH implements Combate
{  
  BarraPH(){}
  
  void display1(){
    fill(82,77,77);
    rectMode(CENTER);
    rect(width/2,l*3,l*10,l*7);
    rectMode(CORNER);
    textSize(20);
    fill(195,115,115);
    text("VS",l*78,l*5);
    textSize(15);
    fill(200);
    text("Jugador1", l*10,l*8);
    text("Jugador2", l*95,l*8);
    noStroke();
    fill(82,77,77);
    rect(l,l*2,l*73,l*3);
    rect(l*86,l*2,l*73,l*3);
  }
  
  void display2(){
    /////////////////////////////JUGADOR 1
    //vida
    fill(154,195,89);
    rect(l,l*2,PH1*3.65,l*3);
    //criticos
    fill(150,234,223);
    noStroke();
    if (crit1>=1){
      ellipse(l*2,l*7,l*2,l*2);
    }
    if (crit1>=2){
      ellipse(l*2,l*7,l*2,l*2);
      ellipse(l*5,l*7,l*2,l*2);
    }
    if (crit1>=3){
      ellipse(l*2,l*7,l*2,l*2);
      ellipse(l*5,l*7,l*2,l*2);
      ellipse(l*8,l*7,l*2,l*2);
    }
  }
  
  void display3(){ 
   /////////////////////////////JUGADOR 2
    //vida
    fill(154,195,89);
    rect(l*86,l*2,PH2*3.65,l*3);
    //criticos
    fill(150,234,223);
    noStroke();
    if (crit2>=1){
      ellipse(l*87,l*7,l*2,l*2);
    }
    if (crit2>=2){
      ellipse(l*87,l*7,l*2,l*2);
      ellipse(l*90,l*7,l*2,l*2);
    }
    if (crit2>=3){
      ellipse(l*87,l*7,l*2,l*2);
      ellipse(l*90,l*7,l*2,l*2);
      ellipse(l*93,l*7,l*2,l*2);
    }
  }
}

//////////////////////////////////////DAÑO
class Damage implements Combate
{
  Damage(){}
  void display1(){
    switch (turno){
      case 1:
        switch(key){
          case 'a':
              if(ctrl==6){scream.trigger();}
              PH2=PH2-damage1;
              if(PH2<=0){
                ctrl=7;
                winner=1;
                keyPressed = false;
              } 
              else{
                turno++;
              }
              if(damage1>=8){
                crit1++;
              }
              break;
            
          case 's':
              if(crit1>=3){
                if (ctrl==6){SCREAM.trigger();}
                PH2=PH2-damage2;
                crit1=0;
                if(PH2<=0){
                  ctrl=7;
                  winner=1;
                  keyPressed = false;
                } 
                else{
                  turno++;
                }
              }  
              break;
              
          case 'd':
              if(crit1>=2){
                purr.trigger();
                PH1=PH1+round((100-PH1)*0.3);
                if(crit1==2){crit1=0;}
                if(crit1>=3){crit1=1;}
                turno++;
              }
              break;
        }
        break;
        
        
      case 2:
        switch(key){
          case 'l':
              if(ctrl==6){scream.trigger();}
              PH1=PH1-damage1;
              if(PH1<=0){
                ctrl=7;
                winner=2;
                keyPressed = false;
              }
              else{
                turno--;
              }
              if (damage1>=8){
                crit2++;
              }
              break;
          
          case 'k':
              if(crit2>=3){
                if (ctrl==6){SCREAM.trigger();}
                PH1=PH1-damage2;
                crit2=0;
                if(PH1<=0){
                  ctrl=7;
                  winner=2;
                  keyPressed = false;
                }
                else{
                  turno--;
                }
              }
              break;
          case 'j':
              if(crit2>=2){
                purr.trigger();
                PH2=PH2+round((100-PH2)*0.3);
                if(crit2==2){crit2=0;}
                if(crit2>=3){crit2=1;}
                turno--;
              }
              break;
        }
        break;
    }
  }
  
  void display2(){}
  void display3(){}
}

//////////////////////////////////////////PERSONAJES E INDICADOR DE TURNO
class Personaje implements Combate{
  Personaje(){}
  
  void display1(){
    if(turno==1){  
      noStroke();
      fill(255,50);
      ellipse(l*35.5,l*75,l*30,l*10);
    }
    if(turno==2){
      noStroke();
      fill(255,50);
      ellipse(l*124,l*75,l*30,l*10);
    }
  }
  
  void display2()
  {
    if(personaje1==1){
      image(Nissi,0,0);
    }
    if(personaje1==2){
      image(Chrona,0,0);
    }
    if(personaje1==3){
      image(Sora,0,0);
    }
    if(personaje1==4){
      image(Cheto,0,0);
    }
    if(personaje1==5){
      image(Brownie,0,0);
    }
    if(personaje1==6){
      image(Mapache,0,0);
    }
  }
  
  void display3(){
    if(personaje2==1){
      image(Nissi2,0,0);
    }
    if(personaje2==2){
      image(Chrona2,0,0);
    }
    if(personaje2==3){
      image(Sora2,0,0);
    }
    if(personaje2==4){
      image(Cheto2,0,0);
    }
    if(personaje2==5){
      image(Brownie2,0,0);
    }
    if(personaje2==6){
      image(Mapache2,0,0);
    }
  }
}
