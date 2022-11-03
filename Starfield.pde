Particle[] hi =  new Particle[1000];
void setup(){
  size(500,500);
   for(int i = 0; i < hi.length ; i++){
  hi[i] = new Particle();
  }
}
void draw(){
  background(0);
  for(int i = 0; i < hi.length; i++){
  hi[i].show();
  hi[i].move();
  }
}
class Particle{
  int myC;
  double myX, myY, myA, myS;
    Particle(){
      myX = 250;
      myY = 250;
      myA = Math.random()*2*Math.PI; 
      myC = color((int)(Math.random()*256),(int)(Math.random()*256), 
      (int)(Math.random()*256));
      myS = (Math.random()*10)+1;
    }
    void move(){
      myX = myX + (Math.cos(myA)*myS);
      myY = myY + (Math.sin(myA)*myS);
    }
    void show(){
      fill(myC);
      ellipse((float)myX,(float)myY,10,10);
}
class OddballParticle extends Particle{
  OddballParticle(){
      myX = 250;
      myY = 250;
      myA = Math.random()*2*Math.PI; 
      myC = color((int)(Math.random()*256),(int)(Math.random()*256), 
      (int)(Math.random()*256));
      myS = Math.random()*10;
  }
    void move(){
      myX = myX + (Math.cos(myA)*myS);
      myY = myY + (Math.sin(myA)*myS);
    }
    void show(){
      fill(myC);
      ellipse((float)myX,(float)myY,50,50);
    }
}
}
class OddballParticle extends Particle{
  OddballParticle(){
      myX = 250;
      myY = 250;
      myA = Math.random()*2*Math.PI; 
      myC = color((int)(Math.random()*256),(int)(Math.random()*256), 
      (int)(Math.random()*256));
      myS = Math.random()*10;
}
}
