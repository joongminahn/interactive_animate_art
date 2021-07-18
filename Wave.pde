class WAVE
//make irregular Eve's radar waves which is finding the plant WallE has.
//To realize natural repeated radar waves pattern, I tried to control each ellipse size,
//alpha values decreasing when the ellipse size is bigger for waves to disappear. 
{
  float xpos;
  float ypos;//dropping waves position 
  float r=0;//diameter, waves spreads 
  float speed;//spreadingWaveSpeed
  float maxR;//max size of diameter for fading waves out 
  boolean del=false;
  float rRandom;//irregular ellipse size as a pattern appeared
  float alpha=255;//color value//decrease the color value when wave size is bigger
  
  WAVE(float this_xpos, float this_ypos)//temporaryVariants
  {
    xpos=this_xpos;
    ypos=this_ypos;
    maxR=random(200,400);
    speed=random(2,4);
    rRandom=random(0.2,0.8);
  }//initialize variables
  
  void display()//visualization
  { noFill();
    stroke(#22ff22,alpha); 
    ellipse(xpos,ypos,r,r);
    ellipse(xpos,ypos,r*rRandom,r*rRandom);
    ellipse(xpos,ypos,r*(rRandom*2),r*(rRandom*2));
    //layered ellipses//randomly sizing waves
  }
  
  void move()
  { r+=speed; //gradually increase speed 
    alpha=map(r, 0, maxR,255,0);//the bigger r value is,
    //the smaller the alpha value is.
  }//void move end
}//class Wave end
