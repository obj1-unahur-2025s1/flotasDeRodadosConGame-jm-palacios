class Corsa {
    var property color
    method capacidad() = 4
    method velMax() = 150
    method peso() = 1300  
}
class Kwid {
    var property tieneTanqueAdicional
    method capacidad() = if (tieneTanqueAdicional) 3 else 4
    method velMax() = if(tieneTanqueAdicional) 120 else 110
    method peso() = 1200 + if(tieneTanqueAdicional) 150 else 0  
    method color() = "azul" 
}
object trafic {
    var property interior = comodo
    var property motor = pulenta  
    method capacidad() =  interior.capacidad()
    method velMax() = motor.velocidad()
    method peso() =  4000 + interior.peso() + motor.peso()
    method color() = "blanco" 
}
object comodo {
    method capacidad() = 5
    method peso() = 700 
}
object popular {
    method capacidad() = 12
    method peso() = 1000  
}
object pulenta {
    method peso() = 800
    method velocidad() = 130  
}
object bataton {
    method peso() = 500
    method velocidad() = 80  
}
class Especial {
    const property peso
    var property color
    var property velMax
    var property capacidad   
}
