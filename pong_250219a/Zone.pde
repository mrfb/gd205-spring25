class Zone{
  // FIELDS
  private PVector position_;
  private PVector size_;
  private color fill_ = #ff00ff;
  private Command collisionBehavior_;
  
  // CONSTRUCTORS
  Zone(float x, float y, float w, float h){
    position_ = new PVector(x, y);
    size_ = new PVector(w, h);
    collisionBehavior_ = new Command();
  }
  
  // METHODS
  void update(){
    if(isColliding(g.b.getPosition())){
      collisionBehavior_.execute();
    }
  }
  
  void display(){
    fill(fill_);
    noStroke();
    rect(position_.x, position_.y, size_.x, size_.y);
  }
  
  boolean isColliding(PVector p){
    boolean xCollide, yCollide;
    xCollide = (p.x > position_.x) && (p.x < position_.x + size_.x);
    yCollide = (p.y > position_.y) && (p.y < position_.y + size_.y);
    
    return xCollide && yCollide;
  }
  
  void move(float x, float y){
    position_.add(x, y);
  }
  
  void setColor(color c){
    fill_ = c;
  }
}
