/// @description: Draw Self & Weapon
event_inherited();

var _dis = weaponChargeDistance[item];
var _dir = weaponAngle;


if back = -1 {
    draw_self();
    if(carryingWeapon && !instance_exists(meleeId)) draw_sprite_ext(sprKnife+item,0,x,y+4,1,back,_dir,c_white,1);
} else if back = 1 {
    if(carryingWeapon && !instance_exists(meleeId)) draw_sprite_ext(sprKnife+item,0,x,y+4,1,back,_dir,c_white,1);
    draw_self();
}


//Draw Weapon Charge
if(weaponChargeTime >= 0)
{
	draw_set_color(cyellow);
	draw_circle(x+lengthdir_x(_dis,_dir),y+3+lengthdir_y(_dis,_dir),5*weaponChargeTime,false);
	draw_circle(x+lengthdir_x(_dis,_dir),y+3+lengthdir_y(_dis,_dir),5,true);
}