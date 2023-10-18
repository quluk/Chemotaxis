Bacteria back;
Bacteria [] backtoback= new Bacteria[30];
 void setup()   
 {     
     int n= (int)(Math.random()*500);
  int t= (int)(Math.random()*500);
  for(int i=0;i<backtoback.length;i++){
    backtoback[i]= new Bacteria (250,250,100);
  }
  background(0,150,50);
  size(1000,1000);
  textAlign(CENTER,CENTER);
  noLoop();
 }   
 void draw()   
 {    
      background(0,100,500);
  back=new Bacteria(250,250,100);
  //back.move();
  back.show();
  for(int i=0;i<backtoback.length;i++){
    //backtoback[i].move();
    backtoback[i].show();
  }
  }
  
 class Bacteria   
 {     
   int x, y, colour;
   Bacteria(int mx, int my, int mcolour){
     x=my;
     y=mx;
     colour=mcolour;
   }
   void move(){
       x=x+(int)(Math.random()*6)-3;
       y=y+(int)(Math.random()*6)-3;
       System.out.println(x+y);
   }
   void show(){
     fill(0,0,0);
     ellipse(x,y,70,7);
     ellipse(x+10,y,13,3);
     ellipse(x-10,y,13,3);
   }
 }  
