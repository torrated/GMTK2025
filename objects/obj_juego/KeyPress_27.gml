/// @description

switch(estado)
{
	case ESTADOS_JUEGO.normal: 
		Pausar();
		break;

	case ESTADOS_JUEGO.pausado:
		Reanudar();
		break;
	
	case ESTADOS_JUEGO.gameover:
		room_restart()
		break;
}