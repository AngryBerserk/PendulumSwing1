float angularVelocity;
float angle = -PI/2;
float angularAcceleration;
float g = 0.0098;
PVector pivotPos;
float lineLength = 200;

void setup(){
 size(800,600); 
 pivotPos = new PVector(width/2, height);
}

void move(){
 angularAcceleration = -g * sin(angle);
 angularVelocity+=angularAcceleration;
 angle += angularVelocity;
 angularVelocity*=0.995;
}

void draw(){
 move();
 fill(255,15);
 rect(0,0,width,height);
 scale(1,1);
 pushMatrix();
 translate(pivotPos.x,100);
 rotate(angle);
 line(0,0,0,lineLength);
 fill(255);
 ellipse(0,0,10,10);
 ellipse(0,lineLength,32,32);
 popMatrix();
}