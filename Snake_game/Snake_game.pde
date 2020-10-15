int xPos = 250;
int yPos = 250;
float xPosA = random(10,490);
float yPosA = random(10,490);
int numSnake = 1;
int locXPos;
int locYPos;

// I am making this change to test github


void setup(){
  size(500,500);
}


void draw(){
  boolean hasFound = false;
  if (keyPressed){
    locXPos = xPos;
    locYPos = yPos;
    if(frameCount %2==0){
    switch(key){
      case 'a':
      case 'A':
        xPos--;
        locXPos = locXPos - 20;
        break;
      case 's':
      case 'S':
      yPos++;
      locYPos = locYPos + 20;
        break;
      case 'd':
      case 'D':
      xPos++;
      locXPos = locXPos + 20;
        break;
      case 'w':
      case 'W':
      yPos--;
      locYPos = locYPos - 20;
        break;
      case 'p':
        hasFound = true;
        break;
      default:
        println("wrong key entered");
    }
    }
  }
  printSnake(locXPos, locYPos);
  println("xpos = ", xPos, "ypos = ", yPos, "xposa = ", (int)xPosA,"yposa = ", (int)yPosA);
  if(found(xPos,yPos,(int)xPosA,(int)yPosA)){
    hasFound = true;
  }
  if(hasFound){
    xPosA = random(20 , 480);
    yPosA = random(20, 480);
    hasFound = false;
    numSnake++;
  }
  fill(201,32,32);
  rect(xPosA, yPosA, 10, 10);
  
}

boolean found(int xPos, int yPos, int xPosA, int yPosA){
  boolean yFound = false;
  boolean xFound = false;
   ((xPos - (int)xPosA) < 10 && (xPos - (int)xPosA) > -10) && ((yPos - (int)yPosA) < 10 && (yPos - (int)yPosA) > -10)
  return true;
}

void printSnake(int locXPos, int locYPos){
  fill(50, 156,52);
  if(numSnake < 2){
    background(0);
  }
  for(int i=0; i< numSnake; i++){
    if(i==0){
    rect(xPos,yPos,20,20);
    }
    else{
      //rect(locXPos,locYPos,20,20);
    }
  }
}
