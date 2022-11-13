/// @description Insert description here
// You can write your code in this editor

card_deck = ds_list_create();
card_pile = ds_list_create();
/// stage1
prepare = true;
start_dealing = true;
/// others
start_timer = false;
card_click = false;
click_again = false;

card_amount = 16;
initial_x = 298;
initial_y = 65;
card_left = 16;
timer = 0;
flip_count = 0;

card_1_x = 111;
card_2_x = 239;
card_3_x = 367;
card_4_x = 495;

card_1_y = 224;
card_2_y = 352;
card_3_y = 480;
card_4_y = 608;

particle_system = part_system_create();
explosion_part_type = part_type_create();
part_type_shape(explosion_part_type,pt_shape_spark);
part_type_size(explosion_part_type,1,2,-0.1,0);
part_type_speed(explosion_part_type,1,6,0.5,0);
part_type_direction(explosion_part_type,0,359,0,20);
part_type_life(explosion_part_type,60,60);
