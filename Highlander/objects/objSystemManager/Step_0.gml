/// @description Insert description here

if(keyboard_check_pressed(vk_f1)){
	game_restart();
}

if(keyboard_check_pressed(vk_f4)) {
	window_set_fullscreen(!window_get_fullscreen());	
}

if (window_get_fullscreen()) { cursor_sprite = sprCursorLarge; }
else { cursor_sprite = sprCursor; }