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
			
			{
			var _instanceAmount = instance_number(objEntity);
			
			draw_set_font(fnt16);
			draw_set_color(cyellow);
			draw_set_halign(fa_center);
			draw_set_valign(fa_top);
			draw_text(ideal_width/2,16,_instanceAmount);
		
			}
		

		
			if instance_exists(objPlayer) {
				var _playerDash = objPlayer.dashes;
				var _sep = 9;
				var _screenCenter = ideal_width/2-((_playerDash/2)*_sep);
	
				for (var i = 0; i < _playerDash; ++i) {
				    draw_sprite(sprDashSymbol,0,(_screenCenter)+(i*_sep),ideal_height-21);
				}
				
				with(objPlayer)
				{
					//if(item)
					{
						var _target = instance_nearest(x,y,objEnemy);
						if(instance_exists(_target))
						{
							var _dis = min(0.5*ideal_height, point_distance(view_xport,y-vspeed,_target.x,_target.y-10));
							var _dir = point_direction(x-hspeed,y-vspeed,_target.x,_target.y-10);
							pointerTargetX = 0.5*ideal_width+lengthdir_x(_dis,_dir);
							pointerTargetY = 0.5*ideal_height+lengthdir_y(_dis,_dir);
							draw_sprite(sprCrown,0,pointerTargetX,pointerTargetY);
						}
					}
				}
		
			} else {
			
			
				draw_set_font(fnt16);
				draw_set_color(cyellow);
				draw_set_halign(fa_center);
				draw_set_valign(fa_top);
				draw_text(ideal_width/2,ideal_height/2-64,"PLAYER DED");
		
			
			
			}
		
		}


