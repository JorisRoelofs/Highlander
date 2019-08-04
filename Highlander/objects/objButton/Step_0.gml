/// @description Insert description here
if(instance_exists(objCursor)) selected = position_meeting(objCursor.x,objCursor.y,self);
input = mouse_check_button_pressed(mb_left);
inputHeld = mouse_check_button(mb_left);

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
			audio_master_gain(!audioSetting);
			audio_sound_gain(sndMusic,!(audioSetting - 1),0.2);
		}
		break;
	}
}

image_index = (3*buttonEffect) + (selected * (1 + inputHeld));

targetX = startX + selected*5*sin(0.5*pi*t);
targetY = startY + selected*5*sin(0.8*pi*t + 0.2);

artX += (targetX - artX) * 0.5;
artY += (targetY - artY) * 0.5;

t += 1/room_speed;