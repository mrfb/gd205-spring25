interface Command{
  void execute();
}

class Notifier implements Command{
  void execute(){
    println("In the zone!");
  }
}

class Wall implements Command{
  void execute(){
    g.getBall().bounce();
    println("Bounced!");
  }
}

class Goal implements Command{
  
  void execute(){
    // todo: add score to goal
    println("Score!");
  }
}
