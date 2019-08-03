/// @description Insert description here
if instance_number (objFoliage) < 300 {

	if !place_meeting(x,y,objFoliage) {
	
		instance_create_layer(random_range(0,room_width),random_range(0,room_height),"Foliage", objFoliage);
	
	}
	
}