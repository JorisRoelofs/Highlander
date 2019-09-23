/// @description: 
with(instance_create_layer(x,y+4,"Instances",objBombExplosion))
{
	owner = other.owner;
	charge = 1 - (other.deathDistance / other.deathDistanceMax);
}