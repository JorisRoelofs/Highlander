/// @description Insert description here
/// @description: Button Function & Art Variables

//Button Function
buttonEffect = instance_number(objButton) - 1;


var i = 0;
character = i;
characterSelec[i++] = sprChickenIdle;
characterSelec[i++] = sprBunnyIdle;
characterSelec[i++] = sprPigIdle;
characterSelec[i++] = sprGoatIdle;

var i = 0;
primary = i;
primarySelec[i++] = sprBow;
primarySelec[i++] = sprMelee;
primarySelec[i++] = sprSpear;
primarySelec[i++] = sprBazooka;

var i = 0;
secundairy = i;
secundairySelec[i++] = sprBow;
secundairySelec[i++] = sprMelee;
secundairySelec[i++] = sprSpear;
secundairySelec[i++] = sprBazooka;

selected = false;
input = false;
inputHeld = false;
roomChoice = 0;

//Art Variables
artX = x;
artY = y;

t = random(1);