/// @description: Draw Button
switch (buttonEffect) {
	case 0:
		draw_sprite(raceSelec[race],image_index,artX,artY);
	break;
	case 1:
		draw_sprite(primarySelec[primary],image_index,artX,artY);
	break;
	case 2:
		draw_sprite(secundairySelec[secundairy],image_index,artX,artY);
	break;
}