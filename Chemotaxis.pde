Bacteria back;
Bacteria [] backtoback= new Bacteria[30];
 void setup()   
 {     

   size(500,500);
     int n= (int)(Math.random()*500);
  int t= (int)(Math.random()*500);
  for(int i=0;i<backtoback.length;i++){
    backtoback[i]= new Bacteria (250,250,100);
  }
 }   
 void draw()   
 {    
      background(0,100,500);
  back=new Bacteria(250,250,100);
  back.move();
  back.show();
  for(int i=0;i<backtoback.length;i++){
    backtoback[i].move();
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
     ellipse(x,y,7,7);
     ellipse(x+10,y,13,3);
     ellipse(x-10,y,13,3);
   }
 }  
