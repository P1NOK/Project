/// @description Insert description here
// You can write your code in this editor

speed = 0
if (!place_meeting(x, y+vspd, Ob_wall)) {
	x -= sign(other.x) * 2
	y -= sign(other.y) * 2
}
grav = true