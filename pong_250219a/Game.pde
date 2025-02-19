class Game{
  // FIELDS
  // players, zones, ball
  Ball b;
  color backgroundColor; // background
  color spriteColor; // walls, ball
  color interactiveColor; // paddles / anything that is controllable
  
  // CONSTRUCTOR
  Game(){
    // default constructor
    backgroundColor = color(random(90), random(90), random(90));
    spriteColor = color(random(90, 180), random(90, 180), random(90, 180));
    interactiveColor = color(random(180, 255), random(180, 255), random(180, 255));
    
    b = new Ball(new PVector(-1, 0));
    b.setColor(spriteColor);
    
  }
  
  // METHODS
  
  // Update positions each frame.
  void update(){
    b.update();
  }
  
  // Draw the game on the screen.
  void display(){
    background(backgroundColor);
    
    b.display();
    
  }
  
}
