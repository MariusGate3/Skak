class Pawn {


  Boolean taken = false;
  int x, y;
  String colour;
  Boolean selected = false;

  boolean clicked;
  boolean Pressed;
  Boolean firstTurn = true;

  Pawn(int x, int y, String colour) {

    this.x = x;
    this.y = y;
    this.colour = colour;
  }

  boolean overField() {
    if (mouseX >= x && mouseX <= x+100 && mouseY >= y && mouseY <= y + 100) {

      return true;
    } else
      return false;
  }




  void fieldClicked() {
    if (mousePressed == true && mouseButton == LEFT && Pressed == false) {
      println("clicked");
      Pressed = true;
      if (overField()) {
        selected = true;

        clicked = true;
      }
    } else if (mousePressed == true && mouseButton == RIGHT) {
      clicked = false;
      Pressed = false;
      selected =false;
    }

    //  println(clicked);
  }

  boolean isClicked() {

    return clicked;
  }

  void move() {

    if (selected) {

      if (colour == "White") {
       
        if (mouseY>y+100 && mousePressed && mouseButton == LEFT) {
          if (firstTurn == true && mouseY>y+300) {
            firstTurn = false;
            y=y+200;
          } else
            y=y+100;
        }
      }
      
      if (colour == "Black") {
       
        if (mouseY<y && mousePressed && mouseButton == LEFT) {
          if (firstTurn == true && mouseY<y-200) {
            firstTurn = false;
            y=y-200;
          } else
            y=y-100;
        }
      }
      
    }
  }




  void drawPawn() {

    if (!taken && colour == "White") {
      PImage PawnW = loadImage("PawnW.png");
      image(PawnW, x, y);
    } else

      if (!taken && colour != "White") {

        PImage PawnB = loadImage("PawnB.png");

        image(PawnB, x, y);
      }
  }





  void selected() {

    if (selected) {
      stroke(204, 102, 0);
      strokeWeight(3);
      noFill();
      rect(x, y, 100, 100);
      stroke(0);
      strokeWeight(1);
      fill(0);
    }
  }
}
