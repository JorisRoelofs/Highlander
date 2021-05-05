/// @description Insert description here
image_speed = 0;
image_index = image_number -1;

if createdMeteor = false {
	var a = instance_create_layer(x,y-512,"Entities", objMeteor);
		a.targetX = x;
		a.targetY = y;
		a.shadeID = id;
	createdMeteor = true;
}