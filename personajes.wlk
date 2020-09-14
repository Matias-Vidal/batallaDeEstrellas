object pamela {
	var botin = ["algodon","aguaOxigenada","cintaDePapel","cintaDePapel"]
	const gritoDeVictoria = "Aca Paso La Pamela"
	var energia = 6000
	method manoAMano(rival){
		energia += 400
	}
	method perderEnergia(perdida){
		energia -= perdida
	}
	method energia(){
		return energia
	}
	method botinActual(){
		return botin
	}
	method cantidadDeBotin(){
		return botin.count({objeto => objeto.length() > 0})
	}
	method perderBotin(){
		return botin.remove(botin.last())
	}
	method victoria() {
		return gritoDeVictoria
	}
}

object pocardo{
	var botin = ["guitarra","curitas","cotonetes"]
	const gritoDeVictoria = "¡Siente el poder de la música!"
	var energia = 5600
	method manoAMano(rival){
		energia += 500
	}
	method perderEnergia(perdida){
		energia -= perdida
	}
	method energia(){
		return energia
	}
	method botinActual(){
		return botin
	}
	method cantidadDeBotin(){
		return botin.count({objeto => objeto.length() > 0})
	}
	method perderBotin(){
		return botin.remove(botin.last())
	}
	method victoria() {
		return gritoDeVictoria
	}
}

object tulipan{
	var botin = ["Rastrillo","Maceta","Maceta","Manguera"]
	const gritoDeVictoria = "Hora de cuidar a las plantas"
	var energia = 8400
	method manoAMano(rival){
		rival.perderEnergia(rival.energia()/2)
	}
	method perderEnergia(perdida){
		energia -= perdida
	}
	method energia(){
		return energia
	}
	method botinActual(){
		return botin
	}
	method cantidadDeBotin(){
		return botin.count({objeto => objeto.length() > 0})
	}
	method perderBotin(){
		return botin.remove(botin.last())
	}
	method victoria() {
		return gritoDeVictoria
	}
}
object toro{
	var botin = []
	const gritoDeVictoria = "No se metan con el toro"
	var energia = 7800
	method manoAMano(rival){
		rival.perderEnergia((rival.cantidadDeBotin())*200)
		if(!botin.contains(rival.botinActual().last()))
		botin.add(rival.botinActual().last())
		rival.perderBotin()
	}
	method perderEnergia(perdida){
		energia -= perdida
	}
	method energia(){
		return energia
	}
	method botinActual(){
		return botin
	}
	method cantidadDeBotin(){
		return botin.count({objeto => objeto.length() > 0})
	}
	method perderBotin(){
		return botin.remove(botin.last())
	}
	method victoria() {
		return gritoDeVictoria
	}
}
