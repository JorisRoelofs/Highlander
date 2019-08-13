/// @description Insert description here
buttonEffect = instance_number(objButton) - 1;

sprite_index += buttonEffect;
//image_speed = 0;

var i = 0;
startGame = i; i++;
switchRoom = i; i++;
switchFullscreen = i; i++;
switchSound = i; i++;
quitGame = i; i++;

selected = false;
input = false;
inputHeld = false;
roomChoice = 0;

rooms[0] = rmIsland;
rooms[1] = rmVolcano;

t = random(1);

artX = x;
artY = y;