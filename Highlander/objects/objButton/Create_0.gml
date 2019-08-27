/// @description: Button Function & Art Variables


//Button Function
buttonEffect = instance_number(objButton) - 1;
sprite_index += buttonEffect;

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
rooms[2] = rmIce;


//Art Variables
artX = x;
artY = y;

t = random(1);