/// @description: Camera Zoom


///Zoom Camera
if keyboard_check(vk_f2) {
  cameraZoom++;
	alarm[0]=1;
}

if(cameraZoom>maxCameraZoom)
cameraZoom=1;


///Zoom Window
if(keyboard_check_pressed(vk_f3)) {
  zoom++;
  
  if(zoom>max_zoom) {
    zoom=1;
	window_set_size(ideal_width*zoom,ideal_height*zoom);
	alarm[0]=1;
  }
  
}


//Cursor
if (window_get_fullscreen()) { cursor_sprite = sprCursorLarge; }
else { cursor_sprite = sprCursor; }


//Target Failsafe
if target = undefined {
	with (objDisplayManager) { camereState = camereState.nothing; }
}