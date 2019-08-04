/// @description Insert description here
event_inherited();

if back = -1 {
    draw_self();
	if(ownKnife) draw_sprite_ext(sprKnife+item,0,x,y+4,1,back,gunDirection,c_white,1);
} else if back = 1 {
    if(ownKnife) draw_sprite_ext(sprKnife+item,0,x,y+4,1,back,gunDirection,c_white,1);
    draw_self();
}

if(meleeChargeTime >= 0)
{
	draw_set_color(c_yellow);
	var _dis = 20;
	draw_circle(x+lengthdir_x(_dis,gunDirection),y+lengthdir_y(_dis,gunDirection),5*meleeChargeTime,false);
	draw_circle(x+lengthdir_x(_dis,gunDirection),y+lengthdir_y(_dis,gunDirection),5,true);
}