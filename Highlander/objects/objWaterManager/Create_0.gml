/// @description Insert description here

alarm[0] = 30;
alarm[1] = 90;

for (var i = 1; i < 31; ++i) {
    var left = instance_create_layer(32,32+(i*64),"Foliage", objWater)
		left.image_angle = 270;
	
	var bottom = instance_create_layer(32+(i*64),room_height-32,"Foliage", objWater);
		bottom.image_angle = 0;

	var right =	instance_create_layer(room_width-32,32+(i*64),"Foliage", objWater);
		right.image_angle = 90;
		
	var up = instance_create_layer(32+(i*64),32,"Foliage", objWater);
		up.image_angle = 180;
}


	var leftTop = instance_create_layer(32,32,"Foliage",objWater);
		leftTop.sprite_index = sprWaterCorner;
		
	var leftBottom = instance_create_layer(32,room_height-32,"Foliage",objWater);
		leftBottom.sprite_index = sprWaterCorner;
		leftBottom.image_angle = 90;
		
	var rightBottom = instance_create_layer(room_width-32,room_height-32,"Foliage",objWater);
		rightBottom.sprite_index = sprWaterCorner;
		rightBottom.image_angle = 180;
		
	var rightTop = instance_create_layer(room_width-32,32,"Foliage",objWater);
		rightTop.sprite_index = sprWaterCorner;
		rightTop.image_angle = 270;
	
