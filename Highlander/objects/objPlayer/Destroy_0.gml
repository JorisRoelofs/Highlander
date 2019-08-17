/// @description: Corpse
var _corpse = instance_create_layer(x,y,"Foliage", objDead);
with (objDisplayManager) { 
	target = _corpse;
	camereState = camereState.nothing;
}