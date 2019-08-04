/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(ideal_width,ideal_height);


if debug_mode {
	{
	draw_set_font(fnt8);
	display_write_all_specs(32,32);
	draw_text(display_get_gui_width()/2,display_get_gui_height()-10,fps);
	
	//draw_text(32,32,instance_number(objDrone));
	}
}



		if room = rmAction {
			
				var _playerDash = objDisplayManager.kills;
				var _sep = 12;
				var _screenCenter = ideal_width/2-((((_playerDash div 5) + (_playerDash mod 5))/2)*_sep);
	
				for (var j = 0; j < _playerDash div 5; ++j) {
					draw_sprite_ext(sprCrown,1,(_screenCenter)+(j*_sep),ideal_height-21,1.5,1.5,0,c_white,1);
				}
				if(_playerDash mod 5) for (var i = 0; i < _playerDash mod 5; ++i) {
					draw_sprite(sprCrown,1,(_screenCenter)+((i+j)*_sep),ideal_height-21);
				}

			
			if instance_exists(objPlayer) {
				
				with(objPlayer)
				{
					if(item) var _target = objGun;
					else var _target = instance_nearest(x,y,objEnemy);
					if(instance_exists(_target))
					{
						if(abs(_target.x - camera_get_view_x(view_camera[0]) - (0.5*ideal_width)) < 0.5*ideal_width && abs(_target.y - camera_get_view_y(view_camera[0]) - (0.5*ideal_height)) < 0.5*ideal_height)
						{
							var _dis = point_distance(camera_get_view_x(view_camera[0])+0.5*ideal_width,camera_get_view_y(view_camera[0])+0.5*ideal_height,_target.x,_target.y-20);
							var _mul = max((300 - _dis)/400,0.05);
							pointerTargetX += (_target.x - camera_get_view_x(view_camera[0]) - pointerTargetX) * _mul;
							pointerTargetY += (_target.y + - 20 - camera_get_view_y(view_camera[0]) - pointerTargetY) * _mul;
						}
						else
						{
							var _dis = min(0.4*ideal_height, point_distance(camera_get_view_x(view_camera[0])+0.5*ideal_width,camera_get_view_y(view_camera[0])+0.5*ideal_height,_target.x,_target.y-10));
							var _dir = point_direction(camera_get_view_x(view_camera[0])+0.5*ideal_width,camera_get_view_y(view_camera[0])+0.5*ideal_height,_target.x,_target.y-20);
							pointerTargetX += (0.5*ideal_width+lengthdir_x(_dis,_dir) - pointerTargetX)*0.05;
							pointerTargetY += (0.5*ideal_height+lengthdir_y(_dis,_dir) - pointerTargetY)*0.05;
						}
						if mode = 0 {
							crownScale -= rate;
							crownScale -= rate;
							if crownScale < 1 mode = 1;
						} else if mode = 1 {
						    crownScale += rate;
						    crownScale += rate;
						    if crownScale > 1.1 mode = 0;
						}
						
						draw_sprite_ext(sprCrown,!item,pointerTargetX,pointerTargetY,crownScale,crownScale,0,c_white,1);
					}
				}

			objDisplayManager.place = instance_number(objEntity);
			objDisplayManager.kills = objPlayer.dashes;
			
			if(objDisplayManager.place = 1)
			{
				scrDrawText("Winner winner chicken dinner",0.5*ideal_height);
				if(mouse_check_button_pressed(mb_left)) room_goto(room);
				
				if(objDisplayManager.place < objDisplayManager.placeRecord)
				{
					scrDrawText("New record: #"+string(objDisplayManager.place),20);
				}
				else scrDrawText("#"+string(objDisplayManager.place),20);
				if(objDisplayManager.kills > objDisplayManager.killRecord)
				{
					scrDrawText("New record: X"+string(objDisplayManager.kills),40);
				}
				else scrDrawText("X"+string(objDisplayManager.kills),40);
			}
			else
			{
				scrDrawText("#"+string(objDisplayManager.place),20);
				scrDrawText("X"+string(objDisplayManager.kills),40);	
			}

			}			
			else
			{
				if(mouse_check_button_pressed(mb_left)) room_goto(room);
				scrDrawText("Ded",0.5*ideal_height);
				
			if(objDisplayManager.place < objDisplayManager.placeRecord)
			{
				scrDrawText("New record: #"+string(objDisplayManager.place),20);
			}
			else scrDrawText("#"+string(objDisplayManager.place),20);
			if(objDisplayManager.kills > objDisplayManager.killRecord)
			{
				scrDrawText("New record: X"+string(objDisplayManager.kills),40);
			}
			else scrDrawText("X"+string(objDisplayManager.kills),40);

			}
			
		}				
				else {
			
			draw_set_font(fnt8);
			draw_set_color(cyellow);
			draw_set_halign(fa_center);
			draw_set_valign(fa_top);
			draw_text(ideal_width/2,48,"CREATION OF JORIS ROELOFS AND TOM JONGENS");
		
		}


