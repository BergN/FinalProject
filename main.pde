int scl = 20; // the current scale of the game 
int borderWidth = 800; // X dimension of game screen
int borderHeight = 800; // Y dimension of game screen
int rows = 5;
int columns = 5;
int gridStack = rows*columns;
Brick[] box = new Brick[gridStack];
Ball ball;
int score;
boolean stopGame = false; // Determines whether game is over


/**
* sets inital size of screen
**/


void setup() {
  
  for (int i = 0; i < rows; i++)
  {
    for (int j = 0; j< columns; j++)
    {
      box[i*rows + j] = new Brick((i+1) *width/(rows + 2), (j+1) * 50); //places all the bricks into the array, properly labelled.
    }
  }
  // some comment
  ball = new Ball();
  smooth();
  frameRate(30);
  size(1680, 800);
  score = 0;
}

void draw() {
  
  
  if (stopGame) {
    text("GAME OVER", 200, 550);
  }
  
  else {
  background(0);  
  fill(255);
  rect(mouseX, 650, 100, 10); // paddle
 
  
  for (int i = 0; i<gridStack; i++)
  {
    box[i].update();
  }
  
  
  ball.update();

  ball.hit();
  ball.edges();
  ball.gameOver();
  
  for (int i = 0; i<gridStack; i++)
  {
   
    if (((ball.y - ball.R <= box[i].y + box[i].h) && ball.y - ball.R >= box[i].y) 
  && (ball.x >= box[i].x) && (ball.x <= box[i].x + box[i].w) && (box[i].struck == false)) {
  
  
    ball.flipY();
    box[i].gotStruck();
    score++;
    
    
  }
  
  
  if (((ball.y + ball.R >= box[i].y) && (ball.y - ball.R <= box[i].y + 0.5*box[i].h) 
  && (ball.x >= box[i].x) && (ball.x <= box[i].x + box[i].w) && (box[i].struck == false))) {
  
  
    ball.flipY();
    box[i].gotStruck();
    
    score++;
  }
    
  
  }
  
  
  text(score, 100, 500);



}

}
