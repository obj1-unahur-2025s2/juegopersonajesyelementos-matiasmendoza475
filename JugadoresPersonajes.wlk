import elementos.*
import armas.*
object luisa {
  var personajeActivo = null

  method asignarPersonaje(unPersonaje) {
    personajeActivo = unPersonaje
  }

  method aparece(elemento) {
    personajeActivo.encontrar(elemento)
  }
}

object floki{
  var arma = ballesta
  method encotrar(elemento) {
    if(arma.estaCargada()){
      elemento.recibirAtaque(arma.potencia())
      arma.usar()
    }
  }
  method arma(unArma) {
    arma = unArma
  }
  method cambiarArma(unArma) {
    arma = unArma
  }
}

object mario{
  var valorRecolectado = 0
  var ultimoElemento = tipa
  method encontrar(elemento) {
    valorRecolectado = valorRecolectado + elemento.valorOtorgadoPorTrabajo()
    elemento.recibirTrabajo()
    ultimoElemento = elemento
  }
  method esFeliz() {
    return valorRecolectado >= 50 ||  ultimoElemento.altura() >= 10
  }
}