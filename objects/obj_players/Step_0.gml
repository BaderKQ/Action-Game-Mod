/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(ord("A"))){
	x-=2
}

if(keyboard_check(ord("D"))){
	x+=2
}

y_vel+=grav //gravity pulling down 

//check collision 
if(place_meeting(x, y+y_vel, obj_platform)){
	while !place_meeting(x, y + sign(y_vel), obj_platform){
		y +=sign(y_vel);
	}
y_vel *=-1
}

y+= y_vel //Moves

if(global.hit==true){
	instance_destroy(obj_platform) 
}


if(y>=735){
	hasdied=true 
}

if(hasdied==true){
	timer-=1
	instance_create_depth(x, y, 1, obj_particle)
}

if(timer<=0){
	emit=true
	timer= room_speed*1
}

if(y<=50){
	y_vel *=-.5
}