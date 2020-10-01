int xPos = 250;
int yPos = 250;
float xPosA = random(10,490);
float yPosA = random(10,490);
int numSnake = 1;
int locXPos;
int locYPos;




void setup(){
  size(500,500);
}


void draw(){
  boolean hasFound = false;
  if (keyPressed){
    locXPos = xPos;
    locYPos = yPos;
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
    }
  }
  printSnake(locXPos, locYPos);
  //println("xpos = ", xPos, "ypos = ", yPos, "xposa = ", (int)xPosA,"yposa = ", (int)yPosA);
  if(((xPos - (int)xPosA) < 10 && (xPos - (int)xPosA) > -10) && ((yPos - (int)yPosA) < 10 && (yPos - (int)yPosA) > -10)){
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

void printSnake(int locXPos, int locYPos){
  background(0);
  fill(50, 156,52);
  for(int i=0; i< numSnake; i++){
    if(i==0){
    rect(xPos,yPos,20,20);
    }
    else{
      //locXPos = locXPos - 20;
      //locYPos = locYPos - 20;
      println("snake: ", i, "x: ",locXPos,"y: ",locYPos);
      rect(locXPos,locYPos,20,20);
      
    }
  }
}

//void move(){
//  x = x +speed;
//  if(x > width){
//    x = 0;
//  }
//}

//void display(){
// fill(c);
// rect(x,y,30,10);
//}
