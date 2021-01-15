class Enemy {////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //variables,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,

  float x, y, d, vx, vy, speed;

  int  hp, myRoomx, myRoomy;
  int range;

  boolean alive;

  //,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,


  Enemy(int _myRoomx, int _myRoomy) {//eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

    x = random (200, width-200);
    y = random (200, height-200);

    myRoomx = _myRoomx;
    myRoomy = _myRoomy;

    d = 40;

    hp = 3;

    speed = 0;


    vx = 0;
    vy = 0;
  }//eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee



  void show() {//ssssssssssssssssssssssssssssssssssssss

    fill (green);
    stroke (yellow);
    ellipse (x, y, d, d);

    fill (0);
    textSize (20);
    text ( hp, x, y);
  }//ssssssssssssssssssssssssssssssssssssssssssssssssss



  void act() {//.......................................


    x = x + vx;
    y = y + vy;

    collisionCheck();
    Ocollisioncheck ();
  }//..................................................

  void collisionCheck () {//'''''''''''''''''''''''''''

    int i = 0;

    while (i < bulletList.size()) {//.. 

      Bullet b = bulletList.get(i);

      if ( dist ( b.x, b.y, x, y) < b.d/2 + d/2) {
        b.alive = false;
        hp--;
      }

      i++;
    }//..
  }//''''''''''''''''''''''''''''''''''''''''''''''''''

  void Ocollisioncheck () {
    int i = 0;
    while (i < enemyList.size()) {//.. 

      Enemy myEnemy = enemyList.get(i);
      if (myEnemy.myRoomx == roomx && myEnemy.myRoomy == roomy) {
        if ( dist ( x, y, myHero.x, myHero.y) < myEnemy.d/2 + d/2) {

          myHero.lives--;
        }
      }

      i++;
    }//..
  }
}///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
