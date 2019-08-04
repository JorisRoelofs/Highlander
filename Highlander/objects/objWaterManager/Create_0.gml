/// @description Insert description here

alarm[0] = room_speed * 10;
alarm[1] = room_speed * 20;
alarm[2] = room_speed * 30;
alarm[3] = room_speed * 40;
alarm[4] = room_speed * 50;
alarm[5] = room_speed * 60;
alarm[6] = room_speed * 70;

base = 1;

for (var i = 1; i < 31; ++i) {
    var left = instance_create_layer(32,32+(i*64),"Water", objWater)
		left.image_angle = 270;
	
	var bottom = instance_create_layer(32+(i*64),room_height-32,"Water", objWater);
		bottom.image_angle = 0;

	var right =	instance_create_layer(room_width-32,32+(i*64),"Water", objWater);
		right.image_angle = 90;
		
	var up = instance_create_layer(32+(i*64),32,"Water", objWater);
		up.image_angle = 180;
}


	var leftTop = instance_create_layer(32,32,"Water",objWater);
		leftTop.sprite_index = sprWaterCorner;
		
	var leftBottom = instance_create_layer(32,room_height-32,"Water",objWater);
		leftBottom.sprite_index = sprWaterCorner;
		leftBottom.image_angle = 90;
		
	var rightBottom = instance_create_layer(room_width-32,room_height-32,"Water",objWater);
		rightBottom.sprite_index = sprWaterCorner;
		rightBottom.image_angle = 180;
		
	var rightTop = instance_create_layer(room_width-32,32,"Water",objWater);
		rightTop.sprite_index = sprWaterCorner;
		rightTop.image_angle = 270;
	
