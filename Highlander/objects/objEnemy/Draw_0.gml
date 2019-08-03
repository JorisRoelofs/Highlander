/// @description Insert description here
draw_self();

draw_set_color(c_black);
if(target = objPlayer.id) draw_set_color(c_red);
draw_text(x,y-32,string(state));

//draw_circle(x,y,256,true);