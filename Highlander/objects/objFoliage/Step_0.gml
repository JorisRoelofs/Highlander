/// @description Insert description here
if instance_number (objFoliage) < 400 {

	if !place_meeting(x,y,objFoliage) and  !place_meeting(x,y,objBowShrine) and  !place_meeting(x,y,objTree) {
	
		instance_create_layer(random_range(0,room_width),random_range(0,room_height),"Foliage", objFoliage);
	
	}
	
}

