//declare bacteria variables here   
Bacteria mike1, mike2;
int x= 150;
int y=150;
PImage b;
PImage a;
boolean showmessage = false;
boolean nosleep=false;
void setup()   
{     
  size(300, 300);
  mike1=new Bacteria();
  mike2=new Bacteria();
  b = loadImage("https://cdn.shopify.com/s/files/1/2660/5202/products/zkfd0a3bsj7hrfqllsyk_1400x.jpg?v=1537237010");
  a = loadImage("gamer.jpg");
}   
void draw()   
{    
  background(0);
  mike1.move();
  mike1.show();
  mike2.move();
  mike2.show();
  image(b, 0, 0,80,80);
  image(a, 200,200,80,80);
  if(showmessage==true){
  text("you can't play game!",100,100);
  }else if(nosleep==true){
  text("you can't sleep!",100,100);
  }
}
class Bacteria { 
  int myX, myY, mycolor;
  Bacteria() {
    myX=150;
    myY=150;
    mycolor=color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  void move() {
    if (mouseX>myX) {
      myX=myX+(int)(Math.random()*5)-1;
    } else {
      myX=myX+(int)(Math.random()*5)-3;
    }   
    if (mouseY>myY) {
      myY=myY+(int)(Math.random()*5)-1;
    } else {
      myY=myY+(int)(Math.random()*5)-3;
    }
  }
void show() {
  fill(mycolor);
  ellipse(myX, myY, 50, 50);
  if(myX<60&&myY<60){
  myX=150;
  myY=150;
  nosleep=true;
  }
  else if(myX>200&&myY>200){
  myX=150;
  myY=150;
  showmessage=true;
  
  }
}
}
