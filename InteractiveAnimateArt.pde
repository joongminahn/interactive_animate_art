ArrayList<WAVE> waves=new ArrayList<WAVE>();//a waves array list
PImage[] mars=new PImage[3];
Eva myEva= new Eva();
WallE myWallE= new WallE();
Planets myPlanets= new Planets();
Dust myDust=new Dust();
Mars myMars=new Mars();

void setup(){
  size(980,556);
  for(int i=0; i<mars.length;i++){
   mars[i]=loadImage("mars"+i+".jpg");
  }
//If the images,mars(es) pass to Mars class constructor and run keyPressed on the class, 
//entire framerate become too slow to be natural, even I used frameRate fuction.
//Thus, I put the images on here, main environment.      
  }//voidSetupEnd

void draw(){//call classes  
  myMars.display();
  myMars.keyPressed();
  myPlanets.display();
  myDust.display();
  myEva.display();
  myWallE.display();

  for(int i=0; i< waves.size(); i++){//use wave array list
  WAVE myWave=waves.get(i);//callClass
  myWave.display();
  myWave.move();
  if(myWave.del==true){
    waves.remove(i); //if wave size is maximum, remove it.
 }; 
   }//forEnd   
    }//voidDrawEnd

void mouseReleased(){//if click in and off mouse, waves appear
  waves.add(new WAVE(mouseX,mouseY));//callClass
}
