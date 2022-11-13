/// @description Insert description here
// You can write your code in this editor

randomize();

if(start_timer){
	timer++;
}			

if(prepare){
	
	for(i=0;i<4;i++){
		ds_list_add(card_deck,1);
	}
	for(i=0;i<4;i++){
		ds_list_add(card_deck,2);
	}
	for(i=0;i<4;i++){
		ds_list_add(card_deck,3);
	}
	for(i=0;i<4;i++){
		ds_list_add(card_deck,4);
	}
	ds_list_shuffle(card_deck)
	
	for(i=0;i<card_amount;i++){
		var card = instance_create_layer(initial_x, initial_y,"cards", obj_card );
		card.depth = -i;
		card.card_type = card_deck[|i];
		ds_list_add(card_pile,card);
	}
	prepare = false;
	start_timer = true;
}


if(timer == 1 * room_speed){
	card_pile[|card_amount - 1].goal_x = card_1_x;
	card_pile[|card_amount - 1].goal_y = card_1_y;
	audio_play_sound(flipcard, 0, 0);
}

if(timer == 1.2 * room_speed){
	card_pile[|card_amount - 2].goal_x = card_2_x;
	card_pile[|card_amount - 2].goal_y = card_1_y;
	audio_play_sound(flipcard, 0, 0);
}

if(timer == 1.4 * room_speed){
	card_pile[|card_amount - 3].goal_x = card_3_x;
	card_pile[|card_amount - 3].goal_y = card_1_y;
	audio_play_sound(flipcard, 0, 0);
}

if(timer == 1.6 * room_speed){
	card_pile[|card_amount - 4].goal_x = card_4_x;
	card_pile[|card_amount - 4].goal_y = card_1_y;
	audio_play_sound(flipcard, 0, 0);
}

if(timer == 1.8 * room_speed){
	card_pile[|card_amount - 5].goal_x = card_1_x;
	card_pile[|card_amount - 5].goal_y = card_2_y;
	audio_play_sound(flipcard, 0, 0);
}

if(timer == 2 * room_speed){
	card_pile[|card_amount - 6].goal_x = card_2_x;
	card_pile[|card_amount - 6].goal_y = card_2_y;
	audio_play_sound(flipcard, 0, 0);
}

if(timer == 2.2 * room_speed){
	card_pile[|card_amount - 7].goal_x = card_3_x;
	card_pile[|card_amount - 7].goal_y = card_2_y;
	audio_play_sound(flipcard, 0, 0);
}

if(timer == 2.4 * room_speed){
	card_pile[|card_amount - 8].goal_x = card_4_x;
	card_pile[|card_amount - 8].goal_y = card_2_y;
	audio_play_sound(flipcard, 0, 0);
}

if(timer == 2.6 * room_speed){
	card_pile[|card_amount - 9].goal_x = card_1_x;
	card_pile[|card_amount - 9].goal_y = card_3_y;
	audio_play_sound(flipcard, 0, 0);
}

if(timer == 2.8 * room_speed){
	card_pile[|card_amount - 10].goal_x = card_2_x;
	card_pile[|card_amount - 10].goal_y = card_3_y;
	audio_play_sound(flipcard, 0, 0);
}

if(timer == 3 * room_speed){
	card_pile[|card_amount - 11].goal_x = card_3_x;
	card_pile[|card_amount - 11].goal_y = card_3_y;
	audio_play_sound(flipcard, 0, 0);
}

if(timer == 3.2 * room_speed){
	card_pile[|card_amount - 12].goal_x = card_4_x;
	card_pile[|card_amount - 12].goal_y = card_3_y;
	audio_play_sound(flipcard, 0, 0);
}

if(timer == 3.4 * room_speed){
	card_pile[|card_amount - 13].goal_x = card_1_x;
	card_pile[|card_amount - 13].goal_y = card_4_y;
	audio_play_sound(flipcard, 0, 0);
}


if(timer == 3.6 * room_speed){
	card_pile[|card_amount - 14].goal_x = card_2_x;
	card_pile[|card_amount - 14].goal_y = card_4_y;
	audio_play_sound(flipcard, 0, 0);
}

if(timer == 3.8 * room_speed){
	card_pile[|card_amount - 15].goal_x = card_3_x;
	card_pile[|card_amount - 15].goal_y = card_4_y;
	audio_play_sound(flipcard, 0, 0);
}

if(timer == 4 * room_speed){
	card_pile[|card_amount - 16].goal_x = card_4_x;
	card_pile[|card_amount - 16].goal_y = card_4_y;
	audio_play_sound(flipcard, 0, 0);
}

if(timer > 4 * room_speed && start_dealing){
	for(i=0;i<card_amount;i++){
		card_pile[|i].dealing = true;
	}
	start_dealing = false;
}



if(timer > 4.1 * room_speed){
	if (mouse_check_button_pressed(mb_left)) {
	
			card_click = instance_position(mouse_x,mouse_y,obj_card);
			
			if(!click_again && card_click != noone && card_click.dealing && !card_click.shown){
				
				audio_play_sound(click, 0, 0);
				part_particles_create(particle_system,card_click.x,card_click.y,explosion_part_type,100);
				
				if(flip_count == 0){
					flip_card1 = card_click;
					flip_card1.shown = true;
					flip_count ++;
					
				} else if(flip_count ==	1){
					flip_card2 = card_click;
					flip_card2.shown = true;
					flip_count++;
					click_again = true;
					
				}
				
if(flip_count == 2){
	if(flip_card1.card_type == flip_card2.card_type){
		audio_play_sound(success, 0, 0);
		alarm[2] = 1 * room_speed;
	}
	else{
		audio_play_sound(lose, 0, 0);
		alarm[1] = 1 * room_speed;
		flip_card1.dealing = true;
		flip_card2.dealing = true;
		flip_count = 0;
				}
	
	
			}
					
		}
	}		
	
	
	
}


if(card_left == 0){
	room_goto(Room1);
}



