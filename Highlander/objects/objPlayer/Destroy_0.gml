/// @description: Corpse
instance_create_layer(x,y,"Foliage", objDead);
with (objDisplayManager) { 
	target = other.id;
	camereState = camereState.nothing;
}