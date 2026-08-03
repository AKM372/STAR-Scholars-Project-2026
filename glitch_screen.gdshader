shader_type canvas_item;

uniform float intensity : hint_range(0.0, 1.0) = 1.0;
uniform float glitch_speed : hint_range(0.1, 30.0) = 12.0;
uniform float block_size : hint_range(1.0, 64.0) = 14.0;

float hash(vec2 p) {
	return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453123);

}
void fragment() {
	vec2 uv = UV;
	float t = floor(TIME * glitch_speed);

	// horizontal band displacement (the classic "tearing" look)
	float band = floor(uv.y * block_size);
	float band_rand = hash(vec2(band, t));
	uv.x += (band_rand - 0.5) * 0.15 * intensity;

	// blocky colorful noise
	vec2 block_uv = floor(uv * block_size) / block_size;
	float r = hash(block_uv + t);
	float g = hash(block_uv + t + 1.0);
	float b = hash(block_uv + t + 2.0);
	vec3 glitch_color = vec3(r, g, b);

	// scanlines for texture
	float scanline = sin(uv.y * 800.0) * 0.05;

	vec3 col = glitch_color + scanline;
	COLOR = vec4(col, intensity);
}