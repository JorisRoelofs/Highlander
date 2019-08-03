/// @description Insert description here
selected = position_meeting(x,y,objCursor);
input = mouse_check_button_pressed(mb_left);

if(selected && input)
{
	switch(buttonEffect)
	{
		case "startGame": room_goto_next();
		break;
	}
}