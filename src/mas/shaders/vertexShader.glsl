#version 400 core

in vec3 pos;
in vec2 textureCoords;

out vec2 pass_textureCoords;

uniform mat4 offsetMatrix;
uniform mat4 transformationMatrix;
uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;

void main(void) {
	gl_Position = projectionMatrix * viewMatrix * offsetMatrix * transformationMatrix * vec4(pos, 1.0);
	pass_textureCoords = textureCoords;
}