
PWindow win;
float prevX;
float prevY;
float prevZ;
boolean frameMoved = false;

public void settings() 
{
  size(1000, 250);
  //fullScreen(OPENGL, 2);
  
}

void setup() 
{ 
  win = new PWindow();
  frameRate(10);
  drawStuff();
  // Build serial config UI.
  //ac_Panel = new GPanel(this, 10, 10, width-20, 90, "Configuration (click to hide/show)");
  //ac_Label = new GLabel(this, 20, 20, 350, 25, "Calibration: Sys=? Gyro=? Accel=? Mag=?");
  //ac_Panel.addControl(ac_Label);
}

void draw() 
{
  //CHANGE THIS VARIABLE TO THE VARIABLE YOU WANNA PLOT:
  float yVar = ac_pitch+125;
  stroke(255, 0, 0);
  line(frameCount-1, prevY, frameCount, yVar);
  prevY = yVar;
  float xVar = ac_yaw+125;
  stroke(255, 0, 0);
  line(frameCount-1, prevX, frameCount, xVar);
  prevX = xVar;
  float zVar = ac_roll+125;
  stroke(255, 0, 0);
  line(frameCount-1, prevZ, frameCount, zVar);
  prevZ = zVar;
}
void drawStuff() {
  background(0);
  for (int i = 0; i <= width; i += 50) {
    fill(0, 255, 0);
    text(i/2, i-15, height-15);
    stroke(255);
    line(i, height, i, 0);
  }
  int k = 5;
  for (int j = 0; j < height; j += 25) {
    fill(0, 255, 0);
    text(k, 0, j);
    k--;
    stroke(255);
    line(0, j, width, j);
  }
}