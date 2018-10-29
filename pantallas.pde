/////////////////////////////////////////////////////////////////PANTALLA DE INICIO
class PInicio implements Pantallas{
  
  PInicio(){}
  
  void display(){
    if(ctrl==1){
      imageMode(CORNER);
      image(imagen1,0,0);
      noStroke();
      fill(133,151,166);
      rectMode(CENTER);
      rect(width/2,l*70,l*25,l*6,l);
      fill(211,163,163);
      rect(width/2,l*80,l*25,l*6,l);
      fill(255);
      textSize(20);
      text("Jugar",l*75,l*71);
      text("Salir",l*75.5,l*81.5);
    }
  }
  
  int cambioPantalla(){
    if(ctrl==1){
      if((mouseX>=l*68) && (mouseX<=l*91) && 
         (mouseY>=l*67) && (mouseY<=l*73) &&
         (mousePressed)&& (mouseButton==LEFT)){
            ctrl=2;
            boton.trigger();
            println(ctrl);
      }
      if((mouseX>l*68) && (mouseX<l*91) && 
         (mouseY>l*77) && (mouseY<l*83) &&
         (mousePressed)&& (mouseButton==LEFT)){
           exit();
      }
      else{
         mousePressed = false;
      }      
    }
    return ctrl;
  }
}

///////////////////////////////////////////////////////////PANATALLA DE SELECCION 1
class PSeleccion1 implements Pantallas{
  int d1,d2;
  color c;
  
  PSeleccion1(){
    d1 = (l*20);
    d2 = (l*20);
    c = color(133,151,166,80);
  }
  
  void display(){
    if(ctrl==2){
      background(124,117,117);
      image(imagen2,0,0);
       fill(133,151,166);
        textSize(20);
        text("JUGADOR", l*10,l*20);
        textSize(25);
        fill(200);
        text("1",l*30,l*20);
        fill(0);
        textSize(15);
        text("Elige a tu personaje:",l*10,l*25);
        text("Nissi",l*15,l*63);
        text("Chrona",l*38,l*63);
        text("Sora",l*64,l*63);
        text("Cheto",l*85,l*63);
        text("Brownie",l*111,l*63);
        text("Mapache",l*133,l*63);
        fill(150);
        textSize(12);
        text("      El mismo personaje puede ser\nseleccionado por ambos jugadores",l*110,l*20);
    }    
  }
  
  int cambioPantalla(){
    if(ctrl==2){
      if((mouseX>l*10) && (mouseX<l*30) && 
         (mouseY>l*40) && (mouseY<l*59) &&
         (mousePressed)&& (mouseButton==LEFT)){
           noStroke();
           fill(this.c);
           ellipse(l*20,l*48,this.d1,this.d2);
           boton.trigger();
           ctrl=3;
           personaje1=1;
           println(ctrl,personaje1);
      }
      if((mouseX>l*38) && (mouseX<l*52) && 
         (mouseY>l*40) && (mouseY<l*59) &&
         (mousePressed)&& (mouseButton==LEFT)){
           noStroke();
           fill(this.c);
           ellipse(l*43.5,l*48,this.d1,this.d2);
           boton.trigger();
           ctrl=3;
           personaje1=2;
           println(ctrl,personaje1);
      }
      if((mouseX>l*58) && (mouseX<l*76) && 
         (mouseY>l*40) && (mouseY<l*59) &&
         (mousePressed)&& (mouseButton==LEFT)){
           noStroke();
           fill(this.c);
           ellipse(l*67,l*48,this.d1,this.d2); 
           boton.trigger();
           ctrl=3;
           personaje1=3;
           println(ctrl,personaje1);
      }
      if((mouseX>l*83) && (mouseX<l*100) && 
         (mouseY>l*40) && (mouseY<l*59) &&
         (mousePressed)&& (mouseButton==LEFT)){
           noStroke();
           fill(this.c);
           ellipse(l*90,l*48,this.d1,this.d2);
           boton.trigger();
           ctrl=3;
           personaje1=4;
           println(ctrl,personaje1);
      }
      if((mouseX>l*105) && (mouseX<l*123) && 
         (mouseY>l*40) && (mouseY<l*59) &&
         (mousePressed)&& (mouseButton==LEFT)){
           noStroke();
           fill(this.c);
           ellipse(l*114,l*48,this.d1,this.d2);
           boton.trigger();
           ctrl=3;
           personaje1=5;
           println(ctrl,personaje1);
      }
      if((mouseX>l*130) && (mouseX<l*150) && 
         (mouseY>l*40)  && (mouseY<l*60) &&
         (mousePressed) && (mouseButton==LEFT)){
           noStroke();
           fill(this.c);
           ellipse(l*140,l*48,this.d1,this.d2);  
           boton.trigger();
           ctrl=3;
           personaje1=6;
           println(ctrl,personaje1);
      }
      else
      {
        mousePressed = false;
      }      
    }
  return ctrl;
  }
}

///////////////////////////////////////////////////////////PANATALLA DE SELECCION 2
class PSeleccion2 implements Pantallas{
  int d1,d2;
  color c;
  
  PSeleccion2(){
    d1 = (l*20);
    d2 = (l*20);
    c = color(211,163,163,80);
  }
  
  void display(){
    if(ctrl==3){
      noStroke();
      fill(124,117,117);
      rect(0,l*17,l*80,l*8);
      image(imagen2,0,0);
      fill(211,163,163);
      textSize(20);
      text("JUGADOR", l*10,l*20);
      textSize(25);
      fill(200);
      text("2",l*30,l*20);
    }    
  }
  
  int cambioPantalla(){
    if(ctrl==3){
      if((mouseX>l*10) && (mouseX<l*30) && 
         (mouseY>l*40) && (mouseY<l*59) &&
         (mousePressed)&& (mouseButton==LEFT)){
           noStroke();
           fill(this.c);
           ellipse(l*20,l*52,this.d1,this.d2);
           boton.trigger();
           ctrl=4;
           personaje2=1;
           println(ctrl,personaje2);
      }
      if((mouseX>l*38) && (mouseX<l*52) && 
         (mouseY>l*40) && (mouseY<l*59) &&
         (mousePressed)&& (mouseButton==LEFT)){
           noStroke();
           fill(this.c);
           ellipse(l*43.5,l*52,this.d1,this.d2);
           boton.trigger();
           ctrl=4;
           personaje2=2;
           println(ctrl,personaje2);
      }
      if((mouseX>l*58) && (mouseX<l*76) && 
         (mouseY>l*40) && (mouseY<l*59) &&
         (mousePressed)&& (mouseButton==LEFT)){
           noStroke();
           fill(this.c);
           ellipse(l*67,l*52,this.d1,this.d2); 
           boton.trigger();
           ctrl=4;
           personaje2=3;
           println(ctrl,personaje2);
      }
      if((mouseX>l*83) && (mouseX<l*100) && 
         (mouseY>l*40) && (mouseY<l*59) &&
         (mousePressed)&& (mouseButton==LEFT)){
           noStroke();
           fill(this.c);
           ellipse(l*90,l*52,this.d1,this.d2);
           boton.trigger();
           ctrl=4;
           personaje2=4;
           println(ctrl,personaje2);
      }
      if((mouseX>l*105) && (mouseX<l*123) && 
         (mouseY>l*40) && (mouseY<l*59) &&
         (mousePressed)&& (mouseButton==LEFT)){
           noStroke();
           fill(this.c);
           ellipse(l*114,l*52,this.d1,this.d2);  
           boton.trigger();
           ctrl=4;
           personaje2=5;
           println(ctrl,personaje2);
      }
      if((mouseX>l*130) && (mouseX<l*150) && 
         (mouseY>l*40)  && (mouseY<l*60) &&
         (mousePressed) && (mouseButton==LEFT)){
           noStroke();
           fill(this.c);
           ellipse(l*140,l*52,this.d1,this.d2);
           boton.trigger();
           ctrl=4;
           personaje2=6;
           println(ctrl,personaje2);
      }
      else
      {
        mousePressed = false;
      }      
    }
  return ctrl;
  }
}

//////////////////////////////////////////////CONFIRMAR LA SELECCION DE PERDSONAJES
class Confirm implements Pantallas{
  
  Confirm(){}
  
  void display(){
    if(ctrl==4){
      rectMode(CENTER);
      noStroke();
      fill(124,117,117);
      rect(width/2,l*20,width,l*30);
      image(imagen2,0,0);
      fill(200,85 );
      rect(l*52,l*20,l*25,l*6,l);
      rect(l*102,l*20,l*29,l*6,l);
      textSize(15);
      fill(200);
      text("Aceptar",l*46.5,l*21);
      text("Volver a escoger",l*90,l*21);
    }
  }
  int cambioPantalla(){
    if(ctrl==4){
      if((mouseX>=l*39.5) && (mouseX<=l*64.5) && 
         (mouseY>=l*17) && (mouseY<=l*23) &&
         (mousePressed)&& (mouseButton==LEFT)){
           boton.trigger();
           ctrl=5;
           println(ctrl,personaje1,personaje2);
       }
       if((mouseX>=l*87.5) && (mouseX<=l*116.5) && 
         (mouseY>=l*17) && (mouseY<=l*23) &&
         (mousePressed)&& (mouseButton==LEFT)){
           boton.trigger();
           ctrl=2;
           println(ctrl,personaje1,personaje2);
       }
       else
       {
         mousePressed = false;
       }
    }
    return ctrl;
  }
}

////////////////////////////////////////////////////////////////////////////COMBATE
class PCombate implements Pantallas{
  
  PCombate(){}
  
  void display(){
    //INSTRUCCIONES
    if(ctrl==5){
      image(imagen3,0,0);
      if(keyPressed)
        {
          if(key == ENTER)
          {
            ctrl=6;
          }
        }
    }
    
    //COMBATE
    if(ctrl==6){
      cielo(n);
      image(imagen4,0,0);
      for(Combate c: combate){
        c.display1();
        c.display2();
        c.display3();
      }
    }
  }
  
  int cambioPantalla(){
    return ctrl;
  }
}

/////////////////////////////////////////////////////////////////////////RESOLUCION
class PResolucion implements Pantallas{
  
  PResolucion(){}
  
  void display(){
    if (ctrl==7 && winner==1){
      cielo(n);
      image(imagen4,0,0);
       for(Combate c: combate){
        c.display1();
        c.display2();
      }
      image(winner1,0,0);
      fill(50);
      textSize(10);
      text("Escoger personaje        Volver a jugar        Salir",l*94,l*64); 
    }
    if (ctrl==7 && winner==2){
      cielo(n);
      image(imagen4,0,0);
      for(Combate c: combate){
        c.display1();
        c.display3();
      }
      image(winner2,0,0);
      fill(50);
      textSize(10);
      text("Escoger personaje        Volver a jugar        Salir",l*20,l*64); 
    }
  }
  
  int cambioPantalla(){
    if (ctrl==7 && winner==1){
      if((mouseX>=l*92) && (mouseX<=l*115) && 
         (mouseY>=l*62) && (mouseY<=l*66) &&
         (mousePressed)&& (mouseButton==LEFT)){
            boton.trigger();
            ctrl=2;
            Reinicio();
            mousePressed = false;
            println(ctrl);
      }
      if((mouseX>=l*116) && (mouseX<=l*132) && 
         (mouseY>=l*62) && (mouseY<=l*66) &&
         (mousePressed)&& (mouseButton==LEFT)){
            boton.trigger();
            ctrl=6;
            Reinicio();
            mousePressed=false;
            println(ctrl);
      }
      if((mouseX>=l*133) && (mouseX<=l*143) && 
         (mouseY>=l*62) && (mouseY<=l*66) &&
         (mousePressed)&& (mouseButton==LEFT)){
            boton.trigger();
            exit();
      }
    }
    
    if (ctrl==7 && winner==2){
      if((mouseX>=l*18) && (mouseX<=l*41) && 
         (mouseY>=l*62) && (mouseY<=l*66) &&
         (mousePressed)&& (mouseButton==LEFT)){
            boton.trigger();
            ctrl=2;
            Reinicio();
            mousePressed = false;
            println(ctrl);
      }
      if((mouseX>=l*41) && (mouseX<=l*58) && 
         (mouseY>=l*62) && (mouseY<=l*66) &&
         (mousePressed)&& (mouseButton==LEFT)){
            boton.trigger();
            ctrl=6;
            Reinicio();
            mousePressed=false;
            println(ctrl);
      }
      if((mouseX>=l*59) && (mouseX<=l*69) && 
         (mouseY>=l*62) && (mouseY<=l*66) &&
         (mousePressed)&& (mouseButton==LEFT)){
            exit();
      }
    }
    return ctrl;
  }
}
