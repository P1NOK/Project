/// @description Insert description here
// You can write your code in this editor
if bom {
	
	vspd += grv
	
	if (place_meeting(x, y+vspd, Ob_wall)) {
		while (!place_meeting(x, y+sign(vspd), Ob_wall)) {
			y += sign(vspd)
		}
		if jump > 0 {
			vspd *= -1 * 0.6
			jump -= 1
		} else {
			vspd = 0
		}
	} else {
		y += vspd
	}
	hspd *= 0.98
}





if (place_meeting(x+hspd, y, Ob_wall)) {
	while (!place_meeting(x+sign(hspd), y, Ob_wall)) {
		x += sign(hspd)
	}
	vspd *= 0.3
	hspd *= -0.2
	grv = 0.6
} else {
	x += hspd
}


vspd += grv

if (place_meeting(x, y+vspd, Ob_wall)) {
	while (!place_meeting(x, y+sign(vspd), Ob_wall)) {
		y += sign(vspd)
	}
	if jump > 0 {
		vspd *= -0.3
		hspd *= 0.4
		jump -= 1
	} else {
		vspd = 0
		hspd = 0
	}
	grv = 0.6
} else {
	y += vspd
}