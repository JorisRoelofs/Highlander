/// @description: Restart On Victory
if(room != rmMenu && mouse_check_button_pressed(mb_left) && (!instance_exists(objPlayer) || place = 1)) room_goto(room);

if instance_exists(objPlayer) {
	kills = objPlayer.kills;
}