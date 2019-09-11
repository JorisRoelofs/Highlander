/// @description: Draw Self & Weapon
var _dis = weaponChargeDistance[item];
var _dir = weaponAngle;


if back = -1 {
    draw_self();
    if(carryingWeapon && !instance_exists(meleeId)) draw_sprite_ext(sprKnife+item,0,x,y+4,1,back,_dir,c_white,1);
} else if back = 1 {
    if(carryingWeapon && !instance_exists(meleeId)) draw_sprite_ext(sprKnife+item,0,x,y+4,1,back,_dir,c_white,1);
    draw_self();
}

if hp > 1 {
	draw_sprite_ext(sprHeart,0,x,y+12,facing,1,0,c_white,1);
}


//Draw Weapon Charge
if(weaponChargeTime >= 0)
{
	draw_set_color(cyellow);
	draw_circle(x+lengthdir_x(_dis,_dir),y+3+lengthdir_y(_dis,_dir),5*weaponChargeTime,false);
	draw_circle(x+lengthdir_x(_dis,_dir),y+3+lengthdir_y(_dis,_dir),5,true);
}



//draw_text(x,y-32,race);