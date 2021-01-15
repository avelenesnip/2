class eBullet {////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//variables,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,

  float x, y, d, vx, vy;

  boolean alive;
  
//,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,  


  eBullet(float _x, float _y) {//bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
    
    x = _x;
    y = _y;
    d = 10;
    alive = true;

    PVector direction = new PVector (myHero.x-x, myHero.y-y);// change the mx my
    direction.setMag(10);
   
    
    vx = direction.x;
    vy = direction.y;
  }//bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb



  void show() {//ssssssssssssssssssssssssssssssssssssss
    
    fill (orange);
    stroke (orange);
    ellipse (x, y, d, d);
    
  }//ssssssssssssssssssssssssssssssssssssssssssssssssss



  void act() {//.........................................
   
    x = x + vx;
    y = y + vy;

    if (x < 0 || x > width || y < 0 || y > height) {
      alive = false;
    }
    
  }//.....................................................
  
}//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
