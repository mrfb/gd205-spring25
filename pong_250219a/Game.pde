class Game{
  // FIELDS
  // players, zones, ball
  Ball b;
  color backgroundColor; // background
  color spriteColor; // walls, ball
  color interactiveColor; // paddles / anything that is controllable
  ArrayList<Zone> zones;
  ArrayList<Player> players;
  
  // CONSTRUCTOR
  Game(){
    // default constructor
    backgroundColor = color(random(90), random(90), random(90));
    spriteColor = color(random(90, 180), random(90, 180), random(90, 180));
    interactiveColor = color(random(180, 255), random(180, 255), random(180, 255));
    
    b = new Ball(new PVector(-1, 0));
    b.setColor(spriteColor);
    
    zones = new ArrayList<Zone>();
    
    // BUILD WALLS
    Zone leftWall = new Zone(-10, -10, 20, height + 20, "WALL");
    Zone rightWall = new Zone(width-10, -10, 20, height + 20, "WALL");
    Zone topWall = new Zone(10, -10, width - 20, 20, "WALL");
    Zone bottomWall = new Zone(10, height-10, width - 20, 20, "WALL");
    addZone(leftWall);
    addZone(rightWall);
    addZone(topWall);
    addZone(bottomWall);
    
    // set everything to the non-interactive object color
    for(Zone z : zones){
      z.setColor(spriteColor);
    }
    
    players = new ArrayList<Player>();
    
    Zone tempPaddle = new Zone(30, 30, 20, 50, "WALL");
    Zone tempGoal = new Zone(width - 30, 10, 20, height - 20, "GOAL");
    tempPaddle.setColor(interactiveColor);
    tempGoal.setColor(interactiveColor);
    addZone(tempPaddle);
    addZone(tempGoal);
    
    
  }
  
  // METHODS
  // Update positions each frame.
  void update(){
    b.update();
    for(Zone z : zones){
      z.update();
    }
  }
  
  // Draw the game on the screen.
  void display(){
    background(backgroundColor);
    
    for(Zone z : zones){
      z.display();
    }
    
    b.display();
    
  }
  
  void addZone(Zone z){
    zones.add(z);
  }
  
  Ball getBall(){
    return b;
  }
}
