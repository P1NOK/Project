/// @description Insert description here
// You can write your code in this editor

if f {
	//image_alpha -= 0.01
	image_angle -= sign(hspd) * 10
	if (place_meeting(x, y, Ob_wall)) {
		image_angle += sign(hspd) * 10
	}
}

vspd += grv

if (place_meeting(x + hspd, y + vspd, Ob_wall) or collision_line(x, y, x + hspd, y + vspd, Ob_wall, true, true)) {
	m = max(abs(hspd), abs(vspd))
	while (!place_meeting(x + hspd / m, y + vspd / m, Ob_wall)) {
		x += hspd / m
		y += vspd / m
	}
	if (place_meeting(x + sign(hspd), y, Ob_wall)) {
		col_ty = "v"
	}
	if (place_meeting(x, y + sign(vspd), Ob_wall)) {
		col_ty = "h"
	}
	if (Sc_wall_hit(wall_jumping, col_ty)) {
		if (col_ty == "v") {
			vspd *= random_range(0.2, 0.4)
			hspd *= -random_range(0.1, 0.3)
		} else {
			if jump > 0 {
				vspd *= -random_range(0.2, 0.4)
				hspd *= random_range(0.3, 0.5)
				jump -= 1
			} else {
				vspd = 0
				hspd = 0
			}
		}
		f = true
		grv = 0.6
	}
} else {
	x += hspd
	y += vspd
}


if image_alpha == 0 {
	instance_destroy()
}


if (collision_line(x, y, x + hspd,y + vspd, Ob_enemy, true, true) and f == false) {
	X = x
	Y = y
	m = max(abs(hspd), abs(vspd))
	while (!place_meeting(x + hspd / m, y + vspd / m, Ob_enemy)) {
		x += hspd / m
		y += vspd / m
		Ob_player.en += 1
	}
	with instance_nearest(x, y, Ob_enemy) {
		//F = f
		//damage_received = Ob_gun.parameters.damage
		//id_bullet = id
		event_perform(ev_collision, Ob_bullet45)
	}
	x = X
	y = Y
}