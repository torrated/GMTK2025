/// @description 

escala += incremento_escala;
image_xscale = escala;
image_yscale = escala;
image_alpha -= decremento_alpha;

if (image_alpha <= 0)
	instance_destroy(self,false);