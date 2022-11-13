/// @description Insert description here
// You can write your code in this editor

		flip_card1.goal_x = initial_x;
		flip_card1.goal_y = initial_y;
		audio_play_sound(flipcard, 0, 0);
		flip_card2.goal_x = initial_x;
		flip_card2.goal_y = initial_y;
		audio_play_sound(flipcard, 0, 0);
		flip_card1.dealing = false;
		flip_card2.dealing = false;
		flip_count = 0;
		click_again = false;
		card_left -= 2;

