

void setup() {

  size(500, 500);
}





void draw () {

  Board();
}

float feltStoerrelse = width / 8;



// Her tegnes den visuelle representation af skakbrættet
void Board() {

  for ( int f = 0; f < 8; f++) {

    for (int r = 0; r < 8; r++) {

      boolean isWhite = (r+f) % 2 == 0;
      {

        if (isWhite) {
          fill(255);
        } else {
          fill(0);
        }

        float feltStoerrelse = width / 8;

        rect(f*feltStoerrelse, r*feltStoerrelse, feltStoerrelse, feltStoerrelse);
      }
    }
  }
}
