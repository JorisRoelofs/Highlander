/// @description: Follow Mouse

//Input
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

rightInput = (keyboard_check(vk_right) || keyboard_check(ord("D")) || keyboard_check(ord("L"))) || gamepad_button_check(0,gp_padr);
leftInput = (keyboard_check(vk_left) || keyboard_check(ord("A")) || keyboard_check(ord("J"))) || gamepad_button_check(0,gp_padl);
upInput = (keyboard_check(vk_up) || keyboard_check(ord("W")) || keyboard_check(ord("I"))) || gamepad_button_check(0,gp_padu);
downInput = (keyboard_check(vk_down) || keyboard_check(ord("S")) || keyboard_check(ord("K"))) || gamepad_button_check(0,gp_padd);

if(rightInput)
{
	if(rightInputPressed = 0) rightInputPressed = 1;
	else rightInputPressed = -1;
}
else rightInputPressed = 0;

if(leftInput)
{
	if(leftInputPressed = 0) leftInputPressed = 1;
	else leftInputPressed = -1;
}
else leftInputPressed = 0;

if(upInput)
{
	if(upInputPressed = 0) upInputPressed = 1;
	else upInputPressed = -1;
}
else upInputPressed = 0;

if(downInput)
{
	if(downInputPressed = 0) downInputPressed = 1;
	else downInputPressed = -1;
}
else downInputPressed = 0;

gpInput = 0;
if(lhaxis > gpDeadZone || rhaxis > gpDeadZone || lvaxis > gpDeadZone || rvaxis > gpDeadZone) gpInput = 1;
if(lhaxis < -gpDeadZone || rhaxis < -gpDeadZone || lvaxis < -gpDeadZone || rvaxis < -gpDeadZone) gpInput = -1;
if(abs(gpInput))
{
	if(gpInputPressed = 0) gpInputPressed = gpInput;
	else gpInputPressed = -2;
}
else gpInputPressed = 0;

dashInput = mouse_check_button_pressed(mb_right) || gamepad_button_check_pressed(device,gp_face1);
weaponStartInput = mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(device,gp_shoulderrb) || gamepad_button_check_pressed(device,gp_shoulderr) || gamepad_button_check_pressed(device,gp_stickr) || gamepad_button_check_pressed(device,gp_face1) || keyboard_check_pressed(vk_enter);
weaponEndInput = mouse_check_button_released(mb_left) || gamepad_button_check_released(device,gp_shoulderrb) || gamepad_button_check_released(device,gp_shoulderr) || gamepad_button_check_released(device,gp_stickr) || gamepad_button_check_released(device,gp_face1) || keyboard_check_released(vk_enter);
meleeAngleInput = point_direction(objDisplayManager.targetX,objDisplayManager.targetY,x,y);

if(keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(device,gp_select)){
	if(room != rmMenu) room_goto(rmMenu);
	else game_end();
}

if(gamepad_button_check_pressed(device,gp_start)) if(room != rmMenu) room_goto(rmMenu);
else with(objButton) if(buttonEffect = startGame) room_goto(rooms[roomChoice]);


//Controls
if(device = noone || (startTime < 0 && point_distance(mouse_x-objDisplayManager.ran_x,mouse_y-objDisplayManager.ran_y,mouseXPrev+objDisplayManager.targetX,mouseYPrev+objDisplayManager.targetY) > 4)) usingMouse = true;
if(point_distance(0,0,rhaxis,rvaxis) > gpDeadZone || point_distance(0,0,lhaxis,lvaxis) > gpDeadZone || (room = rmMenu && !!rightInputPressed + !!downInputPressed + !!leftInputPressed + !!upInputPressed)) usingMouse = false;
startTime -= 1/room_speed;

visible = true;

if(usingMouse)
{
	x = mouse_x;
	y = mouse_y;
}
else
{
	if(room = rmMenu)
	{
		visible = false;
		buttonId += sign(!!rightInputPressed + !!downInputPressed - !!leftInputPressed - !!upInputPressed);
		if(gpInputPressed != -2) buttonId += gpInputPressed;
		buttonId = (buttonId + objMenuManager.buttonId) mod objMenuManager.buttonId;
		with(objButtonParent) if(buttonId = other.buttonId) with(other)
		{
			x = other.x;
			y = other.y;
		}
	}
	else
	{
		if(point_distance(0,0,rhaxis,rvaxis) > gpDeadZone)
		{
			disAxis = 0.4*ideal_height*(0.3 + (0.7*sqrt(sqr(rhaxis) + sqr(rvaxis))));
			dirAxis = point_direction(0,0,rhaxis,rvaxis)
		}
		x = objDisplayManager.targetX + lengthdir_x(disAxis,dirAxis);
		y = objDisplayManager.targetY + lengthdir_y(disAxis,dirAxis);
	}
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
