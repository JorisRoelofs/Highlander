/// @description Ice

//scr_play_snd(sndWaterRush); //Doesn't work, needs to be played in the player when near water.


//Replace Art
with (objWater) sprite_index = other.sprTileOld;


//New Tiles
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


//Corner Tiles
var leftTop = instance_create_layer(spacing,spacing,"Water",objWater);
	leftTop.sprite_index = sprCorner;
	leftTop.image_angle = 270;

var leftBottom = instance_create_layer(spacing,room_height-spacing,"Water",objWater);
	leftBottom.sprite_index = sprCorner;
	leftBottom.image_angle = 0;
		
var rightBottom = instance_create_layer(room_width-spacing,room_height-spacing,"Water",objWater);
	rightBottom.sprite_index = sprCorner;
	rightBottom.image_angle = 90;
		
var rightTop = instance_create_layer(room_width-spacing,spacing,"Water",objWater);
	rightTop.sprite_index = sprCorner;
	rightTop.image_angle = 180;
	

//Prepare Next Wave
if range > 7 and room = rmIsland {
	range -= 2;
	spacing += 64;
	alarm[0] = room_speed * 5;
}	