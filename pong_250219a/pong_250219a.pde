Game g;

void setup(){
  size(800, 600);
  g = new Game();
}

void draw(){
  g.update();
  g.display();
}

// CLASSES
// design patterns...? command, observer

// ball (potentially multiple?): position, radius, fill

// zones: position, size, fill, stroke
  // wall
    // paddle
  // goal
  
// player: control mappings, paddle, fill, name
