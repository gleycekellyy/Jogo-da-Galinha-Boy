// Controles
var _left, _right, _jump, _chao;
_left = keyboard_check(vk_left);
_right = keyboard_check(vk_right);
_jump = keyboard_check_pressed(vk_space);
_chao = place_meeting(x, y + 1, oSolo);

// Aplicação movimentação horizontal
velocidadeHorizontal = (_right - _left) * velocidade;

// Aplicação da gravidade
velocidadeVertical += gravidade;

// Pulando
if (_chao)
{
	if (_jump)
	{
		velocidadeVertical = -velocidadePulo;	
	}
	
	if(velocidadeHorizontal != 0)
	{
		sprite_index = sPlayerCorrendo;
		image_xscale = sign(velocidadeHorizontal);
	}
	else
	{
		sprite_index = sPlayerParado;
	}
}
else {
	velocidadeVertical += gravidade;
	if (velocidadeHorizontal != 0)
	{
		image_xscale = sign(velocidadeHorizontal);
	}
}

if key = 5{
	room_goto_next()	
}

if global.life <1 {
	game_restart();
}