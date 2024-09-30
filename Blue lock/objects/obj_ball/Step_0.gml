/// @description Insert description here
// You can write your code in this editor

if (distance_to_object(obj_player) <= 10) {
	x = obj_player.x;
	y = obj_player.y;
	global.has_the_ball = true};
	
	
if global._ball_is_moving == true {
	move_towards_point(obj_player.x,obj_player.y,_ball_speed);}

if global.has_the_ball == true {
	global._ball_is_moving = false;}