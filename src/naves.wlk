class NaveEspacial {
	var velocidad = 0
	var direccion = 0	
	var litrosDeCombustible = 0
	method velocidad(cuanto) { velocidad = cuanto }
	method acelerar(cuanto) { velocidad = (velocidad + cuanto).min(100000) }
	method desacelerar(cuanto) { velocidad -= cuanto }
	
	method irHaciaElSol() { direccion = 10 }
	method escaparDelSol() { direccion = -10 }
	method ponerseParaleloAlSol() { direccion = 0 }
	
	method acercarseUnPocoAlSol() { direccion += 1 }
	method alejarseUnPocoDelSol() { direccion -= 1 }
	method prepararViaje() {
		self.cargarCombustible(30000)
		self.acelerar(5000)
	}
	method cargarCombustible(cuanto){litrosDeCombustible += cuanto}
	method descargarCombustible(cuanto){litrosDeCombustible -= cuanto}
	method recibirAmenaza(){
		self.escaparDelSol()
		/*no entiendo lo de "avisar*/
	}
}
class NavesBaliza inherits NaveEspacial{
	var color = ""

	method baliza(){return color}
	method cambiarColorDeBaliza(colorNuevo){color=colorNuevo}
	override method prepararViaje() {
		super()
		self.cambiarColorDeBaliza("verde")
	}
	
}
class NavesDePasajeros inherits NaveEspacial{
	var property capacidadPasajeros = 0
	var racionesDeComida = 0
	var racionesDeBebida = 0
	method descargarComida(cuanto){racionesDeComida-=cuanto}
	method cargarComida(cuanto){racionesDeComida+=cuanto}
	method racionesDeComida(){return racionesDeComida}
	method descargarBebida(cuanto){racionesDeBebida-=cuanto}
	method cargarBebida(cuanto){racionesDeBebida+=cuanto}
	method recionesDeBebida(){return racionesDeBebida}
	override method prepararViaje() {
		super()
		self.cargarComida(capacidadPasajeros*4)
		self.cargarBebida(capacidadPasajeros*6)
		self.acercarseUnPocoAlSol()
	}
}
class NavesDeCombate inherits NaveEspacial{
	var visible = false
	var misilesDesplegados = false
	var mensajes = []
	method ponerseVisible(){visible = true} 
	method ponerseInvisible(){visible = false}
	method estaInvisible(){return visible}
	method desplegarMisiles(){misilesDesplegados= true}
	method replegarMisiles(){misilesDesplegados=false}
	method misilesDesplegados(){return misilesDesplegados}
	method emitirMensaje(mensaje){mensajes.add(mensaje)}
	method mensajesEmitidos(){return mensajes.size()}
	method primerMensajeEmitido(){return mensajes.first()}
	method ultimoMensajeEmitido(){return mensajes.last()}
	method esEscueta(){return mensajes.all({p=>p.size()<=30})}
	method emitioMensaje(mensaje){mensajes.find(mensaje)}
	override method prepararViaje() {
		super()
		self.ponerseVisible()
		self.replegarMisiles()
		self.acelerar(15000)
		self.emitirMensaje("Saliendo en misión")
	}
	
}