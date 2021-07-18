class WallE{ 
  //run object movement with keypressed function of left and right arrows.
   float xpos,ypos;
   PImage wE;
   WallE(){
     xpos=554;
     ypos=320;  
  }//WallE end
  void display(){
    wE=loadImage("wallE.png");
   image(wE,xpos,ypos);
   if(keyPressed){
       if(keyCode==LEFT){
       xpos-=10;//as much       
     }else if(keyCode==RIGHT){
       xpos+=10;//as much
     }   
   //}//keyPressedEnd
    }//display end

}//classWallE end
}
