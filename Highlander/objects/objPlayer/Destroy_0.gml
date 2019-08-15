/// @description Insert description here
#region create corpse
instance_create_layer(x,y,"Foliage", objDead);
with (objDisplayManager) { 
	target = other.id;
	camereState = camereState.nothing;
}
#endregion