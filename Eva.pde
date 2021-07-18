class Eva{//Object on time based motion(to-and-fro motion)
 int ypos=287;
 int val =0; //control the y position for to-and-fro motion.
 PImage eva; 
  Eva(){} 
  
  void display(){
    eva=loadImage("eva.png"); 
    image(eva,278,ypos,82,173);
     if(val==0){
     ypos=ypos-1;
   }else if(val==1){
   ypos=ypos+1;
   }
     if(ypos-173==height%2+50){
     val =1;
   }else if(ypos==270){
     val=0;
   }
  }//display end
}//classEva end
