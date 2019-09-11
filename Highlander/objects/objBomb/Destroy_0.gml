/// @description: 
with(instance_create_layer(x,y,"Instances",objBombExplosion))
{
	owner = other.owner;
	charge = other.charge;
}