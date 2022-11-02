Particle[] hi =  new Particle[1000];
OddballParticle bye;
void setup()
{
  size(500,500);
   for(int i = 0; i < hi.length ; i++){
  hi[i] = new Particle();
  hi[0] = new OddballParticle();
  }
}
void draw()
{
  background(0,0);
  
}
class Particle{
  int myC;
  double myX, myY, myA, myS;
    Particle(){
      myX = 250;
      myY = 250;
      myA = Math.random()*2*Math.PI; 
      myC = color((int)(Math.random()*256),(int)(Math.random()*256), 
      (int)(Math.random()*256);
      myS = Math.random()*10;
    }
    void move(){
      myX = myX + (Math.cos(myA)myS);
      myY = myY + (Math.sin(myA)myS);
    }
    void show(){
      
}

class OddballParticle extends Particle{
  OddballParticle(){
      myX = 250;
      myY = 250;
      myA = Math.random()*2*Math.PI; 
      myC = color((int)(Math.random()*256),(int)(Math.random()*256), 
      (int)(Math.random()*256);
      myS = Math.random()*10;
}
}
}

