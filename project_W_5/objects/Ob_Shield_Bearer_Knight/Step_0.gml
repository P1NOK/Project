/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе




if (x < Ob_player.x) {
	hspd = 2
	image_xscale = 1
	shield_id.image_xscale = 1
} else {
	hspd = -2
	image_xscale = -1
	shield_id.image_xscale = -1
}


vspd += grv


if (place_meeting(x, y+vspd, Ob_wall)) {
	while (!place_meeting(x, y+sign(vspd), Ob_wall)) {
		y += sign(vspd)
	}
	vspd = 0
} else {
	y += vspd
}

if (place_meeting(x+hspd, y, Ob_wall)) {
	while (!place_meeting(x+sign(hspd), y, Ob_wall)) {
		x += sign(hspd)
	}
	hspd = 0
} else {
	x += hspd
}

shield_id.x = x + (29 * image_xscale)
shield_id.y = y - 6