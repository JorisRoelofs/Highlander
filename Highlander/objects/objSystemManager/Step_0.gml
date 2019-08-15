/// @description Insert description here

if(keyboard_check_pressed(vk_f1)){
	game_restart();
}

if(keyboard_check_pressed(vk_f4)) {
	window_set_fullscreen(!window_get_fullscreen());	
}

if (window_get_fullscreen()) { cursor_sprite = sprCursorLarge; }
else { cursor_sprite = sprCursor; }

if keyboard_check(vk_alt) {
	instance_create_layer(mouse_x,mouse_y,"Trees", objMeteor);
	show_debug_message("spawn meteor");
}