/// @description: Follow Mouse

//Cursor
var _maxpads = gamepad_get_device_count();
for (var i = 0; i < _maxpads; i++) {
	if (gamepad_is_connected(i)) {
	    device = i; break;
	    } else device = noone;
	}

lhaxis = gamepad_axis_value(device, gp_axislh);
lvaxis = gamepad_axis_value(device, gp_axislv);
rhaxis = gamepad_axis_value(device, gp_axisrh);
rvaxis = gamepad_axis_value(device, gp_axisrv);

dashInput = mouse_check_button_pressed(mb_right) || gamepad_button_check_pressed(device,gp_face1);
weaponStartInput = mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(device,gp_shoulderrb) || gamepad_button_check_pressed(device,gp_shoulderr) || gamepad_button_check_pressed(device,gp_stickr);
weaponEndInput = mouse_check_button_released(mb_left) || gamepad_button_check_released(device,gp_shoulderrb) || gamepad_button_check_released(device,gp_shoulderr) || gamepad_button_check_released(device,gp_stickr);
meleeAngleInput = point_direction(objDisplayManager.targetX,objDisplayManager.targetY,x,y);

if(device = noone || (startTime < 0 && point_distance(mouse_x-objDisplayManager.ran_x,mouse_y-objDisplayManager.ran_y,mouseXPrev+objDisplayManager.targetX,mouseYPrev+objDisplayManager.targetY) > 4)) usingMouse = true;
if(point_distance(0,0,rhaxis,rvaxis) > 0.2) usingMouse = false;
startTime -= 1/room_speed;

if(usingMouse)
{
	x = mouse_x;
	y = mouse_y;
}
else
{
	if(point_distance(0,0,rhaxis,rvaxis) > 0.2)
	{
		disAxis = 0.4*ideal_height*(0.3 + (0.7*sqrt(sqr(rhaxis) + sqr(rvaxis))));
		dirAxis = point_direction(0,0,rhaxis,rvaxis)
	}
	x = objDisplayManager.targetX + lengthdir_x(disAxis,dirAxis);
	y = objDisplayManager.targetY + lengthdir_y(disAxis,dirAxis);
}

mouseXPrev = mouse_x - objDisplayManager.targetX;
mouseYPrev = mouse_y - objDisplayManager.targetY;

/*
//DEBUGGING
if(mouse_check_button_pressed(mb_left)) testValue = 0;
testValue = max(point_distance(mouse_x-objDisplayManager.ran_x,mouse_y-objDisplayManager.ran_y,mouseXPrev+objDisplayManager.targetX,mouseYPrev+objDisplayManager.targetY));
if(room = rmIsland)
{
	show_debug_message(testValue);
	show_debug_message("t: " + string(startTime));
}*/
