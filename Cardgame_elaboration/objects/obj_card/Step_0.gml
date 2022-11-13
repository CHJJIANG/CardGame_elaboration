/// @description Insert description here
// You can write your code in this editor

x = lerp(x, goal_x, 0.6 * move_speed);
y = lerp(y, goal_y, 0.6 * move_speed);
image_xscale = lerp(image_xscale, goal_width, 0.6 * move_speed);
image_yscale = lerp(image_yscale, goal_height, 0.6 * move_speed);

if(shown){
if(card_type == 1 ){
	sprite_index = spr_a;
}else if(card_type == 2){
	sprite_index = spr_b;
}else if(card_type == 3){
	sprite_index = spr_c;
}else if(card_type == 4){
	sprite_index = spr_d;
}
}

if(!shown){
	sprite_index = spr_cardback;
}

if (instance_position(mouse_x,mouse_y,self)) {
if (dealing) {
	if (!mouse_colli) {
		//old_goal_y = goal_y;
		mouse_colli = true;
		goal_height += 0.3;
		goal_width += 0.3;
	}
}
} else {
if (dealing) {
	if (mouse_colli) {
		//old_goal_y = goal_y;
	
		mouse_colli = false;
		goal_height -= 0.3;
		goal_width -= 0.3;
	}
}


}
if (!dealing) {
	goal_height = initial_height;
	goal_width = initial_width;
	
}
