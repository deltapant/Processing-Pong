int paddle=35;
int x,y,gameScore=0;
int moveX=-10;
int moveY=-10;
int gameOver=0;
void setup()
{
  size(800, 600);
  x=(int)random(width);
  y=height-paddle;
}
void draw()
{
  if(gameOver==0)
  {
  background (44, 101, 193);
  text("SCORE:"+gameScore,width/2, height/2);
  rect(mouseX,height-paddle,150,paddle);
  ellipse(x,y,10,10);
  x=x+moveX;
  y=y+moveY;
  if(x<0 | x>width)
  {
    moveX=-moveX;
  }
  if(y<0)
  {
    moveY=-moveY;
  }
  if(y>height-paddle)
  {
    if(x>mouseX && x<mouseX+200)
    {
      moveY=-moveY; 
      gameScore++;
    }
    else
    {
      gameOverSplash();
    }
  }
  }
  else
  {
    background(100,100,200);
    text("GAME OVER!",width/2,height/2+20);
  }
}
void gameOverSplash()
{
  gameOver=1;
}
void mouseClicked()
{
  moveY=-moveY;
  gameScore=0;
  gameOver=0;
}