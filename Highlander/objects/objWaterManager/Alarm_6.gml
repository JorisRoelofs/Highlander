/// @description Insert description here
/// @description Insert description here
if instance_exists(objPlayer) {
		x = objPlayer.x;
		y = objPlayer.y;
	}
	
scr_play_snd(sndWaterRush);

with (objWater) {
	sprite_index = sprWaterTile;
}

	for (var i = 1; i < 17; ++i) {
	    var left = instance_create_layer(480,480+(i*64),"Water", objWater)
			left.image_angle = 270;
	
		var bottom = instance_create_layer(480+(i*64),room_height-480,"Water", objWater);
			bottom.image_angle = 0;

		var right =	instance_create_layer(room_width-480,480+(i*64),"Water", objWater);
			right.image_angle = 90;
		
		var up = instance_create_layer(480+(i*64),480,"Water", objWater);
			up.image_angle = 180;
	}


	var leftTop = instance_create_layer(480,480,"Water",objWater);
		leftTop.sprite_index = sprWaterCorner;
		
	var leftBottom = instance_create_layer(480,room_height-480,"Water",objWater);
		leftBottom.sprite_index = sprWaterCorner;
		leftBottom.image_angle = 90;
		
	var rightBottom = instance_create_layer(room_width-480,room_height-480,"Water",objWater);
		rightBottom.sprite_index = sprWaterCorner;
		rightBottom.image_angle = 180;
		
	var rightTop = instance_create_layer(room_width-480,480,"Water",objWater);
		rightTop.sprite_index = sprWaterCorner;
		rightTop.image_angle = 270;
	
