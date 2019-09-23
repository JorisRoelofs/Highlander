/// @description: 
//draw_ellipse(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
//draw_self();
if(firstFrame)
{
	firstFrame = false;
	surface_set_target(objDisplayManager.backgroundSurface);
		var _n = random_range(7,10);
		for(var i = 0; i < _n; i++)
		{
			var _disMin = (charge + 0.2) * random_range(3,15);
			var _disMax = (charge + 0.2) * (_disMin + random_range(3,15));
			var _dir = (360 * i / _n) + random_range(-20,20);
			draw_line(x+lengthdir_x(_disMin,_dir),y+lengthdir_y(0.5*_disMin,_dir),x+lengthdir_x(_disMax,_dir),y+lengthdir_y(0.5*_disMax,_dir));
		}
	surface_reset_target();
}

draw_sprite_ext(sprite_index,image_index,x,y+4, scale, scale, 0, c_white, 1); //Allows the hitbox to be scaled