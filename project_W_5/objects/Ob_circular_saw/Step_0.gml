/// @description Insert description here
// You can write your code in this editor



switch (pol)
{
	case "down":
		if (place_meeting(x + hspd, y, Ob_wall)) {
			while (!place_meeting(x + sign(hspd), y, Ob_wall)) {
				x += sign(hspd)
			}
			if (sign(hspd) > 0) {
				pol = "right"
				vspd = -abs(hspd)
				hspd = 0
			} else {
				pol = "left"
				vspd = -abs(hspd)
				hspd = 0
			}
		} else if (!place_meeting(x + hspd, y + 1, Ob_wall)) {
			while (place_meeting(x, y + 1, Ob_wall)) {
				x += sign(hspd)
			}
			if (sign(hspd) > 0) {
				pol = "left"
				vspd = abs(hspd)
				hspd = 0
			} else {
				pol = "right"
				vspd = abs(hspd)
				hspd = 0
			}
		}
	break
	case "up":
		if (place_meeting(x + hspd, y, Ob_wall)) {
			while (!place_meeting(x + sign(hspd), y, Ob_wall)) {
				x += sign(hspd)
			}
			if (sign(hspd) > 0) {
				pol = "right"
				vspd = abs(hspd)
				hspd = 0
			} else {
				pol = "left"
				vspd = abs(hspd)
				hspd = 0
			}
		} else if (!place_meeting(x + hspd, y - 1, Ob_wall)) {
			while (place_meeting(x, y - 1, Ob_wall)) {
				x += sign(hspd)
			}
			if (sign(hspd) > 0) {
				pol = "left"
				vspd = -abs(hspd)
				hspd = 0
			} else {
				pol = "right"
				vspd = -abs(hspd)
				hspd = 0
			}
		}
	break
	case "right":
		if (place_meeting(x, y + vspd, Ob_wall)) {
			while (!place_meeting(x, y + sign(vspd), Ob_wall)) {
				y += sign(vspd)
			}
			if (sign(vspd) > 0) {
				pol = "down"
				hspd = -abs(vspd)
				vspd = 0
			} else {
				pol = "up"
				hspd = -abs(vspd)
				vspd = 0
			}
		} else if (!place_meeting(x + 1, y + vspd, Ob_wall)) {
			while (place_meeting(x + 1, y, Ob_wall)) {
				y += sign(vspd)
			}
			if (sign(vspd) > 0) {
				pol = "up"
				hspd = abs(vspd)
				vspd = 0
			} else {
				pol = "down"
				hspd = abs(vspd)
				vspd = 0
			}
		}
	break
	case "left":
		if (place_meeting(x, y + vspd, Ob_wall)) {
			while (!place_meeting(x, y + sign(vspd), Ob_wall)) {
				y += sign(vspd)
			}
			if (sign(vspd) > 0) {
				pol = "down"
				hspd = abs(vspd)
				vspd = 0
			} else {
				pol = "up"
				hspd = abs(vspd)
				vspd = 0
			}
		} else if (!place_meeting(x - 1, y + vspd, Ob_wall)) {
			while (place_meeting(x - 1, y, Ob_wall)) {
				y += sign(vspd)
			}
			if (sign(vspd) > 0) {
				pol = "up"
				hspd = -abs(vspd)
				vspd = 0
			} else {
				pol = "down"
				hspd = -abs(vspd)
				vspd = 0
			}
		}
	break
	default:
		if (place_meeting(x + hspd, y + vspd, Ob_wall) or collision_line(x, y, x + hspd, y + vspd, Ob_wall, true, true)) {
			m = max(abs(hspd), abs(vspd))
			while (!place_meeting(x + hspd / m, y + vspd / m, Ob_wall)) {
				x += hspd / m
				y += vspd / m
			}
			if (place_meeting(x + 1, y, Ob_wall)) {
				pol = "left"
				vspd = sign(vspd) * spd
				hspd = 0
			}
			if (place_meeting(x - 1, y, Ob_wall)) {
				pol = "right"
				vspd = sign(vspd) * spd
				hspd = 0
			}
			if (place_meeting(x, y + 1, Ob_wall)) {
				pol = "down"
				vspd = 0
				hspd = sign(hspd) * spd
			}
			if (place_meeting(x, y - 1, Ob_wall)) {
				pol = "up"
				vspd = 0
				hspd = sign(hspd) * spd
			}
			grv = 0
		}
}

vspd += grv

x += hspd
y += vspd










