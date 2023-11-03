
Particle []bob;
void setup()
{
  //noStroke();
  background(255);
    size (1000,1000);
  
    bob=new Particle[500];
   for (int i=0;i<bob.length;i++){
  
  bob[i]=new Particle();
   }
   // for (int i=0;i<30;i++){
   //bob[i]=new odd();
   //} 
}
void draw()
{
 background(255);
 for (int u=0;u<bob.length;u++){
 bob[u].show();
 bob[u].move();

}
//fill(0);
//ellipse(500,500,30,30);
}
class Particle
{  
float r;
  double x,y,sped,ang;
  int s;
 Particle(){
  x=Math.random()/5+499.9;
  y=Math.random()/5+499.9;
  ang=Math.random()*2*Math.PI;
  sped=Math.random()/4.11+.005;
  r=0;
}
void show(){

fill(235,235,255);
line((float)(x-Math.cos(ang)*sped*r),(float)(y-Math.sin(ang)*sped*r),(float)x,(float)y);

   // ellipse((float)x,(float)y,r/40,r/40);

  
}
void move(){
  r=sqrt((float)((x-500)*(x-500)+(y-500)*(y-500)));
  x+=Math.cos(ang)*sped*r;
  y+=Math.sin(ang)*sped*r;
  
  if (x>1050||y>1050||x<-50||y<-50){
  ang=Math.random()*2*Math.PI;
  r=0;
  x=Math.random()/100+499.995;
  y=Math.random()/100+499.995;
}
}
}
//class odd extends Particle{
//  //inherits from Particle

//  odd(){
//  x=Math.random()/5+499.9;
//  y=Math.random()/5+499.9;
//  s=(int)(Math.random()*10);
//  ang=Math.random()*2*Math.PI;
//  sped=Math.random()/4.11+.005;
//  }
//void show(){

//line((float)x,(float)y,(float)x,(float)y)
////,r/40,r/40);

  
//}
//}
