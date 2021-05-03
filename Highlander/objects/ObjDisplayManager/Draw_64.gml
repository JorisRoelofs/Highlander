/// @description Menu and GUI drawing


//Setup
display_set_gui_size(ideal_width,ideal_height);

var _kills = objSystemManager.kills;
var _place = objSystemManager.place;
var _killRecord = objSystemManager.killRecord;
var _placeRecord = objSystemManager.placeRecord;
var _firstRecord = objSystemManager.firstRecord;
var _killTotal = objSystemManager.killTotal;
var _legendaryKills = objSystemManager.legendaryKills;


//Menu Screen
if room = rmMenu {
	draw_set_font(fnt8);
	draw_set_color(cyellow);
	draw_set_halign(fa_center)
	draw_text(ideal_width/2,48,"CREATION OF JORIS ROELOFS AND TOM JONGENS");

	//scrDrawText("#"+string(placeRecord),ideal_height-32,32);
	//scrDrawText("X"+string(killRecord),ideal_height-32,32);
	
	
	draw_set_font(fnt16);
	draw_set_halign(fa_center)
			
	var _colbg = cyellow;
	
	
	// PIG
	if _firstRecord < 10 {
		_colbg = cyellow;
		draw_set_color(cpurple);
	} else {
		_colbg = cpurple; draw_set_color(cyellow);
	}
	
	draw_rectangle_color(0-16,ideal_height-32,ideal_width+16,ideal_height-16,_colbg,_colbg,_colbg,_colbg,false);
	draw_text(ideal_width/2, ideal_height-32,"PIG: GET 1ST PLACE 10 TIMES " +string(_firstRecord) + " /10");
	
	/*
	
	//BAZOOKA
	if _killTotal < 100 {
		_colbg = cyellow;
		draw_set_color(cpurple);
	} else {
		_colbg = cpurple; draw_set_color(cyellow);
	}
	
	draw_rectangle_color(0-16,ideal_height-48,ideal_width+16,ideal_height-32,_colbg,_colbg,_colbg,_colbg,false);
	draw_text(ideal_width/2, ideal_height-48,"BAZOOKA: GET TOTAL 100 KILLS " +string(_killTotal) + " /100");
	
	//GOAT
	if _legendaryKills < 10 {
		_colbg = cyellow;
		draw_set_color(cpurple);
	} else {
		_colbg = cpurple; draw_set_color(cyellow);
	}
	draw_rectangle_color(0-16,ideal_height-64,ideal_width+16,ideal_height-48,_colbg,_colbg,_colbg,_colbg,false);
	draw_text(ideal_width/2, ideal_height-64,"GOAT: GET 10 LEGENDARY KILLS " +string(_legendaryKills) + " /10");
	
	//BUNNY
	if _killRecord < 20 {
		_colbg = cyellow;
		draw_set_color(cpurple);
	} else {
		_colbg = cpurple; draw_set_color(cyellow);
	}
	draw_rectangle_color(0-16,ideal_height-80,ideal_width+16,ideal_height-64,_colbg,_colbg,_colbg,_colbg,false);
	draw_text(ideal_width/2, ideal_height-80,"BUNNY: GET 20 KILL STREAK " +string(_killRecord) + " /20");
	
	*/
	
}


//GUI
else {
	
	
	
	if instance_exists(objLegendary.owner) {
		//Set Place & Kills
		_place = instance_number(objEntity);
		_kills = objLegendary.owner.kills;
		
		//Skull Kill Counter
		var _sep = 12;
		var _screenCenter = ideal_width/2-((((_kills div 5) + (_kills mod 5))/2)*_sep);
	
		for (var j = 0; j < _kills div 5; ++j) {
			draw_sprite_ext(sprCrown,1,(_screenCenter)+(j*_sep),ideal_height-21,1.5,1.5,0,c_white,1);
		}
		
		for (var i = 0; i < _kills mod 5; ++i) {
			draw_sprite(sprCrown,1,(_screenCenter)+((i+j)*_sep),ideal_height-21);
		}
	
	
		//Draw Crown
		with(objLegendary.owner)
		{
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
			
			draw_sprite_ext(sprCrown,0,x-other.cameraX,y-20-other.cameraY,crownScale,crownScale,0,c_white,1);
			
			/*//Enemy Pointer
			//Determine Pointer Location
			if(item != objLegendary.item) var _target = objLegendary;
			else var _target = instance_nearest(x,y,objEnemy);
			
			if(instance_exists(_target)) {
				//Draw On Target If In View
				if(scr_in_view(-30,_target)) {
					var _dis = point_distance(other.cameraX+0.5*ideal_width,other.cameraY+0.5*ideal_height,_target.x,_target.y-20);
					var _mul = max((300 - _dis)/400,0.05);
					pointerTargetX += (_target.x - other.cameraX - pointerTargetX) * _mul;
					pointerTargetY += (_target.y - 20 - other.cameraY - pointerTargetY) * _mul;
				}
				
				
				//Point To Target If Outside View
				else {
					var _dis = min(0.4*ideal_height, point_distance(other.cameraX+0.5*ideal_width,other.cameraY+0.5*ideal_height,_target.x,_target.y-10));
					var _dir = point_direction(other.cameraX+0.5*ideal_width,other.cameraY+0.5*ideal_height,_target.x,_target.y-20);
					pointerTargetX += (0.5*ideal_width+lengthdir_x(_dis,_dir) - pointerTargetX)*0.05;
					pointerTargetY += (0.5*ideal_height+lengthdir_y(_dis,_dir) - pointerTargetY)*0.05;
				}
				
				
				//Draw Pointers
				draw_sprite_ext(sprCrown,(item=objLegendary.item),pointerTargetX,pointerTargetY,crownScale,crownScale,0,c_white,1);
				if(item = objLegendary.item) draw_sprite_ext(sprCrown,0,x-other.cameraX,y-20-other.cameraY,crownScale,crownScale,0,c_white,1);
			}*/
		}
		
		
		//Victory Message
		if(_place = 1) scrDrawText("Winner winner chicken dinner",0.5*ideal_height);
	}
	
	
	/*//Death Message
	else
	{
		if(mouse_check_button_pressed(mb_left)) room_goto(room);
		scrDrawText("Ded",0.5*ideal_height);
	}*/
	
	
	//Kill & Place Counters
	var _strPlace = "#" + string(_place);
	var _strKill = "X" + string(_kills);

	/*if(_place = 1 || !instance_exists(objPlayer))
	{
		if(_place < _placeRecord) _strPlace = string_insert("New record: ", _strPlace, 0);
		if(_kills > _killRecord) _strKill = string_insert("New record: ", _strKill, 0);
	}*/
		
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