/// @description: First Frame Timer
var _dis = 200;
var _ran_x = random_range(_dis,room_width-_dis);
var _ran_y = random_range(_dis,room_height-_dis);
		
instance_create_layer(_ran_x,_ran_y , "Entities", objPlayer);

alarm[0]=1;