/// @description Insert description here
draw_self();

if back = -1 {
	draw_self();
	if(ownKnife) draw_sprite_ext(sprKnife,0,x,y+4,1,back,gunDirection,c_white,1);
} else if back = 1 {
	if(ownKnife) draw_sprite_ext(sprKnife,0,x,y+4,1,back,gunDirection,c_white,1);
	draw_self();
}


var _nearestEnemy = instance_nearest(x,y,objEnemy);
draw_line(x,y, _nearestEnemy.x, _nearestEnemy.y);