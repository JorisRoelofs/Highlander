/// @description: 
if(!surface_exists(backgroundSurface)) backgroundSurface = surface_create(room_width,room_height);

surface_set_target(backgroundSurface);
	with(objFoliage)
	{
		draw_self();
		instance_destroy();
	}
	with(objArrow)
	{
		if(speed = 0 && alarm[0] = -1)
		{
			draw_self();
			instance_destroy();
		}
	}
	with(objDead)
	{
		if(image_speed = 0)
		{
			draw_self();
			instance_destroy();
		}
	}
surface_reset_target();

draw_surface(backgroundSurface,0,0);