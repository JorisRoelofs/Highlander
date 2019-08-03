/// @description Insert description here
scr_singleton();
scr_BasicCollision_init(100);
x = room_width/2;
y = room_height/2;
t = random(1);

instance_create_layer(x-8,y-48,"Entities",objGun);