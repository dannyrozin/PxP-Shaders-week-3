// The world pixel by pixel 2020
// Daniel Rozin
// use fragment shader to color pixels by distance

PShader myFragShader;                                   //  variable to hold shader

void setup() {
  size(1000, 700, P2D);                                  // must be P2D or P3D for shaders
  frameRate(400);                                        // set high FPS, defaults to 60
  myFragShader = loadShader("myFragShader.glsl");        // our shader file has to be in our folder
}

void draw() {
 rect(0, 0, width, height);                            // draw something, otherwise shader wont work
  myFragShader.set("paramx", map(mouseX,0,width, 0, 1));       // this is how we pass arguments, data type must match
  myFragShader.set("paramy", map(mouseY,0,width, 0, 1));
  shader(myFragShader);                                    // call the shader
  
  println (frameRate);
}
