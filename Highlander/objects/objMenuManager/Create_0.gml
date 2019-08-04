/// @description Insert description here

iMax = 4;
for(var i = 0; i < iMax; i++)
{
	var _button = instance_create_layer(0.5*ideal_width,(0.3+(0.35*i/(iMax-1)))*room_height,"Instances",objButton);
	with(_button)
	{
		startX = x;
		startY = y;
	}
}

alarm[0] = 10;

