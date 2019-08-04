/// @description Insert description here
if time < 10 {
	
	if visible = true {
		visible = false;
	} else visible = true;
	
	time++;
	
	alarm[0] = 8;

} else {
	time++;
	visible = true;	
	var _inst = instance_place(x,y,objEntity);
	instance_destroy(_inst);
	collisionMass = 100;
}