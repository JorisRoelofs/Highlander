/// @description Insert description here
scr_singleton();
scr_BasicCollision_init(100);

if room = rmAction {
x = room_width/2;
y = room_height/2;
} else {
x = ideal_width/2;	
	
}

t = random(1);

instance_create_layer(x-8,y-48,"Entities",objGun);
