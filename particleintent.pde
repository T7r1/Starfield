//Sparfiels: Into the Multiverse
Particle []bob;
void setup()
{
  noStroke();
  background(0);
    size (1000,1000);
  
    bob=new Particle[700];
   for (int i=0;i<bob.length;i++){
  
  bob[i]=new Particle();
   }
    for (int i=0;i<30;i++){
   bob[i]=new odd();
   } 
}
void draw()
{
 //background(0);
 for (int u=0;u<bob.length;u++){
 bob[u].show();
 bob[u].move();

}
//fill(0);
//ellipse(500,500,30,30);
}
class Particle
{  
float r,e;
  double x,y,sped,ang;
  int s;
 Particle(){
  x=Math.random()/5+499.9;
  y=Math.random()/5+499.9;
  ang=Math.random()*2*Math.PI;
  sped=Math.random()/4.11+.005;
  r=0;
  e=1;
}
void show(){

fill(235,235,255);
    ellipse((float)x,(float)y,r*e/40,r*e/40);

  
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
class odd extends Particle{
  //inherits from Particle

  odd(){
  x=Math.random()/5+499.9;
  y=Math.random()/5+499.9;
  s=(int)(Math.random()*10);
  e=1;
  ang=Math.random()*2*Math.PI;
  sped=Math.random()/4.11+.005;
  }
void show(){
if (s==0){
e=4;
fill(200,240,255);

ellipse((float)x,(float)y,r*(e+1)/40,r*(e+1)/40);
fill(76,180,255);

}else if (s==1){
e=4;
fill(255,255,210);

ellipse((float)x,(float)y,r*(e+1)/40,r*(e+1)/40);
fill(255,240,115);

}else{
e=1.2;
  fill(255,240,205);

ellipse((float)x,(float)y,r*(e+1)/45,r*(e+1)/45);
  fill(255,165,100);
}
ellipse((float)x,(float)y,r*e/40,r*e/40);

  
}
}
