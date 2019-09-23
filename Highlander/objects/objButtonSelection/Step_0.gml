/// @description Insert description here
/// @description: Button Function & Art Variables


//Inputs
if(instance_exists(objCursor)) selected = position_meeting(objCursor.x,objCursor.y,self);
input = mouse_check_button_pressed(mb_left);
inputHeld = mouse_check_button(mb_left);


//On CLick
if(selected && input)
{
	switch(buttonEffect)
	{
		case 0: // race
			race = ++race mod 4;
			objSystemManager.race = race;
		break; 
		case 1: // primary
			primary = ++primary mod 3;
			objSystemManager.primary = primary;
		break; 
		case 2: // secundairy
			secundairy = ++secundairy mod 3;
			objSystemManager.secundairy = secundairy;
		break; 
	}
}


//Art Variables
if(selected) depth = -100;
else depth = buttonEffect;

image_index = selected;

var _targetX = startX + (selected * 5 * sin(0.5 * pi * t));
var _targetY = startY + (selected * 5 * sin((0.8 * pi * t) + 0.2));
artX += (_targetX - artX) * 0.5;
artY += (_targetY - artY) * 0.5;

t += 1/room_speed;