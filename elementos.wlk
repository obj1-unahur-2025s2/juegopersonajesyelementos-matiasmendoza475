object castillo {
    var nivelDefensa = 150
    method altura(){
        return 20
    }
    method nivelDefensa(){
        return nivelDefensa
    }
    method recibirAtaque(potencia) {
        nivelDefensa = nivelDefensa - potencia      
    }
    method valorOtorgadoPorTrabajo() {
      return nivelDefensa / 5
    }
    method recibirTrabajo() {
      nivelDefensa = (nivelDefensa + 20).min(200) 
    }

}
object aurora {
  var estaViva = true
  method altura() {
    return 1
  }
  method estaViva(){
    return estaViva
  }
  method recibirAtaque(potencia) {
    if(estaViva && potencia >= 10){
      estaViva = false
    }
  }
  method recibirTrabajo() {}
  method valorOtorgadoPorTrabajo() {
    return 15
  } 
}

object tipa {
  var altura = 8
  method altura(){
    return altura
  }
  method recibirAtaque(potencia) {}
  method recibirTrabajo() {
    altura = altura + 1
  }
  method valorOtorgadoPorTrabajo() {
    return altura * 2
  } 
}

