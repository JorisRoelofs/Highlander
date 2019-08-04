/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(ideal_width,ideal_height);


if debug_mode {
	{
	draw_set_font(fnt16);
	draw_set_color(c_white);
	//display_write_all_specs(32,32);
	draw_text(display_get_gui_width()/2,display_get_gui_height()-10,fps);
	
	}
}


		if room = rmAction {
			
			if instance_exists(objPlayer) {
				var _playerDash = objPlayer.dashes;
				var _sep = 9;
				var _screenCenter = ideal_width/2-((_playerDash/2)*_sep);
	
				for (var i = 0; i < _playerDash; ++i) {
				    draw_sprite(sprDashSymbol,0,(_screenCenter)+(i*_sep),ideal_height-21);
				}
				
				with(objPlayer)
				{
					if(item) var _target = objGun;
					else var _target = instance_nearest(x,y,objEnemy);
					if(instance_exists(_target))
					{
						if(abs(_target.x - camera_get_view_x(view_camera[0]) - (0.5*ideal_width)) < 0.5*ideal_width && abs(_target.y - camera_get_view_y(view_camera[0]) - (0.5*ideal_height)) < 0.5*ideal_height)
						{
							var _dis = point_distance(camera_get_view_x(view_camera[0])+0.5*ideal_width,camera_get_view_y(view_camera[0])+0.5*ideal_height,_target.x,_target.y-20);
							var _mul = max((200 - _dis)/300,0.05);
							pointerTargetX += (_target.x - camera_get_view_x(view_camera[0]) - pointerTargetX) * _mul;
							pointerTargetY += (_target.y - 20 - camera_get_view_y(view_camera[0]) - pointerTargetY) * _mul;
								
						}
						else
						{
							var _dis = min(0.4*ideal_height, point_distance(camera_get_view_x(view_camera[0])+0.5*ideal_width,camera_get_view_y(view_camera[0])+0.5*ideal_height,_target.x,_target.y-10));
							var _dir = point_direction(camera_get_view_x(view_camera[0])+0.5*ideal_width,camera_get_view_y(view_camera[0])+0.5*ideal_height,_target.x,_target.y-20);
							pointerTargetX += (0.5*ideal_width+lengthdir_x(_dis,_dir) - pointerTargetX)*0.05;
							pointerTargetY += (0.5*ideal_height+lengthdir_y(_dis,_dir) - pointerTargetY)*0.05;
						}
						draw_sprite(sprCrown,!item,pointerTargetX,pointerTargetY);
					}
				}
		
			} else {
			
				draw_set_font(fnt16);
				draw_set_color(cpurple);
				draw_set_halign(fa_center);
				draw_set_valign(fa_top);
				draw_text(ideal_width/2-1,ideal_height/2-64,"PLAYER DED");
				
				draw_set_font(fnt16);
				draw_set_color(cpurple);
				draw_set_halign(fa_center);
				draw_set_valign(fa_top);
				draw_text(ideal_width/2+1,ideal_height/2-64,"PLAYER DED");
				
				draw_set_font(fnt16);
				draw_set_color(cpurple);
				draw_set_halign(fa_center);
				draw_set_valign(fa_top);
				draw_text(ideal_width/2,ideal_height/2-64-1,"PLAYER DED");
				
				draw_set_font(fnt16);
				draw_set_color(cpurple);
				draw_set_halign(fa_center);
				draw_set_valign(fa_top);
				draw_text(ideal_width/2,ideal_height/2-64+1,"PLAYER DED");
			
				draw_set_font(fnt16);
				draw_set_color(cyellow);
				draw_set_halign(fa_center);
				draw_set_valign(fa_top);
				draw_text(ideal_width/2,ideal_height/2-64,"PLAYER DED");
		
			}
			
			var _instanceAmount = instance_number(objEntity);
					
		draw_set_font(fnt16);
		draw_set_color(cpurple);
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		draw_text(ideal_width/2-1,16,_instanceAmount);
		
		draw_set_font(fnt16);
		draw_set_color(cpurple);
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		draw_text(ideal_width/2+1,16,_instanceAmount);
		
		draw_set_font(fnt16);
		draw_set_color(cpurple);
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		draw_text(ideal_width/2,16-1,_instanceAmount);
		
		draw_set_font(fnt16);
		draw_set_color(cpurple);
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		draw_text(ideal_width/2,16+1,_instanceAmount);
		
		draw_set_font(fnt16);
		draw_set_color(cyellow);
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		draw_text(ideal_width/2,16,_instanceAmount);
		
		}


