class Planets{
  PImage[] planets=new PImage[8];//An array of images of planets  
  Planets(){};
  
  void display(){
     for(int i=0; i< planets.length;i++){
      planets[i]=loadImage("planet"+i+".png");//To call file series with numb,
      //put the +i+ on behind the file name.
    };//for end
    image(planets[0],77,160,84,85);
    image(planets[1],191,180,42,43);
    image(planets[2],357,78,29,29);
    image(planets[3],449,136,55,55); 
    image(planets[4],109,590,27,27); 
    image(planets[5],629,93,87,50);
    image(planets[6],855,45,68,66);
    image(planets[7],836,119,128,84);
    
  };//displayEnd
}//classPlanetsEnd
