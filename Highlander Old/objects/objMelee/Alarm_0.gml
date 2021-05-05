/// @description: Charge Buff
if(charge)
{
	image_xscale = 2;
	image_yscale = image_xscale;
}

scr_shake(5 + (10 * charge), 2, owner, x, y);