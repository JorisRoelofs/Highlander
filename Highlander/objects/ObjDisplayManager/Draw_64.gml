/// @description Menu and GUI drawing


//Setup
display_set_gui_size(ideal_width,ideal_height);


//Menu Screen
if room = rmMenu {
	draw_set_font(fnt8);
	draw_set_color(cyellow);
	
	draw_text(ideal_width/2,48,"CREATION OF JORIS ROELOFS AND TOM JONGENS");

	scrDrawText("#"+string(placeRecord),ideal_height-30,100);
	scrDrawText("X"+string(killRecord),ideal_height-30,ideal_width-100);
}


//GUI
else {
	//Skull Kill Counter
	var _sep = 12;
	var _screenCenter = ideal_width/2-((((kills div 5) + (kills mod 5))/2)*_sep);
	
	for (var j = 0; j < kills div 5; ++j) {
		draw_sprite_ext(sprCrown,1,(_screenCenter)+(j*_sep),ideal_height-21,1.5,1.5,0,c_white,1);
	}
		
	for (var i = 0; i < kills mod 5; ++i) {
		draw_sprite(sprCrown,1,(_screenCenter)+((i+j)*_sep),ideal_height-21);
	}
	
	
	if instance_exists(objPlayer) {
		//Set Place & Kills
		objDisplayManager.place = instance_number(objEntity);
		objDisplayManager.kills = objPlayer.kills;
	
	
		with(objPlayer) {
			//Scale Pointers
			if(mode = 0) {
				crownScale -= rate;
				crownScale -= rate;
				if(crownScale < 1) mode = 1;
			} else if(mode = 1) {
				crownScale += rate;
				crownScale += rate;
				if(crownScale > 1.1) mode = 0;
			}
			
			
			//Determine Pointer Location
			if(item != objLegendary.item) var _target = objLegendary;
			else var _target = instance_nearest(x,y,objEnemy);
			
			if(instance_exists(_target)) {
				//Draw On Target If In View
				if(scr_in_view(-30,_target)) {
					var _dis = point_distance(camera_get_view_x(view_camera[0])+0.5*ideal_width,camera_get_view_y(view_camera[0])+0.5*ideal_height,_target.x,_target.y-20);
					var _mul = max((300 - _dis)/400,0.05);
					pointerTargetX += (_target.x - camera_get_view_x(view_camera[0]) - pointerTargetX) * _mul;
					pointerTargetY += (_target.y + - 20 - camera_get_view_y(view_camera[0]) - pointerTargetY) * _mul;
				}
				
				
				//Point To Target If Outside View
				else {
					var _dis = min(0.4*ideal_height, point_distance(camera_get_view_x(view_camera[0])+0.5*ideal_width,camera_get_view_y(view_camera[0])+0.5*ideal_height,_target.x,_target.y-10));
					var _dir = point_direction(camera_get_view_x(view_camera[0])+0.5*ideal_width,camera_get_view_y(view_camera[0])+0.5*ideal_height,_target.x,_target.y-20);
					pointerTargetX += (0.5*ideal_width+lengthdir_x(_dis,_dir) - pointerTargetX)*0.05;
					pointerTargetY += (0.5*ideal_height+lengthdir_y(_dis,_dir) - pointerTargetY)*0.05;
				}
				
				
				//Draw Pointers
				draw_sprite_ext(sprCrown,(item=objLegendary.item),pointerTargetX,pointerTargetY,crownScale,crownScale,0,c_white,1);
				if(item = objLegendary.item) draw_sprite_ext(sprCrown,0,x-camera_get_view_x(view_camera[0]),y-20-camera_get_view_y(view_camera[0]),crownScale,crownScale,0,c_white,1);
			}
		}
		
		
		//Victory Message
		if(place = 1) scrDrawText("Winner winner chicken dinner",0.5*ideal_height);
	}
	
	
	//Death Message
	else
	{
		if(mouse_check_button_pressed(mb_left)) room_goto(room);
		scrDrawText("Ded",0.5*ideal_height);
	}
	
	
	//Kill & Place Counters
	var _strPlace = "#" + string(place);
	var _strKill = "X" + string(kills);

	if(place = 1 || !instance_exists(objPlayer))
	{
		if(place < placeRecord) _strPlace = string_insert("New record: ", _strPlace, 0);
		if(kills > killRecord) _strKill = string_insert("New record: ", _strKill, 0);
	}
		
	scrDrawText(_strPlace,20);
	scrDrawText(_strKill,40);
}			


//Debug Info
if debug_mode {
	draw_rectangle_color(1,1,ideal_width-2,ideal_height-2,cyellow,cyellow,cyellow,cyellow,true);

	//draw_set_font(fnt8);
	//display_write_all_specs(32,32);
	//draw_text(display_get_gui_width()/2,display_get_gui_height()-10,fps);
	////draw_text(32,32,instance_number(objDrone));
}