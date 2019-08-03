/// @description Insert description here
event_inherited();

draw_set_color(c_black);
if(target = objPlayer.id) draw_set_color(c_red);
draw_text(x,y-32,string(state));

if(meleeChargeTime >= 0) draw_circle(x,y,5,false);

//draw_circle(x,y,256,true);