/// @description Insert description here

if back = -1 {
	draw_self();
	draw_sprite_ext(sprKnife,0,x,y+4,1,back,gunDirection,c_white,1);
} else if back = 1 {
	draw_sprite_ext(sprKnife,0,x,y+4,1,back,gunDirection,c_white,1);
	draw_self();
}
	