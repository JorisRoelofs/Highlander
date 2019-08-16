/// @description: Flickering & Activation


//Flickering
if time < 10 {
	time++;
	alarm[0] = 8;
	visible = !visible;


//Activation
} else {
	time++;
	visible = true;	
	with(objEntity) if(place_meeting(x,y,other)) instance_destroy();
}