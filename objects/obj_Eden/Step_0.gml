var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space);
var onTheGround = place_meeting(x, y + 6, oWall);

if (xDirection != 0) image_xscale = xDirection;
{
xSpeed = xDirection * spd;
ySpeed++;
}
if (onTheGround) {
	if (xDirection != 0) { sprite_index = playerRun; } 
	else { sprite_index = sprite; }

	if (jump) {
		ySpeed = -15;
	}
} else {
	sprite_index = playerJump;
}

if (place_meeting(x + xSpeed, y, oWall)) { 
	
	while (!place_meeting(x + sign(xSpeed), y, oWall)) {
		x += sign(xSpeed);
	}
	
	xSpeed = 0; 
}

x += xSpeed;


if (place_meeting(x, y + ySpeed, oWall)) { 
	
	while (!place_meeting(x, y + sign(ySpeed), oWall)) {
		y += sign(ySpeed);
	}
	
	ySpeed = 0; 
}

y += ySpeed;

