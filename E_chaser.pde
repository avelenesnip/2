class Chaser extends Enemy {////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  
  Chaser(int _myRoomx, int _myRoomy) {//eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

   super(_myRoomx, _myRoomy); 
   
    //PVector direction = new PVector (myHero.x-x, myHero.y-y);
    //direction.setMag (speed); 

    //vx = direction.x;
    //vy = direction.y;
    
    d = 44;
    
    speed = 3;
    
    hp = 3;
    
     x = random (300, width-300);
    y = random (300, height-300);
    
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
    
    Ocollisioncheck ();
    
  }//..................................................

}///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
