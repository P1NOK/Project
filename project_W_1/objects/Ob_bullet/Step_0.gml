/// @description Insert description here
// You can write your code in this editor
if false {
	
	vspd += grv
	if (place_meeting(x, y+vspd, Ob_wall)) {
		while (!place_meeting(x, y+sign(vspd), Ob_wall)) {
			y += sign(vspd)
		}
		vspd = 0
	} else {
		y += vspd
	}
	
}