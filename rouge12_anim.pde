/////////// ROUGE
//variables......................................

PImage map;

PImage floor1;


ArrayList <PImage> idle;
ArrayList <PImage> walkLeft;
ArrayList <PImage> walkRight;
ArrayList <PImage> walkDown;
ArrayList <PImage> walkUp;
ArrayList <PImage> currentAction;


int roomx, roomy, mapWidth, mapHeight;

int mode = 1;

final int intro     = 1;
final int play      = 2;
final int pause     = 3;
final int gameover  = 4;
final int gamewon   = 5;
final int error     = 6; 



boolean n, e, s, w;

boolean akey, dkey, wkey, skey, Akey, Dkey, Wkey, Skey;


color purple = #490AD3;
color pink   = #BD1550;
color orange = #E97F02;
color yellow = #F8CA00;
color green  = #8A9B0F;
color black  = #000000;
color white  = #FFFFFF;


ArrayList <Bullet> bulletList;
Bullet b;

ArrayList <eBullet> ebulletList;
eBullet eb;

ArrayList <Enemy> enemyList;
Enemy myEnemy;


Hero myHero;


//................................................

void setup () {///////////////////////////////////

  size (800, 800);

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
  
}/////////////////////////////////////////////////


void draw () {//=================================

  if (mode == intro) {
    intro();
  } else if (mode == play) {
    play();
  } else if (mode == gameover) {
    gameover();
  } else if (mode == gamewon) {
    gamewon();
  } else if (mode == pause) {
    gamewon();
  } else {
    error ();
  }
}//===============================================


void keyPressed() {//++++++++++++++++++++++++++++

  if (key == 'a' || key == 'A') akey = true; 
  Akey = false;
  if (key == 'w' || key == 'W') wkey = true; 
  Wkey = false;
  if (key == 'd' || key == 'D') dkey = true; 
  Dkey = false;
  if (key == 's' || key == 'S') skey = true; 
  Skey = false;
}//+++++++++++++++++++++++++++++++++++++++++++++++


void keyReleased() {//----------------------------

  if (key == 'a'|| key == 'A') akey = false; 
  Akey = false;
  if (key == 'w'||key ==  'W') wkey = false; 
  Wkey = false;
  if (key == 'd'|| key == 'D') dkey = false; 
  Dkey = false;
  if (key == 's'|| key == 'S') skey = false; 
  Skey = false;
}//-----------------------------------------------


void mousePressed() {//***************************

  if (mode == intro) {
    introClicks ();
  } else if (mode == play) {
    playClicks();
  } else if (mode == gameover) {
    gameoverClicks();
  } else if (mode == gamewon) {
    gamewonClicks();
  } else if (mode == pause) {
    pauseClicks();
  } else {
    errorClicks ();
  }
}//************************************************
