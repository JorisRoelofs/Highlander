/// @description: 
with(instance_create_layer(x+hspeed,y+vspeed,"Entities",objBombExplosion))
{
	owner = other.owner;
	charge = other.charge;
}