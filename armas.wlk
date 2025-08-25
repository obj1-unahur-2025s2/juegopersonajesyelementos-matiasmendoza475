object ballesta {
  var cantidadDeFlechas = 10
  method estaCargada(){
    return cantidadDeFlechas > 0
  }
  method potencia(){
    return 4
  }
  method usar() {
    cantidadDeFlechas = cantidadDeFlechas -1
    
  }
}

object jabalina {
    var estaCargada = true
    method estaCargada(){
        return estaCargada
    }
    method potencia() {
        return 30
    }
    method usar() {
      estaCargada = false
    }
  
}