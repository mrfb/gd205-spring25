class Ball{
  // FIELDS
  private PVector position_;
  private PVector velocity_;
  private PVector acceleration_;
  private float radius_ = 20;
  private color fill_;
  private float speed_ = 3;
  
  // observers might go here...?
  
  // CONSTRUCTOR
  Ball(PVector serveDirection){
    position_ = new PVector(width/2, height/2);
    velocity_ = new PVector(serveDirection.x, serveDirection.y).normalize().mult(speed_);
    acceleration_ = new PVector(0, 0);
  }
  
  // random direction constructor
  Ball(){
    position_ = new PVector(width/2, height/2);
    velocity_ = PVector.random2D();
    acceleration_ = new PVector(0, 0);
  }
  
  // METHODS
  void update(){
    position_.add(velocity_);
    velocity_.add(acceleration_);
    
    // maybe constrain speed here
  }
  
  void display(){
    fill(fill_);
    noStroke();
    circle(position_.x, position_.y, radius_);
  }
  
  void setColor(color c){
    fill_ = c;
  }
  
  PVector getPosition(){
    return position_;
  }
}
