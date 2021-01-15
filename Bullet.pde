class Bullet {////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//variables,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,

  float x, y, d, vx, vy;

  boolean alive;
  
//,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,  


  Bullet() {//bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
    
    x = myHero.x;
    y = myHero.y;
    d = 10;
    alive = true;

    PVector direction = new PVector (mouseX-x, mouseY-y);// sperates the length of the triangle from the angle of the triangle
    direction.setMag(10); // sets the length of the triangl/speed
   
    
    vx = direction.x;
    vy = direction.y;
  }//bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb



  void show() {//ssssssssssssssssssssssssssssssssssssss
    
    fill (yellow);
    stroke (yellow);
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
