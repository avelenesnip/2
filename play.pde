void play() {//lllllllllllllllllllllllllllllllllllll

  background (103, 79, 54);
  

  
  fill (142,107,72);
  rect (100, 100, 600, 600);
  


  fill (255);
  strokeWeight (2);



  line   (0, 0, 100, 100);
  line   (700, 700, 800, 800);
  line   (0, 800, 100, 700);
  line   (800, 0, 700, 100);

  
  fill(0);
  image (map, 758, 50, 100, 100);
  
  


  //''''''''''''''''''''''''''''''''''''

  if (n) ellipse (width/2, 50, 200, 100);
  if (e) ellipse (750, width/2, 100, 200);
  if (s) ellipse ( width/2, 750, 200, 100);
  if (w) ellipse (50, width/2, 100, 200);

  //''''''''''''''''''''''''''''''''''''

  int i = 0;

  while (i < bulletList.size()) { 
    Bullet b = bulletList.get(i);
    if ( b.alive == true) {
      b.show();
      b.act();
      i++;
    } else {
      bulletList.remove(i);
    }
  }

  //''''''''''''''''''''''''''''''''''''''

  i = 0;

  while (i < ebulletList.size()) { 
    eBullet eb = ebulletList.get(i);
    if ( eb.alive == true) {
      eb.show();
      eb.act();
      i++;
    } else {
      ebulletList.remove(i);
    }
  }

  //''''''''''''''''''''''''''''''''''''''


  int j = 0;

  while (j < enemyList.size()) { 
    Enemy myEnemy = enemyList.get(j);
    if ( myEnemy.hp > 0) {
      if (myEnemy.myRoomx == roomx && myEnemy.myRoomy == roomy) {
        myEnemy.show();
        myEnemy.act();
      }
      j++;
    } else {
      enemyList.remove(j);
    }
  }

  //''''''''''''''''''''''''''''''''''''''

  if ( myHero.alive == true) {
    myHero.show();
    myHero.act();
  }
}//lllllllllllllllllllllllllllllllllllllllllllllllll


void playClicks () {////////////////////////////////
  bulletList.add(new Bullet());
  //ebulletList.add(new eBullet());  
}///////////////////////////////////////////////////


void switchRoom() {//;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  n = e = s = w = false;

  bulletList = new ArrayList <Bullet>();
  ebulletList = new ArrayList <eBullet>();

  color here  = map.get (roomx, roomy);
  color north = map.get (roomx, roomy - 1);
  color east  = map.get (roomx + 1, roomy); 
  color south = map.get (roomx, roomy + 1);
  color west  = map.get (roomx - 1, roomy);

  if (north != white) n = true;
  if (east != white) e = true;
  if (south != white) s = true;
  if (west != white) w = true;
}
