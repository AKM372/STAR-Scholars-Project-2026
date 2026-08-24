shader_type spatial;

uniform sampler2D dirt_tex : source_color;
uniform bool use_dirt_tex = false;

// Glitch intensity
uniform float shake_power = 0.5;

// Probability
uniform float shake_rate : hint_range(0.0, 1.0) = 0.5;

uniform float shake_speed = 5.0;

// Hard to describe, change it and monitor result
uniform float shake_block_size = 30.5;

uniform float shake_color_rate : hint_range(0.0, 1.0) = 0.5;

uniform sampler2D main_tex : filter_nearest, source_color;

uniform vec4 base_color : source_color = vec4(1.0);

varying float enable_shift;

float random(float seed) {
	return fract(sin(seed * 12345.678) * 43758.5453);
}

void vertex() {
	float adjusted_time = mod(TIME, 5.0);
	enable_shift = float(random(trunc(adjusted_time * shake_speed)) < shake_rate);
	float offset_x = (random((trunc(VERTEX.y * shake_block_size) / shake_block_size) + adjusted_time) - 0.5) * shake_power * enable_shift;
	VERTEX.x += offset_x;
}

void fragment() {
    float adjusted_time = mod(TIME, 5.0);

    vec2 fixed_uv;

    // DirtSprite uses its own UVs (not SCREEN_UV)
    fixed_uv = UV;

    // Apply glitch offset
    fixed_uv.x += (
        random((trunc(fixed_uv.y * shake_block_size) / shake_block_size) + adjusted_time) - 0.5
    ) * shake_power * enable_shift;

    // Prevent UV from going out of bounds (fixes disappearing dirt)
    fixed_uv = clamp(fixed_uv, vec2(0.0), vec2(1.0));

    // Sample correct texture
    vec4 pixel_color = use_dirt_tex
        ? texture(dirt_tex, fixed_uv)
        : texture(main_tex, fixed_uv);

    // Color channel glitch
    pixel_color.r = mix(
        pixel_color.r,
        texture(main_tex, fixed_uv + vec2(shake_color_rate, 0.0)).r,
        enable_shift
    );
    pixel_color.b = mix(
        pixel_color.b,
        texture(main_tex, fixed_uv + vec2(-shake_color_rate, 0.0)).b,
        enable_shift
    );

    ALBEDO = pixel_color.rgb * base_color.rgb;
}