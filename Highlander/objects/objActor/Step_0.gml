/// @description Insert description here
if y > ideal_width + 64 {
	instance_destroy();
}

if(instance_exists(objCursor)) selected = position_meeting(objCursor.x,objCursor.y,self);
input = mouse_check_button_pressed(mb_left);

if(selected && input) {
	instance_destroy();
}