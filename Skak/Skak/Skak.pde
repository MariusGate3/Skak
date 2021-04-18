ArrayList<Pawn> Wpawns = new ArrayList();
ArrayList<Pawn> Bpawns = new ArrayList();
//playerTurn = true; // true = Whites turn, false = Blacks turn.

void setup() {
  size(1000, 1000);

  for ( int i = 0; i++ != 8; Wpawns.add(new Pawn(i*100+3, 203, "White")) );
  for ( int i = 0; i++ != 8; Bpawns.add(new Pawn(i*100+3, 703, "Black")) );
}





void draw() {
  drawBoard();
  imgLoader();
  println(1);
  for (Pawn p : Wpawns) {
    p.fieldClicked();
    p.drawPawn();
    p.selected();
    p.move();
  }
  for (Pawn p : Bpawns) {
    p.fieldClicked();
    p.drawPawn();
    p.selected();
    p.move();
  }
}



void drawBoard() {

  for ( int f = 0; f < 8; f++) {

    for (int r = 0; r < 8; r++) {

      boolean isWhite = (r+f) % 2 == 0;
      {

        if (isWhite) {
          fill(250);
        } else {
          fill(100, 200, 250);
        }

        float feltStoerrelse = 100;

        rect(f*feltStoerrelse+100, r*feltStoerrelse+100, feltStoerrelse, feltStoerrelse);
      }
    }
  }
}

Boolean playerTurn() {

  return true;
}
