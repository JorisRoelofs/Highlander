/// @description  States and Camerapositioning
switch (camereState) {
	
	
	//Dead Player / Menu State
	case camereState.nothing:
		camera_set_view_size(view_camera[0],view_w,view_h);
		
		if instance_exists(objPlayer) {
			target = objPlayer;
			camereState = camereState.followPlayer;
		}
	break;
	
	
	//Drag Behind Player
	case camereState.followPlayer:
		camera_set_view_size(view_camera[0],view_w,view_h);
		
		var _x = clamp(target.x-view_w/2,0,room_width- view_w);
		var _y = clamp(target.y-view_h/2,0,room_height- view_h);
					
		var _cur_x = camera_get_view_x(view_camera[0]);
		var _cur_y = camera_get_view_y(view_camera[0]);
							
		var _spd = .1;
	
		//Unused
		//var length = point_distance(target.x,target.y,mouse_x,mouse_y)/2;
		//var dir = point_direction(target.x,target.y,mouse_x,mouse_y);
		//var _mousex = lengthdir_x(length,dir);
		//var _mousey = lengthdir_y(length,dir);
		//var _zoomX = lerp(0,_mousex,.2);

		var _ran_x,_ran_y;

		//Screenshake
		if (shake) {
			_ran_x = random_range(-intensity,intensity);
			_ran_y = random_range(-intensity,intensity);
		} else {
			_ran_x = 0;
			_ran_y = 0;
		}
		
		
		//Camera Positioning
		camera_set_view_pos(view_camera[0],(lerp(_cur_x,_x,_spd)+_ran_x), (lerp(_cur_y,_y,_spd)+_ran_y));
	break;
}