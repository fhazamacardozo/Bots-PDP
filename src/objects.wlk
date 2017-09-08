object benito{
	var listaNegra = []
	method agregarAlaLista(palabra){
		listaNegra.add(palabra)
	}
	method chequear(tweet){
		return listaNegra.map({palabra=>tweet.contains(palabra)})
	}
	
	method responder(tweet,usuario){
		if(self.chequear(tweet).contains(true)){
			//policia.avisar(tweet,usuario)
		}
	}
	
}

class BotPublicidad {
	var palabraPuntual
	var linkPublicitario
	
	constructor(unaPalabra, unLink){
		palabraPuntual= unaPalabra
		linkPublicitario= unLink
	}
	
	method modifPalabra(palabra){
		palabraPuntual= palabra
	}
	
	method modifLink(link){
		linkPublicitario= link
	}
	
	method responder(tweet, usuario){
		if(tweet.contains(palabraPuntual)){
			return linkPublicitario + "@" + usuario
		}
		else
			return 	""
	}
}	

class BotRecolector{
	var palabra
	var tweetsRecolectados = []
	
	constructor(unaPalabra){
		palabra= unaPalabra
		}
		
	method responder(tweet){
		if(tweet.contains(palabra))
			tweetsRecolectados.add(tweet)
	}
}

class Persona{
	
	method twitear(){
		
	}
}

