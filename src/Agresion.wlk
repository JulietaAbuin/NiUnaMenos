
class Agresion{
	var lugar
	var persona
	var palabrasUtilizadas
	
	constructor(unLugar,unaPersona,unaPalabra){
		lugar = unLugar
		persona = unaPersona
		palabrasUtilizadas = unaPalabra
	}
	
	method esGrave() {return palabrasUtilizadas.any({palabra => registroPalabras.palabrasInaceptables(palabra)})}
	method esIgnea() {return palabrasUtilizadas.contains("fuego")}

}

class AgresionFisica inherits Agresion{
	var elemento
	constructor(unElemento){
		elemento = unElemento
	}
	override method esGrave() {return true}
	override method esIgnea() {
		return  (elemento == "combustible") or (palabrasUtilizadas.contains("fuego"))
	}
}

object registroPalabras{
	var palabrasInaceptables = ["matar","pegar","dakljl"]
	method palabrasInaceptables(unaPalabra) {return palabrasInaceptables.contains(unaPalabra)}
}

object combustible{
	
}

class Mujer{
	var familiares = []
	var agresiones = []
	var actitud
	constructor (unaActitud) {
		actitud = unaActitud
	}
	method agregarFamiliar(unaPersona) {familiares.add(unaPersona)}
	method recibirAgresion(unaAgresion){}
}
object actitudMiedo{
	method permiteDenuncia(unaPersona,unaAgresion){return false}
	method actitudFrenteALaAmenaza(){return self}
}
object actitudPaciente{
	
}