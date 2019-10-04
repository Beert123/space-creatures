 
 float x = 10;
 float y = 10;
 float hastighed = 5;
 float diameter=1;

int[] monsterX =new int[20];
int[] monsterY =new int[20];
int[] monsterYSpeed = new int[20];
int[] monsterXSpeed = new int[20];
int[] monsterXStorrelse = new int[20];
int[] monsterYStorrlese = new int[20];


void setup (){
  size(500,500);
 // frameRate(hastighed);
 for(int i=0;i<20;i++){
 monsterX[i]=(int)random(1,500);
 monsterY[i]=(int)random(1,500);
 monsterYSpeed[i]=(int)random(1,3);
 monsterXSpeed[i]=(int)random(1,3);
 monsterXStorrelse[i] =(int)random(20,50);
 monsterYStorrlese[i] =(int)random(20,50);
 } 


}
void draw(){
  background(125);
  
 for(int i=0;i<20;i++){
  monsterX[i]=monsterX[i]+monsterXSpeed[i];
  monsterY[i]=monsterY[i]+monsterYSpeed[i];
  display(monsterX[i],monsterY[i],monsterXSpeed[i],monsterYSpeed[i],monsterXStorrelse[i],monsterYStorrlese[i]);
  move();
  storLille();
 }

}

void move (){
  for(int i=0;i<20;i++){
  if(monsterX[i]>width){
   monsterX[i] =0;
  }
  else{
   if(monsterY[i] > height){
    monsterY[i]=0; 
   }
  }
  }
  
}
void storLille(){
  for(int i=0;i<20;i++){
    
  }
}

void display(float x, float y, float xspeed,float yspeed,float c, float z){
rectMode(CENTER);
diameter = diameter +0.0005;
  ellipse (x,y,c*diameter,z*diameter);
  rect(x,y+10,25,-7);
  ellipse(x-10,y-7,10,10);
  ellipse(x+10,y-7,10,10);
}
