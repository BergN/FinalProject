class Ball {
  
  
  float x; // x position of the ball
  float y; // y position of the ball
  float xspeed; // xspeed of the ball
  float yspeed; // yspeed of the ball
  float R; // radius of the ball
  
  
  
  // Pong Ball constructor 
  
  Ball(){
    noStroke();
    this.x = 300;
    this.y = 300;
    this.xspeed = 0;
    this.yspeed = 7.5;
    this.R = 15;
  }
  
  
  void update(){
   
    noStroke();
    
    fill(255);
    ellipse(this.x, this.y, R, R);
    
    
    this.x += this.xspeed;
    this.y += this.yspeed;
    
    
    
    
  }
  
  

  
  
  void moveLeft(){
  
    this.xspeed = -1*abs(this.xspeed);
  
  }
  
  void moveRight(){
  
    //this.xspeed = 1;
    this.xspeed = abs(this.xspeed*1);
  
  }
  
  
  void flipY(){
    
    this.yspeed = -1*this.yspeed;
  }
  
  void hit() {
    
    // If it hits the left side of the paddle, bounce left
    
    if (((this.x < mouseX + 50) && (this.x > mouseX)) 
    && ((this.y < 670) && (this.y > 640))) {
    
      flipY();
      moveLeft();
      this.xspeed -= .7;
    }
    
    // If it hits the right side of the paddle
    if (((this.x <= mouseX + 100) && (this.x >= mouseX + 50)) 
    && ((this.y <= 670) && (this.y >= 640))) {
    
      flipY();
      moveRight();
      this.xspeed += .7;
    }
    
  }
  
  
  void edges() {
  
  if (this.x == borderWidth-scl){
   
    moveLeft();
    
  }
  
  if (this.x == 0) {
  
    moveRight();
  }
  
  if ((this.y == 0) ){ //|| (this.y == 0)){
    
    flipY();
    
  }
    
  if (this.y == borderHeight-scl) {
  
    stopGame = true;
    text("Your score is:", 400, 500);
    text(score, 500, 500);
    score = 0;
  
  }
  
  if (score == (rows*columns)){
  
    stopGame = true;
    text("WELL DONE", 600, 600);
  }
  
}
  
  
  float getX() {
  
  return this.x;
  
  
  }
  
  
  
  void gameOver(){
  
  if (this.x == borderHeight){
    
    stopGame = true;
    score = 0;
  }
  
  
}
  
  
  
  
}
