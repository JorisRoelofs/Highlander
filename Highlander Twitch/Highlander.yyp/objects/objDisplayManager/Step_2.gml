/// @description  Camerap Positioning

//Target position
if instance_exists(objLegendary) target = objLegendary;
if(instance_exists(target))
{
	targetX = target.x;
	targetY = target.y;
}
		
camera_set_view_size(view_camera[0],view_w,view_h); //2* = WEB-ONLY!!!
		
var _x = clamp(targetX-view_w/2,0,room_width- view_w);
var _y = clamp(targetY-view_h/2,0,room_height- view_h);
					
var _cur_x = camera_get_view_x(view_camera[0]);
var _cur_y = camera_get_view_y(view_camera[0]);
							
//Screenshake
if (shake) {
	ran_x = choose(-1, 1) * random_range(0.5 * intensity, intensity);
	ran_y = choose(-1, 1) * random_range(0.5 * intensity, intensity);
} else {
	ran_x = 0;
	ran_y = 0;
}


//Camera Positioning
var _spd = .1;
cameraX = clamp(lerp(_cur_x, _x, _spd) + ran_x, 0, room_width - (0.5 * ideal_width));
cameraY = clamp(lerp(_cur_y, _y, _spd) + ran_y, 0, room_height - (0.5 * ideal_height));
camera_set_view_pos(view_camera[0], cameraX, cameraY);
cameraXPrev = cameraX;
cameraYPrev = cameraY;

//Unused cursor attraction
//var length = point_distance(target.x,target.y,mouse_x,mouse_y)/2;
//var dir = point_direction(target.x,target.y,mouse_x,mouse_y);
//var _mousex = lengthdir_x(length,dir);
//var _mousey = lengthdir_y(length,dir);
//var _zoomX = lerp(0,_mousex,.2);