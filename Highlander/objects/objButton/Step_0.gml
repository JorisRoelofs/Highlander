/// @description: Button Function & Art Variables


//Inputs
if(instance_exists(objCursor)) selected = position_meeting(objCursor.x,objCursor.y,self);
input = objCursor.weaponStartInput;
//inputHeld = mouse_check_button(mb_left);

if keyboard_check(vk_tab) { room_goto(rmIce);}

//On CLick
if(selected && input)
{
	switch(buttonEffect)
	{
			   case startGame: room_goto(rooms[roomChoice]);
		break; case quitGame: game_end();
		break; case switchFullscreen: window_set_fullscreen(!window_get_fullscreen());
		break; case switchSound: 
			with(objSystemManager)
			{
				audioSetting = ++audioSetting mod 3;
				audio_sound_gain(musicTitle,!audioSetting,0.2);
				audio_master_gain(!(audioSetting - 1));
				show_debug_message(!(audioSetting - 1));
			}
		break;
		case switchRoom: roomChoice = ++roomChoice mod array_length_1d(rooms); break;
	}
}


//Art Variables
if(selected) depth = -100;
else depth = buttonEffect;

image_index = selected;
if(buttonEffect = switchSound) image_index += 2 * objSystemManager.audioSetting;
if(buttonEffect = switchRoom) image_index += 2 * roomChoice;

var _targetX = startX + (selected * 5 * sin(0.5 * pi * t));
var _targetY = startY + (selected * 5 * sin((0.8 * pi * t) + 0.2));
artX += (_targetX - artX) * 0.5;
artY += (_targetY - artY) * 0.5;

t += 1/room_speed;