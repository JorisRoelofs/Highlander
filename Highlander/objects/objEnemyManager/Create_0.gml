/// @description Insert description here
for (var i = 0; i < 99; ++i) {
	
	var _ran_x = random_range(64,room_width-64);
	var _ran_y = random_range(64,room_height-64);
	
	if point_distance(x,y,objPlayer.x,objPlayer.y) > 100 {
		instance_create_layer(_ran_x,_ran_y , "Entities", objEnemy);
	}
}