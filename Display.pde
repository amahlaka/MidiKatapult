int frameSize = WINDOWSIZE - FRAMEBORDER*2;
int buttonSize = frameSize / 8;
int offset = 1;
boolean displaystate = false;
boolean dlock = false;

void display(int x, int y, int lcolor) {
  if (displaystate) {
    
    
    
  
   
    
    int o = 150;
  
      
    
    if (lcolor == RED) fill(255, 0, 0, o);
    if (lcolor == REDL) fill(127, 0, 0, o);
    if (lcolor == GREEN) fill(0, 255, 0, o);
    if (lcolor == GREENL) fill(0, 127, 0, o);
    if (lcolor == AMBER) fill(255, 127, 0, o);
    if (lcolor == AMBERL) fill(127, 63, 0, o);
    if (lcolor == YELLOW) fill(255, 255, 0, o);
    
    if (lcolor == BLUE) fill(0, 0, 255, o);
    if (lcolor == BLUEL) fill(0, 0, 127, o);
    if (lcolor == CYAN) fill(0, 255, 255, o);
    if (lcolor == CYANL) fill(0, 127, 127, o);
    if (lcolor == MAGENTA) fill(255, 0, 255, o);
    if (lcolor == MAGENTAL) fill(127, 0, 127, o);
    if (lcolor == WHITE) fill(230, 230, 230, o);
    if (lcolor == WHITEL) fill(180, 180, 200, o);
    rect((x*buttonSize)+FRAMEBORDER+offset, (y*buttonSize)+FRAMEBORDER+offset, buttonSize-offset, buttonSize-offset);
    
    if (x >= 0 && x < 8 && y >= 0 && y < 8 ) {
      
      o = 16;
      if (lcolor == RED) fill(255, 0, 0, o);
      if (lcolor == REDL) fill(127, 0, 0, o);
      if (lcolor == GREEN) fill(0, 255, 0, o);
      if (lcolor == GREENL) fill(0, 127, 0, o);
      if (lcolor == AMBER) fill(255, 127, 0, o);
      if (lcolor == AMBERL) fill(127, 63, 0, o);
      if (lcolor == YELLOW) fill(255, 255, 0, o);
      if (lcolor == BLUE) fill(0, 0, 255, o);
      if (lcolor == BLUEL) fill(0, 0, 127, o);
      if (lcolor == CYAN) fill(0, 255, 255, o);
      if (lcolor == CYANL) fill(0, 127, 127, o);
      if (lcolor == MAGENTA) fill(255, 0, 255, o);
      if (lcolor == MAGENTAL) fill(127, 0, 127, o);
      if (lcolor == WHITE) fill(230, 230, 230, o);
      if (lcolor == WHITEL) fill(200, 200, 200, o);
      for (int i = 0; i < 64; i++) {
      if (true) rect((x*buttonSize)+FRAMEBORDER+offset, (y*buttonSize)+FRAMEBORDER+offset, buttonSize-offset, buttonSize-offset);
    }
      rect((x*buttonSize)+FRAMEBORDER+offset, (y*buttonSize)+FRAMEBORDER+offset, buttonSize-offset, buttonSize-offset);
      
      for(int i = 30; i > 0;) {
        ellipse((x*buttonSize+(buttonSize/2))+FRAMEBORDER+offset, (y*buttonSize+(buttonSize/2))+FRAMEBORDER+offset, (buttonSize-i*2)-4, (buttonSize-i*2)-4);
      i--;
    }
    }
  
  }
}

void ledOn(int x, int y, int lcolor) {
  println("ledon");
  
  if (true) {
    
    displaystate=true;
    display(x, y, lcolor);

    int address = (y*16) + x;
    launchpad.sendOn(address, lcolor, 0); 
    
    
  }
}

void ledOff(int x, int y) {
  debug("ledoff");
  if (true) {
    displaystate=true;
    display(x, y, 0);
    int address = (y*16) + x;
    launchpad.sendOn(address, 0, 0);
  }
}

void clearDisplay() {
  println("displayClear");
  if (displaystate) {
    if (!NETWORK) launchpad.sendCtl(0, 0, 0);
    
    fill(64, 64, 64);
    for (int i = 0; i < 64; i++) {
      if (true) rect(((i%8)*buttonSize)+FRAMEBORDER+offset, ((int)((float)i/8)*buttonSize)+FRAMEBORDER+offset, buttonSize-offset, buttonSize-offset);
    }
  }
}

void pageName() {
  pagename = pagenames[selectedPage-1];
  println("pageName()"+pagename);
  fill(#000000);
  noStroke();
  rect(0, WINDOWSIZE-12, 250, 12);
  fill(#FFFFFF);
  textFont(f11, 11);
  
  textAlign(LEFT);
  if (pagename != null) text(pagename, 2, WINDOWSIZE-2);
}

int randomColor() {
  colors[0] = RED;
  colors[1] = AMBER;
  colors[2] = RED;
  colors[3] = GREEN;
  colors[4] = RED;
  colors[5] = RED;
  colors[6] = YELLOW;
  colors[7] = RED;
  colors[8] = RED;
  colors[9] = RED;
  colors[10] = RED;
  
  int select = (int)random(11);
  
  return colors[select];
}