class Archer extends Enemy {////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //variables,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,

  boolean alive;
  

  //,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,


  Archer (int _myRoomx, int _myRoomy) {//eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
  

   super (_myRoomx, _myRoomy);
   
    //PVector direction = new PVector (myHero.x-x, myHero.y-y);
    //direction.setMag (speed); 

    //vx = direction.x;
    //vy = direction.y;
    
    d = 44;
    
    speed = -3;
    
    hp = 4;
    
    x = random (100, width-100);
    y = random (100, height-100);
    
  }//eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee



  void show() {//ssssssssssssssssssssssssssssssssssssss

    fill (purple);
    stroke (yellow);
    ellipse (x, y, d, d);

    fill (0);
    textSize (20);
    text ( hp, x, y);
    
  }//ssssssssssssssssssssssssssssssssssssssssssssssssss



  void act() {//.......................................

     PVector direction = new PVector (myHero.x-x, myHero.y-y);
    direction.setMag (speed); 

    vx = direction.x;
    vy = direction.y;

    x = x + vx;
    y = y + vy;

    collisionCheck();
    
    if (x < 122) x = 122;
    if (x > 650) x = 688;
    if (y < 122) y = 122;
    if (y > 688) y = 688;
    
    if (frameCount % 40 == 0) {
    ebulletList.add(new eBullet(x, y));
    }
  }//..................................................

}///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
