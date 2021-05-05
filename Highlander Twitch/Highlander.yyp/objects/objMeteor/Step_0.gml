/// @description Insert description here
//move_towards_point(targetX,targetY,lerp(moveSpd,maxMoveSpd,1));

if y >= targetY-6 {
	scr_shake(10,5);
	instance_destroy();
}

var _spd = lerp(1,6,.1);
show_debug_message(speed);

