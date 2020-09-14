import personajes.*

object pelea{
	const equipo1 = [tulipan,pamela]
	const equipo2 = [toro,pocardo]

	method batalla(){
		equipo1.forEach({integrante => integrante.manoAMano(equipo2.first())})
		equipo1.forEach({integrante => integrante.manoAMano(equipo2.last())})
		equipo2.forEach({integrante => integrante.manoAMano(equipo1.first())})
		equipo2.forEach({integrante => integrante.manoAMano(equipo1.last())})
	}
	method ganaEquipo1(){
		return equipo1.sum({integrante => integrante.energia()})>equipo2.sum({integrante => integrante.energia()})
	}
	method equipoVictorioso(){
		self.batalla()
		if(self.ganaEquipo1()){
			return equipo1.map({jugador => jugador.victoria()})
		}
		return equipo2.map({jugador => jugador.victoria()})
		
	}
}
