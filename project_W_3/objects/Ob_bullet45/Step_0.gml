/// @description Insert description here
// You can write your code in this editor

if f {
	image_alpha -= 0.01
	image_angle -= sign(hspd) * 10
	if (place_meeting(x, y, Ob_wall)) {
		image_angle += sign(hspd) * 10
	}
}


if (place_meeting(x + hspd, y, Ob_wall)) {
	while (!place_meeting(x+sign(hspd), y, Ob_wall)) {
		x += sign(hspd)
	}
	if (Sc_wall_hit(wall_jumping, "v")) {
		vspd *= random_range(0.2, 0.4)
		hspd *= -random_range(0.1, 0.3)
		f = true
		grv = 0.6
	}
} else {
	x += hspd
}


vspd += grv

if (place_meeting(x, y+vspd, Ob_wall)) {
	while (!place_meeting(x, y+sign(vspd), Ob_wall)) {
		y += sign(vspd)
	}
	if (Sc_wall_hit(wall_jumping, "h")) {
		if jump > 0 {
			vspd *= -random_range(0.2, 0.4)
			hspd *= random_range(0.3, 0.5)
			jump -= 1
		} else {
			vspd = 0
			hspd = 0
		}
		f = true
		grv = 0.6
	}
} else {
	y += vspd
}

if image_alpha == 0 {
	instance_destroy()
}


if (collision_line(xprevious, yprevious, x, y, Ob_enemi, false, true)) {
	with instance_nearest(xprevious, yprevious, Ob_enemi) {
		//F = f
		//damage_received = Ob_gun.parameters.damage
		//id_bullet = id
		event_perform(ev_collision, Ob_bullet45)
	}
}