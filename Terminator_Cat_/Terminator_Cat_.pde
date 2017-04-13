  import ddf.minim.*;
  AudioSample sound;
 int x = 130;
  int y = 287;
  int acceleration = 1;
void setup(){
  Minim minim = new Minim (this);
  sound = minim.loadSample("cat-lazer.wav");
  size(500,500);
  PImage catPic = loadImage("d-neko35795_1036_400x400.jpg");
  catPic.resize(500,500);
  background(catPic);
}
  void draw(){
  if(keyPressed){
    keyPressed();}
  fill(229,25,203);
  println(x);
  
  ellipse(x+147, y-180, 30, 30);
  ellipse(x , y ,30,30);}
  void keyPressed(){
    x= x+acceleration;
    y= y+acceleration;
    acceleration = acceleration*1;
    if(acceleration==1){
      sound.trigger();
      
      println(x+","+y);
      
      
    }
    noStroke();
   
    
  }