/// @description Insert description here
event_inherited();

if back = -1 {
    draw_self();
	if(ownKnife) draw_sprite_ext(sprKnife+item,0,x,y+4,1,back,gunDirection,c_white,1);
} else if back = 1 {
    if(ownKnife) draw_sprite_ext(sprKnife+item,0,x,y+4,1,back,gunDirection,c_white,1);
    draw_self();
}
