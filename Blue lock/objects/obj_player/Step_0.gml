/// @description Insert description here
// You can write your code in this editor

//this will set the game controls
var _press_right = keyboard_check(ord("D")) ||  keyboard_check(vk_right);
var _press_left = keyboard_check(ord("A")) ||  keyboard_check(vk_left);
var _press_down = keyboard_check(ord("S")) ||  keyboard_check(vk_down);
var _press_up = keyboard_check(ord("W")) ||  keyboard_check(vk_up);
var _press_pass = keyboard_check_pressed(ord("E"));

//the 2nd line will change the sprite index
if _press_right {
	x +=_player_speed
	image_xscale = 1;};

if _press_left {
	x -=_player_speed
	image_xscale = -1};
	
if _press_up {
	y -=_player_speed};

if _press_down {
	y +=_player_speed};
	

//im gonna try something
if _press_pass && global.has_the_ball == true {
	
var _where_player_is_going_x = global.nearest_friend.x;
var _where_player_is_going_y = global.nearest_friend.y;

global.nearest_friend.x = x;
global.nearest_friend.y = y;

x = _where_player_is_going_x;
y = _where_player_is_going_y;

global._ball_is_moving = true;
};

 global.nearest_friend = instance_nearest(mouse_x, mouse_y, obj_friend);