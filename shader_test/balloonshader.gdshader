shader_type canvas_item;

uniform sampler2D reference_texture;  // For the reference sprite's texture
uniform float width;
uniform float height;
uniform float fx;
uniform float fy;
uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear_mipmap;

void fragment() {
	
	
	float texture_size = 8.0;
	
	// Sample the reference sprite's texture (if needed)
	vec4 data = texture(SCREEN_TEXTURE, SCREEN_UV);
	float x = data.r*256.0/10.0;
	float y = data.g*256.0/10.0;
	COLOR = texture(reference_texture, vec2((x+0.5 + fx*8.0)/texture_size/width, (y+0.5 + fy*8.0)/texture_size/height));

}
