if(keyboard_check_pressed(vk_f1)){
	game_restart();
}

///Zoom camera
if keyboard_check(vk_f2) {
  cameraZoom++;
	alarm[0]=1;
}

///Zoom window
if(keyboard_check_pressed(vk_f3)) {
  zoom++;
  
  if(zoom>max_zoom) {
    zoom=1;
	show_debug_message(zoom);
	window_set_size(ideal_width*zoom,ideal_height*zoom);
	alarm[0]=1;
  }
  
}


if(keyboard_check_pressed(vk_f4)) {
	window_set_fullscreen(!window_get_fullscreen());	
}

if(cameraZoom>maxCameraZoom)
cameraZoom=1;


//if (window_get_fullscreen()) { cursor_sprite = sprCrossHairLarge; }
//else { cursor_sprite = sprCrossHair; }
	
if target = undefined {
	with (objDisplayManager) { camereState = camereState.nothing; }
}
