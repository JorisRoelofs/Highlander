/// @description Insert description here
if(instance_exists(objCursor)) selected = position_meeting(objCursor.x,objCursor.y,self);
input = mouse_check_button_pressed(mb_left);
inputHeld = mouse_check_button(mb_left);

if selected {
	depth = -100;
} else depth = buttonEffect;

if(selected && input)
{
	switch(buttonEffect)
	{
		case startGame: room_goto_next();
		break;
		case quitGame: game_end();
		break;
		case switchFullscreen: window_set_fullscreen(!window_get_fullscreen());
		case switchSound: 
		with(objPersistent)
		{
			audioSetting = ++audioSetting mod 3;
			audio_sound_gain(sndMusic,!audioSetting,0.2);
			audio_master_gain(!(audioSetting - 1));
		}
		break;
	}
}

image_index = (2*objPersistent.audioSetting) + selected;

targetX = startX + selected*5*sin(0.5*pi*t);
targetY = startY + selected*5*sin(0.8*pi*t + 0.2);

artX += (targetX - artX) * 0.5;
artY += (targetY - artY) * 0.5;

t += 1/room_speed;