// Set the cloud's movement speed
spd = 2;

// Movement
var xDirection = 1;

// Apply movement
xSpeed = xDirection * spd;

// Horizontal Collision Check
if (place_meeting(x + xSpeed, y, oWall)) {
    // Reverse direction
    xDirection = -1;

    // Move away from the wall
    while (place_meeting(x + sign(xSpeed), y, oWall)) {
        x += sign(xSpeed);
    }
}

x += xSpeed;

if (irandom(100) < 5) {
    // Create a water droplet instance below the cloud
    var droplet = instance_create_layer(x, y + 16, "Instances", raindrops);
    
    // Set the speed or behavior of the water droplet (modify as needed)
    droplet.y_speed = 5;
}