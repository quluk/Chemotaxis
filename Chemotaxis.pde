Bacteria back;
Bacteria [] backtoback= new Bacteria[30];
Cup bowl;
 void setup()   
 {     
 back=new Bacteria(250,250,100);
 bowl=new Cup(250,250);
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
 
  back.move();
  back.show();
  bowl.move();
  bowl.show();
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
        x=x+(int)((Math.random()*6)-3);
       y=y+(int)((Math.random()*6)-3);
       if(x>500)
         x=500;
       if(x<0)
         x=0; 
       if(y>500)
         y=500;
       if(y<0)
         y=0;

         if (mouseX-x<=45 && mouseX-x>=-45 && mouseY-y<=45 && mouseY-y>=-45){
           int hr= (int)((Math.random()*20)-10);
            if (mouseX-x<=45)
              x=mouseX+hr;
            if (mouseX-x>=-45)
              x=mouseX+hr;
              //y
              int ur= (int)((Math.random()*20)-10);
            if (mouseY-y<=45)
              y=mouseY+ur;
            if (mouseY-y>=-45)
              y=mouseY+ur;
            
         }
   }
         

   void show(){
     fill(0,0,0);
     ellipse(x,y,7,7);
     ellipse(x+10,y,13,3);
     ellipse(x-10,y,13,3);
   }
 }

 class Cup
 {
   int n,m;
   Cup(int nb, int mb){
     n=nb;
     m=mb;
   }
   void move(){
     n=mouseX;
     m=mouseY;
   }
   void show(){
     strokeWeight(5);
     noFill();
     ellipse(n,m,90,90);
     strokeWeight(1);
   }
 }
