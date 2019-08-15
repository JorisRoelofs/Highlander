/// @description Insert description here
range = 31;
spacing = 32;

switch (room) {
	case rmIsland:
		sprTile =	sprWater;
		sprCorner = sprWaterCorner;	
		range -= 2;
		spacing += 64;
		alarm[1] = room_speed * 5;
	break;
	case rmVolcano:
		sprTile = sprLava;
		sprCorner =  sprLavaCorner;
		alarm[1] = room_speed * 5;
	break;
}


for (var i = 1; i < range; ++i) {
    var left = instance_create_layer(spacing,spacing+(i*64),"Water", objWater)
		left.image_angle = 270;
		left.sprite_index = sprTile;
	
	var bottom = instance_create_layer(spacing+(i*64),room_height-spacing,"Water", objWater);
		bottom.image_angle = 0;
		bottom.sprite_index = sprTile;

	var right =	instance_create_layer(room_width-spacing,spacing+(i*64),"Water", objWater);
		right.image_angle = 90;
		right.sprite_index = sprTile;
		
	var up = instance_create_layer(spacing+(i*64),spacing,"Water", objWater);
		up.image_angle = 180;
		up.sprite_index = sprTile;
}


	var leftTop = instance_create_layer(spacing,spacing,"Water",objWater);
		leftTop.sprite_index = sprCorner;
		
	var leftBottom = instance_create_layer(spacing,room_height-spacing,"Water",objWater);
		leftBottom.sprite_index = sprCorner;
		leftBottom.image_angle = 90;
		
	var rightBottom = instance_create_layer(room_width-spacing,room_height-spacing,"Water",objWater);
		rightBottom.sprite_index = sprCorner;
		rightBottom.image_angle = 180;
		
	var rightTop = instance_create_layer(room_width-spacing,spacing,"Water",objWater);
		rightTop.sprite_index = sprCorner;
		rightTop.image_angle = 270;
		


for (var i = instance_number (objFoliage); i < 400; ++i) {
    if !place_meeting(x,y,objFoliage) and  !place_meeting(x,y,objBowShrine) and  !place_meeting(x,y,objTree) {
		instance_create_layer(random_range(0,room_width),random_range(0,room_height),"Foliage", objFoliage);
	}
}

