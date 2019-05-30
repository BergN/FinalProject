# FinalProject
# Project Title and purpose

My goal for this project was to recreate the classic game Brick Breaker. I originally had aimed to have multiple levels and difficulties but because of time restraints, I wasn't able to do that. I have one level and one difficulty but it keeps score. 

### Difficulties or opportunities you encountered along the way.

The toughest part was trying to get the bricks to disappear and not still get hit after disappearing. I got to the point where the brick would disappear but the ball would still hit the invisible brick after. Figuring out how to not make it hit the invisible brick took a little bit of time but I eventually got it figured out.

### Most interesting piece of your code and explanation for what it does.

```Java
void hit() {
    
    // If it hits the left side of the paddle, bounce left
    
    if (((this.x < mouseX + 50) && (this.x > mouseX)) && ((this.y < 670) && (this.y > 640))) {    
      flipY();
      moveLeft();
      this.xspeed -= .7;
    }
    
    // If it hits the right side of the paddle
    if (((this.x <= mouseX + 100) && (this.x >= mouseX + 50)) && ((this.y <= 670) && (this.y >= 640))) {
      flipY();
      moveRight();
      this.xspeed += .7;
    }    
  }
```
This is the code that determines which direction the ball goes when it hits the paddle. It checks the position of the ball on the paddle and if it hit the left half, the ball will go back up and to the left. If it hits the right half of the paddle, it goes back up and to the right.
## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

* **Noah Berg** 

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
