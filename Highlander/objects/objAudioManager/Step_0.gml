/// @description Insert description here
// You can write your code in this editor
//audio_listener_position(view_xview[0] + (view_wview[0] / 2), view_yview[0] + (view_hview[0] / 2), 0);
audio_listener_position(view_x + (view_w / 2), view_y + (view_h / 2), 0);
audio_listener_orientation(0, 0, 1000, 0, -1, 0);

if keyboard_check_pressed(ord("M")) {
  mute++;
  
  if mute > 2 {
	  mute = 0;
  }
  
}

if mute == 0 {
	
	audio_master_gain(1);
			
	//switch (room) {
	//    case rmMenu:
	//        audio_stop_sound(music_battle_01);
			
	//		if !audio_is_playing(music_menu_01) {
	//			audio_play_sound(music_menu_01,0,true);	
	//		}

	//    break;
	//	case rmBattle:
	//        audio_stop_sound(music_menu_01);
			
	//		if !audio_is_playing(music_battle_01) {
	//			audio_play_sound(music_battle_01,0,true);	
	//		}
	//    break;
	//}
	
	
} else if mute == 1 {
		
	//audio_stop_sound(music_menu_01);
	//audio_stop_sound(music_battle_01);
	

} else if mute == 2 {
		
	audio_master_gain(0);
	
}