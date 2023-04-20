float flagX = 0;
float flagSpeed = 1;
int lastTime = 0;

void setup()
{
size (500, 500);
background(255,255,255) ;
}

void draw() {
  background(255,255,255);
  
  //move the flag
  flagX += flagSpeed;
  
 int elapsedTime = millis() - lastTime;
 if (elapsedTime >= 5000) {
   flagSpeed = -flagSpeed;
   lastTime = millis();
 }

//draw the Flag
pushMatrix();
translate(flagX, 0);


 //horizontal bars
 fill(255,0,0);
 rect(50, 200, 400, 33.333);
 fill(255,255,0);
 rect(50, 233.333,400, 33.333);
 fill(0,255,0);
 rect(50, 266.666,400, 33.333);
 fill(0,255,255);
 rect(50, 300,400, 33.333);
 fill(0,0,255);
 rect(50, 333.333,400, 33.333);
 fill(255,0,255);
 rect(50, 366.666,400, 33.333);
 
//triangles
noStroke();
fill(0,0,0);
  triangle( 50, 200, 50, 400, 300, 300);
  fill(150,100,0);
  triangle( 50, 215,50, 385, 270, 300);
  fill( 255, 180 , 200);
  triangle( 50, 230, 50 , 370, 240, 300);
  fill(255,255,100);
  triangle ( 50, 245, 50, 355, 210, 300);
  
  //hollow circle
  stroke(150, 50, 220); 
  strokeWeight(5);
  noFill();
  circle( 100, 300, 50);
  // bring back to original position
  popMatrix(); 
  if(flagX > width - 100 || flagX < 0) {
    flagSpeed = -flagSpeed;
    

}
}
  
