/// @description Insert description here
// You can write your code in this editor

//move_towards_point(mouse_x, mouse_y, 1)

dir = point_direction(x,y,mouse_x,mouse_y) + random_range(-8, 8)
image_angle=dir

vspd = lengthdir_y(40, dir)
hspd = lengthdir_x(40, dir)


bom = false
grv = 0



jump = 3