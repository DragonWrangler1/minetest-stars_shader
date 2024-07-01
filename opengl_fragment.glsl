/*uniform lowp vec4 emissiveColor;

void main(void)
{
	gl_FragColor = emissiveColor;
}
*/

// Fragment shader (stars.frag)

/*uniform lowp vec4 emissiveColor;  // Emissive color uniform
uniform float time;               // Time uniform

void main(void)
{
    // Start with the emissive color
    vec4 color = emissiveColor;

    // Example: Generate a simple gradient based on fragment position and time
    color.rgb += vec3(sin(gl_FragCoord.x * 0.3 + time),
                      cos(gl_FragCoord.y * 0.4 + time),
                      sin(gl_FragCoord.x * gl_FragCoord.y * 0.5 + time));

    // Output final color to the screen
    gl_FragColor = color;
}
*/

uniform lowp vec4 emissiveColor;  // Emissive color uniform
uniform float time;               // Time uniform

void main(void)
{
    // Start with the emissive color
    vec4 color = emissiveColor;

    // Example: Generate a simple gradient based on fragment position and time
    // Adjust velocities (0.1, 0.2, 0.3) to control the speed and direction of movement
    color.rgb += vec3(sin(gl_FragCoord.x * 0.1 + time),
                      cos(gl_FragCoord.y * 0.2 + time),
                      sin(gl_FragCoord.x * gl_FragCoord.y * 0.3 + time));

    // Output final color to the screen
    gl_FragColor = color;
}

