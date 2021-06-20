/// @description Movement

k_left  = keyboard_check(ord("A"));
k_right = keyboard_check(ord("D"));
k_up    = keyboard_check(ord("W"));
k_down  = keyboard_check(ord("S"));
k_go    = keyboard_check(vk_space);



var x_mov = k_right-k_left;
var y_mov = k_down-k_up;

var dir = point_direction(0,0,x_mov,y_mov);

if(!k_go and x_mov == 0 and y_mov == 0){
	global.freeze = true;
	freeze_check(id);
	exit;
}else{
	global.freeze = false;
}

if(x_mov != 0 or y_mov != 0){
	vx += lengthdir_x(ACCEL, dir);
	vy += lengthdir_y(ACCEL, dir);
}

var dir = point_direction(0,0,vx,vy);
var dis = point_distance (0,0,vx,vy);
if(vx!=0 or vy!=0){
	vx += lengthdir_x(-min(FRICTION,dis), dir);
	vy += lengthdir_y(-min(FRICTION,dis), dir);
}

var sx = sign(vx), sy = sign(vy);
//h_mov
if(!place_meeting(x + vx,y,parSolid) ){
	x += vx;
}
else{//move to contact
	while(!place_meeting(x + sx,y,parSolid)){
		x += sx;
	}
}

if( !place_meeting(x,y + vy,parSolid) ){
	y += vy;
}
else{//move to contact
	while(!place_meeting(x,y + sy,parSolid)){
		y += sy;
	}
}