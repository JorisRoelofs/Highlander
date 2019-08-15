//Game Restart
if(room != rmMenu && mouse_check_button_pressed(mb_left) && (!instance_exists(objPlayer) || objDisplayManager.place = 1)) room_goto(room);


//Keyboard Shortcuts
if(keyboard_check_pressed(vk_f1)){
	game_restart();
}

if(keyboard_check_pressed(vk_f4)) {
	window_set_fullscreen(!window_get_fullscreen());	
}

if keyboard_check(vk_alt) {
	instance_create_layer(mouse_x,mouse_y,"Trees", objMeteor);
	show_debug_message("spawn meteor");
}

if(keyboard_check_pressed(vk_escape)){
	if(room != rmMenu) room_goto(rmMenu)
	else game_end();
}