/// @description Insert description here
collisionMass = 100;
scr_BasicCollision_init(collisionMass);
visible = false;
time = 0;
alarm[0] = 10;
var _inst = instance_place(x,y,objEntity);
instance_destroy(_inst);