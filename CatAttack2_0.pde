//___________________________________________________________YADIRA DIAZ RODRIGUEZ
//________________________________________________PROGRAMACION ORIENTADA A OBJETOS
//______________________________________________________________________PROYECTO 3

import ddf.minim.*;

//////////////////////////////////////////////////VARIABLES
int ctrl=1;
int personaje1, personaje2;
int l=5;
int c=0;
float n;
int crit1=0;
int crit2=0;
int PH1=100;
int PH2=100;
int turno=1;
int damage1;
int damage2;
int winner;
/////////////////////////////////////////////////////MUSICA
Minim soundengine;
AudioSample boton;
AudioSample scream;
AudioSample SCREAM;
AudioSample purr;
AudioSample soundTrack;
///////////////////////////////////////////////////IMAGENES
PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage Nissi, Chrona, Sora, Cheto, Brownie, Mapache;
PImage Nissi2, Chrona2, Sora2, Cheto2, Brownie2, Mapache2;
PImage winner1, winner2;

ArrayList <Pantallas> pantallas;
ArrayList <Combate> combate;

void setup(){
  size(800,465);
  
  imagen1 = loadImage("CatAttacInicio.png");
  imagen2 = loadImage("CatAttacSeleccion.png");
  imagen3 = loadImage("CatAttakInstrucciones.png");
  imagen4 = loadImage("CatAttacCombate.png");
  Nissi = loadImage("CatAttacNissi.png");
  Chrona = loadImage("CatAttacChrona.png");
  Sora = loadImage("CatAttacSora.png");
  Cheto = loadImage("CatAttacCheto.png");
  Brownie = loadImage("CatAttacBrownie.png");
  Mapache = loadImage("CatAttacMapache.png");
  Nissi2 = loadImage("CatAttacNissi2.png");
  Chrona2 = loadImage("CatAttacChrona2.png");
  Sora2 = loadImage("CatAttacSora2.png");
  Cheto2 = loadImage("CatAttacCheto2.png");
  Brownie2 = loadImage("CatAttacBrownie2.png");
  Mapache2 = loadImage("CatAttacMapache2.png");
  winner1 = loadImage("CatAttakWIN1.png");
  winner2 = loadImage("CatAttakWIN2.png");
  
  soundengine = new Minim(this);
  boton = soundengine.loadSample("purirupu.mp3",1024);
  scream = soundengine.loadSample("cat.mp3",1024);
  SCREAM = soundengine.loadSample("catScream.mp3",1024);
  purr = soundengine.loadSample("catPurr.mp3",1024);
  soundTrack = soundengine.loadSample("Cat Bird OST - 04 Marda Theme.mp3",1024); 
  soundTrack.trigger();
  
  pantallas= new ArrayList <Pantallas>();
  pantallas.add(new PInicio());
  pantallas.add(new PSeleccion1());
  pantallas.add(new PSeleccion2());
  pantallas.add(new Confirm());
  pantallas.add(new PCombate());
  pantallas.add(new PResolucion());
  
  combate= new ArrayList <Combate>();
  combate.add(new BarraPH());
  combate.add(new Damage());
  combate.add(new Personaje()); 
}

void draw(){
  n+=0.01;

  damage1=round(random(10,20));
  damage2=round(random(20,40));
  
  for(Pantallas p: pantallas){
    p.display();
    p.cambioPantalla();
  }
}
