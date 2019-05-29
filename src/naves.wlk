class NaveEspacial {
	var velocidad = 0
	var direccion = 0	
	
	method velocidad(cuanto) { velocidad = cuanto }
	method acelerar(cuanto) { velocidad = (velocidad + cuanto).min(100000) }
	method desacelerar(cuanto) { velocidad -= cuanto }
	
	method irHaciaElSol() { direccion = 10 }
	method escaparDelSol() { direccion = -10 }
	method ponerseParaleloAlSol() { direccion = 0 }
	
	method acercarseUnPocoAlSol() { direccion += 1 }
	method alejarseUnPocoDelSol() { direccion -= 1 }
	
}
class NavesBaliza inherits NaveEspacial{
	var color = "verde"

	method baliza(){return color}
	method cambiarColorDeBaliza(colorNuevo){color=colorNuevo}
	
}
class NavesDePasajeros{
	var property capacidadPasajeros = 0
	var racionesDeComida = 0
	var racionesBebida = 0
	method descargarComida(cuanto){racionesDeComida-=cuanto}
	method cargarComida(cuanto){racionesDeComida+=cuanto}
	method racionesDeComida(){return racionesDeComida}
	method descargarBebida(cuanto){racionesBebida-=cuanto}
	method cargarBebida(cuanto){racionesBebida+=cuanto}
	method recionesDeBebida(){return racionesBebida}
}
class NavesDeCombate{
	var vsible = false
	method ponerseVisible(){} 
}