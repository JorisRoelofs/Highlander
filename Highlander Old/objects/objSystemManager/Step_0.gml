/// @description: Restart On Victory
if(room != rmMenu && objCursor.weaponStartInput && (!instance_exists(objPlayer) || place = 1)) room_goto(room);

if instance_exists(objPlayer) {
	kills = objPlayer.kills;
	place = instance_number(objEntity);
}

/*
frame++;
if((frame mod 60) = 0)
{
	instance_activate_all();
	with(objEnemy) if(abs(x - objDisplayManager.targetX) > ideal_width || abs(y - objDisplayManager.targetY) > ideal_height) instance_deactivate_object(self);
}