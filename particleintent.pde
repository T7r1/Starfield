Particle []bob;
int g=0;
int h=0;
void setup()
{
noStroke();
    size (1000,1000);
  
    bob=new Particle[900];
   for (int i=0;i<bob.length;i++){
  
  bob[i]=new Particle();
   }
}
void draw()
{
 background(0);
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
 Particle(){
  x=Math.random()/5+499.9;
  y=Math.random()/5+499.9;
  ang=Math.random()*2*Math.PI;
  sped=Math.random()*10;
}
void show(){
  fill(255);
  ellipse((float)x,(float)y,r/30,r/30);
}
void move(){
  r=sqrt((float)((x-500)*(x-500)+(y-500)*(y-500)));
    if (g<20000){
      h=0;
  x+=Math.cos(ang)*sped;
  y+=Math.sin(ang)*sped;
    }else{
     x-=Math.cos(ang)*sped;
  y-=Math.sin(ang)*sped;
  if (h>12000)
  g=0;
}
  if (x>1000||y>1000||x<0||y<0){
    g++;
//   x=Math.random()/100+499.995;
//  y=Math.random()/100+499.995;
}
if (r<30){
    h++;
//   x=Math.random()/100+499.995;
//  y=Math.random()/100+499.995;
}
}
}
class OddballParticle //inherits from Particle
{
}
