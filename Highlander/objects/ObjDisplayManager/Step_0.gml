//Keyboard Shortcuts DON'T BELONG HERE
if(keyboard_check_pressed(vk_escape)){
	if(room != rmMenu) room_goto(rmMenu)
	else game_end();
}

if(room != rmMenu && !instance_exists(objPlayer) && mouse_check_button_pressed(mb_left)) room_goto(room); //SHOULDN'T BE HERE


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


//Target Failsafe
if target = undefined {
	with (objDisplayManager) { camereState = camereState.nothing; }
}