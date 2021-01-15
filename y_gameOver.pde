void gameover () {

  background (0);




  roomx = 1;
  roomy = 1;



  map = loadImage ("Map.png");
  mapWidth = map.width;
  mapHeight = map.height;

  floor1 = loadImage ("floor.png");

  textAlign (CENTER, CENTER);
  imageMode (CENTER);


  idle      = new ArrayList <PImage>();
  walkLeft  = new ArrayList <PImage>();
  walkRight = new ArrayList <PImage>();
  walkDown  = new ArrayList <PImage>();
  walkUp    = new ArrayList <PImage>();

  idle.add (loadImage("sprites/12449_01.png"));

  walkLeft.add(loadImage("sprites/12449_16.png"));
  walkLeft.add(loadImage("sprites/12449_17.png"));
  walkLeft.add(loadImage("sprites/12449_18.png"));
  walkLeft.add(loadImage("sprites/12449_19.png"));

  walkRight.add(loadImage("sprites/12449_08.png"));
  walkRight.add(loadImage("sprites/12449_09.png"));
  walkRight.add(loadImage("sprites/12449_10.png"));
  walkRight.add(loadImage("sprites/12449_11.png"));

  walkDown.add(loadImage("sprites/12449_12.png"));
  walkDown.add(loadImage("sprites/12449_13.png"));
  walkDown.add(loadImage("sprites/12449_14.png"));
  walkDown.add(loadImage("sprites/12449_15.png"));

  walkUp.add(loadImage("sprites/12449_04.png"));
  walkUp.add(loadImage("sprites/12449_05.png"));
  walkUp.add(loadImage("sprites/12449_06.png"));
  walkUp.add(loadImage("sprites/12449_07.png"));

  currentAction = idle;

  bulletList = new ArrayList <Bullet>();
  ebulletList = new ArrayList <eBullet>();

  enemyList = new ArrayList <Enemy>();
  enemyList.add (new Enemy       (2, 1));
  enemyList.add (new Chaser      (2, 2));
  enemyList.add (new Archer      (2, 3));
  enemyList.add (new lazyChaser  (2, 4));
  enemyList.add (new lazyArcher  (2, 5));
  enemyList.add (new lazyArcher  (2, 6));
  enemyList.add (new Chaser      (2, 7));

  myHero = new Hero();

  switchRoom ();
  
  fill (255, 0,0);
  
  text ( "GAME OVER", 400, 400);
  text(  "click to restart", 400, 450);
  
}





void gameoverClicks () {

  mode = 1;
}
