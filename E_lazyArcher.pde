class lazyArcher extends Enemy {////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //variables,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,

  boolean alive;


  //,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,


  lazyArcher (int _myRoomx, int _myRoomy) {//eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


    super (_myRoomx, _myRoomy);

    //PVector direction = new PVector (myHero.x-x, myHero.y-y);
    //direction.setMag (speed); 

    //vx = direction.x;
    //vy = direction.y;

    d = 40;

    speed = 2;

    hp = 4;
    
    range = 400;
    
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

    if ( dist ( myHero.x, myHero.y, x, y) < myHero.d/2 + range/2) {

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
    }
    collisionCheck();
  }//..................................................
  
  
 
  
}///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
