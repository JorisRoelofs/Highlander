/// @description Insert description here
event_inherited();

if back = -1 {
    draw_self();
	if(ownKnife && !instance_exists(meleeId)) draw_sprite_ext(sprKnife+item,0,x,y+4,1,back,gunDirection,c_white,1);
} else if back = 1 {
    if(ownKnife && !instance_exists(meleeId)) draw_sprite_ext(sprKnife+item,0,x,y+4,1,back,gunDirection,c_white,1);
    draw_self();
}

if(dashTime >= 0) draw_sprite(sprPlayerDash,0,x+lengthdir_x(-dashSpeed*(dashTime-timeTillDash),direction),y+lengthdir_y(-dashSpeed*(dashTime-timeTillDash),direction));

if(meleeChargeTime >= 0)
{
	draw_set_color(make_color_rgb(251,242,54));
	var _dis = 20 + 10*!item;
	draw_circle(x+lengthdir_x(_dis,gunDirection),y+4+lengthdir_y(_dis,gunDirection),5*meleeChargeTime,false);
	draw_circle(x+lengthdir_x(_dis,gunDirection),y+4+lengthdir_y(_dis,gunDirection),5,true);
}