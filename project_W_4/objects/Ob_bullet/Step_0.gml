/// @description Insert description here
// You can write your code in this editor
x += x_add
y += y_add



if grav {
	if (jump < 4) {
		if (place_meeting(x, y+y_add, Ob_wall)) {
			y_add += grv
			y_add = -y_add * 0.5
			jump += 1
		} else {
			y_add += grv
		}
	} else {
		y_add = 0
	}
} else {
	if (place_meeting(x+x_add, y, Ob_wall)) {
		while (!place_meeting(x+sign(x_add), y, Ob_wall)) {
			x += sign(x_add)
		}
		x_add = 0
		y_add = 0
		grav = true
	}
	if (place_meeting(x, y+y_add, Ob_wall)) {
		while (!place_meeting(x, y+y_add, Ob_wall)) {
			y += sign(y_add)
		}
		x_add = 0
		y_add = 0
		grav = true
	}
}