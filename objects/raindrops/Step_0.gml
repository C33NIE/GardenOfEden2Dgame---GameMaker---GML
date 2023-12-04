y_speed += gravity; // gravity is a variable representing the downward force

// Move the droplet based on its speed
y += y_speed;

// Check if the droplet is out of bounds, destroy it
if (y > room_height) {
    instance_destroy();
}

if (place_meeting(x, y, obj_Eden)) {
    // Add score and destroy the droplet
	audio_play_sound(water,0,false);
    global.score += 1; // Increase the score by 1 (adjust as needed)
    instance_destroy();
}

if(place_meeting(x,y,oWall))
{
	sprite_index = rainground;
	 if (image_index == image_number - 1)
    {
        instance_destroy();
    }
}
