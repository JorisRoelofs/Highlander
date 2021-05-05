/// @description: Background Surface
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


//Enemy killcounter
with(objEnemy) if(scr_in_view() && id != objLegendary.owner)
{
	//Skull Kill Counter
	var _sep = 8;
	var _center = x - (0.5 * _sep * ((kills div 5) + (kills mod 5) - 1));
	
	for (var j = 0; j < kills div 5; ++j) {
		//draw_sprite_ext(sprKills,0,_center+(j*_sep),y-21,1.5,1.5,0,c_white,1);
		draw_sprite(sprKills,1,_center+(j*_sep),y-21);
	}
		
	for (var i = 0; i < kills mod 5; ++i) {
		draw_sprite(sprKills,0,_center+((i+j)*_sep),y-21);
	}
}

