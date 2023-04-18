/// @description Insert description here
// You can write your code in this editor


if (place_meeting(x + hspd, y + vspd, Ob_wall) or place_meeting(x + hspd, y + vspd, Ob_enemy) or collision_line(x, y, x + hspd, y + vspd, Ob_wall, true, true) or collision_line(x, y, x + hspd, y + vspd, Ob_enemy, true, true)) {
	m = max(abs(hspd), abs(vspd))
	while (!place_meeting(x + hspd / m, y + vspd / m, Ob_wall) and !place_meeting(x + hspd / m, y + vspd / m, Ob_enemy)) {
		x += hspd / m
		y += vspd / m
	}
	instance_create_depth(x, y, 1, Ob_explosion).damage = damage
	instance_destroy()
} else {
	x += hspd
	y += vspd
}



//if (collision_line(x, y, x + hspd,y + vspd, Ob_enemi, true, true) and f == false) {
	//X = x
	//Y = y
	//m = max(abs(hspd), abs(vspd))
	//while (!place_meeting(x + hspd / m, y + vspd / m, Ob_enemi)) {
		//x += hspd / m
		//y += vspd / m
		//Ob_player.en += 1
	//}
	//with instance_nearest(x, y, Ob_enemi) {
		//event_perform(ev_collision, Ob_bullet45)
	//}
	//x = X
	//y = Y
//}