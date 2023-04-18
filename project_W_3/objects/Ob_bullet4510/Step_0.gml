/// @description Insert description here
// You can write your code in this editor

if f {
	image_alpha -= 0.01
	image_angle -= sign(hspd) * 10
	if (place_meeting(x, y, Ob_wall)) {
		image_angle += sign(hspd) * 10
	}
}


vspd += grv

if (collision_line(x, y, x + hspd, y + vspd, Ob_wall, true, false)) {
	while (!place_meeting(x + hspd / max(abs(hspd), abs(vspd)), y + vspd / max(abs(hspd), abs(vspd)), Ob_wall)) {
		x += hspd / max(abs(hspd), abs(vspd))
		y += vspd / max(abs(hspd), abs(vspd))
	}
	if (place_meeting(x + sign(hspd), y, Ob_wall)) {
		vspd *= random_range(0.2, 0.4)
		hspd *= -random_range(0.1, 0.3)
		f = true
		grv = 0.6
	} else if (place_meeting(x, y + sign(vspd), Ob_wall)) {
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
	x += hspd
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