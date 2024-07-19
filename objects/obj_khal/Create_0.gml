spd = 3;
xspd = 0;
yspd = 0;
timer = 0
_sprite = sprite_index
can_move = true;
moving = false;
scr_initsprites()
randomise()
direction_hor = 1
shake = random_range(1, 4)
shakeamt = 0
shockedspeed = 0
enum states
{
	normal,
	shocked,

}
state = states.normal