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
		case switchSound: audioMasterGain = !audioMasterGain;
		audio_master_gain(audioMasterGain);
		break;
	}
}

image_index = selected * (1 + inputHeld);

targetX = startX + selected*5*sin(0.5*pi*t);
targetY = startY + selected*5*sin(0.8*pi*t + 0.2);

artX += (targetX - artX) * 0.5;
artY += (targetY - artY) * 0.5;

t += 1/room_speed;