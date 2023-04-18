/// @description Insert description here
// You can write your code in this editor

A = keyboard_check(ord("A"))
D = keyboard_check(ord("D"))
W = keyboard_check(ord("W"))
S = keyboard_check(ord("S"))
SPACE = keyboard_check_pressed(vk_space)

if (D - A != 0) {
	move = D - A
	
	
	if ((D - A) == 1) {
		if (hspd < spd) {
			if hspd < 0 {
				if (place_meeting(x, y+1, Ob_wall)) {
					// плавно тормозим на земле
					hspd *= 0.75
				} else {
					hspd *= 0.95
				}
			}
			hspd += (spd / 5)
			if hspd < spd + (spd / 5) and hspd > spd {
				hspd = spd
			}
		} else if hspd != spd {
			if (place_meeting(x, y+1, Ob_wall)) {
				// плавно тормозим на земле
				hspd *= 0.75
			} else {
				hspd *= 0.95
			}
		}
	} else {
		if (hspd > -spd) {
			if hspd > 0 {
				if (place_meeting(x, y+1, Ob_wall)) {
					// плавно тормозим на земле
					hspd *= 0.75
				} else {
					hspd *= 0.95
				}
			}
			hspd -= (spd / 5)
			if hspd > -spd - (spd / 5) and hspd < -spd{
				hspd = -spd
			}
		} else if hspd != -spd {
			if (place_meeting(x, y+1, Ob_wall)) {
				// плавно тормозим на земле
				hspd *= 0.75
			} else {
				hspd *= 0.95
			}
		}
	}
	
} else {
	
	if (!place_meeting(x+hspd, y, Ob_wall)) {
		if (place_meeting(x, y+1, Ob_wall) and (D - A) == 0) {
			// плавно тормозим на земле
			hspd *= 0.75
		} else {
			hspd *= 0.95
		}
	} else {
		// тормозим моментально
		while (!place_meeting(x+sign(hspd), y, Ob_wall)) {
			x += sign(hspd)
		}
		hspd = 0
	}
	
}

if (place_meeting(x+hspd, y, Ob_wall)) {
	while (!place_meeting(x+sign(hspd), y, Ob_wall)) {
		x += sign(hspd)
	}
	hspd = 0
} else {
	x += hspd
}


vspd += grv


if (SPACE == 1) {
	jump_frame = 4
}


if (place_meeting(x, y+vspd, Ob_wall)) {
	while (!place_meeting(x, y+sign(vspd), Ob_wall)) {
		y += sign(vspd)
	}
	vspd = 0
	if (jump_frame > 0) {
		jump_time = fps / 10
		// vspd = -20
		jump_frame = 0
	}
} else {
	y += vspd
}


if (jump_time > 0 and keyboard_check_direct(vk_space)) {
	vspd -= 3.5
	jump_time -= 1
} else {
	jump_time = 0
}



if (jump_frame > 0) {
	jump_frame--
}




if (x >= mouse_x) {
	image_xscale = -1
	Ob_gun.image_yscale = -1
	Ob_gun.x = x + 6
	Ob_gun.y = y - 2
} else {
	image_xscale = 1
	Ob_gun.image_yscale = 1
	Ob_gun.x = x - 6
	Ob_gun.y = y - 2
}