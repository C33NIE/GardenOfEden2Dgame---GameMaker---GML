draw_set_color(c_white);
draw_set_font(fnt_font1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var t = "";
t += string(t_min);
t += ":";
if t_sec>9 { t+=""+string(t_sec)}
if t_sec<10 { t+="0"+string(t_sec)}
t+=":";
t+=string(t_mil);

draw_text(x,y,t)
