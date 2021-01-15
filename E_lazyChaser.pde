class lazyChaser extends Enemy {////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  
  lazyChaser(int _myRoomx, int _myRoomy) {//eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


   super(_myRoomx, _myRoomy); 
   
    //PVector direction = new PVector (myHero.x-x, myHero.y-y);
    //direction.setMag (speed); 

    //vx = direction.x;
    //vy = direction.y;
    
    d = 40;
    
    speed = 3;
    
    hp = 3;
    
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
    
}

    collisionCheck();
    
   Ocollisioncheck ();
    
    
  }//..................................................

}///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
