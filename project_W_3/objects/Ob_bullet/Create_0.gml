/// @description Insert description here
// You can write your code in this editor
spd = 20

// move_towards_point(mouse_x, mouse_y, 10)

dir = point_direction(Object4.x, Object4.y, mouse_x, mouse_y)

x_add = lengthdir_x(spd, dir)
y_add = lengthdir_y(spd, dir)

image_angle=point_direction(Object4.x,Object4.y,mouse_x,mouse_y)

grav = false


jump = 0
grv = 0.4
vspd = 0