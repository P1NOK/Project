/// @description Insert description here
// You can write your code in this editor

A = keyboard_check(ord("A"))
D = keyboard_check(ord("D"))
W = keyboard_check(ord("W"))
S = keyboard_check(ord("S"))
SPACE = keyboard_check_pressed(vk_space)

if (D - A != 0) {
	move = D - A
	hspd = (D - A) * spd
	
	
	if (place_meeting(x+hspd, y, Ob_wall)) {
		while (!place_meeting(x+sign(hspd), y, Ob_wall)) {
			x += sign(hspd)
		}
	} else {
		x += hspd
	}
	
	
	if (!place_meeting(x+hspd, y, Ob_wall)) {
		// плавно тормозим
		hspd *= 0.75
	} else {
		// тормозим моментально
		hspd = 0
	}
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


