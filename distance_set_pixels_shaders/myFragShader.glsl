#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif

uniform sampler2D texture;

varying vec4 vertColor;             // this is our fragment color coming in
varying vec4 vertTexCoord;					// this is our fragment (pixel) coords
uniform float paramx;								// these are our arguments
uniform float paramy;



void main() {
	//calc distance to mouse

	float dist = sqrt((vertTexCoord.x-paramx)*(vertTexCoord.x-paramx)+(vertTexCoord.y-paramy)*(vertTexCoord.y-paramy));

	gl_FragColor = vec4(dist,dist,1, 1);                      // set the output color its RGBA 0-1 not 0 -255
}
