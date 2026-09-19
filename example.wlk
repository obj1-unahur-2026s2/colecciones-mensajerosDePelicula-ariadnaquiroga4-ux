object pepita {
  var energy = 100

  method energy() = energy

  method fly(minutes) {
    energy = energy - minutes * 3
  }
}

object paquete {
  var precio = 50
  var pago = true
  method estaPago() = pago
  method precio() = precio
  method entregar(mensajero, destino) {
    destino.puedePasar(mensajero)
    self.estaPago()
  }
}
object paquetito {
  const precio = 0
  const pago = true
  method estaPago() = pago
  method precio() = precio
  method entregar(mensajero, destino) {
    self.estaPago()
  }
}
object paquetonViajero {
  var destino = [matrix, puenteBrooklyn]
  var precio = 100
  var pago = true
  method estaPago() = pago
  method precio() {
    return precio * destino.size()
  }
  method entregar(mensajero, destino) {
    self.estaPago()
  }
}

object puenteBrooklyn {
  method dejaPasar(mensajero) {
    mensajero.pesoActual() <= 1000
  }
}
object matrix {
  method dejaPasar(mensajero) {
    mensajero.puedeLlamar()
  }
}

object roberto {
  var peso = 0
  method peso() = peso
  const puedeLlamar = false
  method puedeLlamar() = puedeLlamar
  var vehiculo = "bicicleta"
  method cambiarVehiculo(vehi) {
    vehiculo = vehi
  }
  method pesoActual(vehi) {
    if (vehi == "bicicleta") {
      return peso + 5
    } else {
      return peso
    }
  }
}
object chuckNorris {
  var peso = 80
  method pesoActual() = peso
  const puedeLlamar = true
  method puedeLlamar() = puedeLlamar
}
object neo {
  var peso = 0
  method pesoActual() = peso
  method puedeLlamar() = self.tieneCredito()
  method tieneCredito() = true
}

object empresa {
  var mensajeros = #{roberto, chuckNorris, neo}
  method contratar(mensajero) {
    mensajeros.add(mensajero)
  }
  method despedir(mensajero) {
    mensajeros.remove(mensajero)
  }
  method despedirATodos() {
    mensajeros.clear()
  }
  method mensajeriaGrande() {
    mensajeros.size() > 2
  }
  method puedeSerEntregadoPorPrimero(paquete, destino) {
    paquete.entregar(mensajeros.first(), destino)
  }
  method pesoDelUltimoMensajero() {
    mensajeros.last().pesoActual()
  }

}