sprite_index = enemy_Move;
x += xSpeed * xDir; // Multiply xSpeed by xDir to control the direction of movement

// Update ySpeed to simulate gravity
ySpeed += gravity;

y += ySpeed; // Update the vertical position

if place_meeting(x, y, oWall2)
{
    // Invert the direction after moving away from the wall
    xDir *= -1;
    
    x += xSpeed * xDir;
    
    // Set the image_xscale based on the new direction
    image_xscale = xDir;
}

if place_meeting(x, y, oWall)
{
    ySpeed = 0;
	onTheGround = true;
}

if (place_meeting(x, y, obj_Eden))
{
	instance_destroy(obj_Eden);
	room_goto(Outcome);
}
