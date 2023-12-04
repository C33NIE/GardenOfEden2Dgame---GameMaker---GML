t_mil -= 1

if t_mil = -1
{
t_mil = 9
t_sec -=1
}

if t_sec = -1
{
t_sec = 59
t_min -=1
}

if !(t_sec = 0 && t_min = 0 && t_mil = 0) 
{
	alarm[0] = 6
}
else
{
	ends = true
}

if(ends == true)
{
	audio_stop_sound(Game_bg);
	room_goto(Outcome)
}