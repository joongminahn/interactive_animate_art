class Dust{
  //Generate dusts on random position to each dust 
  int num; //control the number of shapes
  int xpos[]=new int[100];
  int ypos[]=new int[100];
   
 Dust(){
      num=50;
      for(int i =0; i < num; i++)
      {//repeat and assign as local variable value for each shape
      //set random x,ypositions in each value scope  
        xpos[i]=int(random(1000));//i: 0~50//
        ypos[i]=int(random(300));//i:0~50
       }
     }//DustEnd
     
 void display(){//visualize shapes //use array lists
      num=40;
      for(int i=0; i<num; i=i+1){ //run shapes' movement
      noStroke();
      fill(#aa44ff);
      rect(xpos[i], ypos[i],6,2); 
      fill(#ee22ff);
      ellipse((xpos[i]+40),(ypos[i]+30),4,4);
      xpos[i]+=2; //left to right with speed      
      if(xpos[i]>width){//initialize x position
      xpos[i]=-15;}
    }//voidDisplayEnd
}//class DustEnd  

}//classDustEnd
