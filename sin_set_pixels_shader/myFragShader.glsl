#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif

uniform sampler2D texture;

varying vec4 vertColor;											// this is our fragment color coming in
varying vec4 vertTexCoord;                  // this is our fragment (pixel) coords
uniform float paramx;                       // these are our arguments
uniform float paramy;
uniform float Phase;



void main() {
	float sinX= sin(vertTexCoord.x/paramx);                   // calc sin of each pixel vs mouse position
	sinX+=1;												                          // sin is -1 to 1 and we need 0-1 so we add 1 and divide by 2
	sinX/=2;

	float sinY= sin(vertTexCoord.y/paramy);
	sinY+=1;
	sinY/=2;

	gl_FragColor = vec4( Phase,   sinX,   sinY,   1);               // set the output color its RGBA 0-1 not 0 -255
}
