//Button Layout
iMax = 5;
for(var i = 0; i < iMax; i++)
{
	var _button = instance_create_layer(0.5*ideal_width,(0.25+(0.40*i/(iMax-1)))*room_height,"Menu",objButton);
	with(_button)
	{
		startX = x;
		startY = y;
	}
}


//Actor Spawning Timer
alarm[0] = 10;