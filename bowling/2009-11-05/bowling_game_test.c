// bowling_game_test.c

#include "bowling_game.h"

#include <assert.h>
#include <stdbool.h>
#include <stdio.h>

static void roll_many(struct bowling_game *game, int n, int pins)
{
	for(int i=0;i<n;i++)
		bowling_game_roll(pins);
}

static void test_gutter_game()
{
	struct bowling_game *game  = bowing_game_create();
	roll_many(game, 20, 0);
	
	assert( bowling_game_score(game) == 0);
	bowlng_game_destroy(game);
	
}

static void test_all_ones()
{
	bowling_game_init();
	roll_many(20,1);
	
	assert(bowling_game_score() == 20);
}

static void test_one_spare()
{
	bowling_game_init();
	
	bowling_game_roll(5);
	bowling_game_roll(5); // spare
	bowling_game_roll(3);
	roll_many(17, 0);
	assert(bowling_game_score() == 16);
}

static void test_one_strike()
{
	bowling_game_init();
	bowling_game_roll(10);
	bowling_game_roll(3);
	bowling_game_roll(4);
	roll_many(16,0);
	assert(bowling_game_score() == 24);
}

static void test_perfect_game()
{
	bowling_game_init();
	roll_many(12, 10);
	assert( bowling_game_score() == 300);
	
}

int main()
{
	test_gutter_game();
	test_all_ones();
	test_one_spare();
	test_one_strike();
	test_perfect_game();
	
}
