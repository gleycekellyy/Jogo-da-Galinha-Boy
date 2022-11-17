// Colisão
var _colisao = instance_place(x + velocidadeHorizontal, y,+ oSolo);
if (_colisao)
{
	if(velocidadeHorizontal > 0){
		x = _colisao.bbox_left + (x - bbox_right);
	}
	
	if(velocidadeHorizontal < 0){
		x = _colisao.bbox_right + (x - bbox_left);
	}
	
	velocidadeHorizontal = 0;
}

var _colisao = instance_place(x, y + velocidadeVertical ,oSolo);
if (_colisao)
{
	if(velocidadeVertical > 0){
		y = _colisao.bbox_top + (y - bbox_bottom);
	}
	
	if(velocidadeVertical < 0){
		y = _colisao.bbox_bottom + (y - bbox_top);
	}
	
	velocidadeVertical = 0;
}

// Movimento esquerda e direita
x += velocidadeHorizontal;
y += velocidadeVertical;

