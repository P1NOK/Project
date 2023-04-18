// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Sc_wall_hit(a, collision_type) {
	if a > 0 {
		var nearest_id = noone
		if instance_number(Ob_enemi) > 0 {
			var nearest_id = noone
			var m = 10000
			with (Ob_enemi) {
				if (!collision_line(other.x, other.y, x, y, Ob_wall, true, true)) {
					if m > min(point_distance(other.x, other.y, x, y), m) {
						m = min(point_distance(other.x, other.y, x, y), m)
						nearest_id = id
					}
				}
			}
			if (nearest_id != noone) {				
				var dir = point_direction(other.x, other.y, nearest_id.x, nearest_id.y)
				other.hspd = lengthdir_x(other.spd, dir)
				other.vspd = lengthdir_y(other.spd, dir)
				other.image_angle = dir
			}
		}
		if (nearest_id == noone) {
			if (collision_type == "v") {
				other.hspd *= -1
			} else {
				other.vspd *= -1
			}
		}
		other.wall_jumping -= 1
		return false
	} else {
		return true
	}
}