import rodados.*


class Dependencia {
    const property flota = []
    var property empleados

    method agregarAFlota(rodado) {flota.add(rodado)}
    method quitarDeFlota(rodado) {flota.remove(rodado)}
    method pesoTotalFlota() = flota.sum({r => r.peso()})
    method estaBienEquipada() = 
        self.tieneAlMenosRodados(3) and self.todosVanAlMenosAKm(100)
    method tieneAlMenosRodados(cantidad) = flota.size() >= cantidad
    method todosVanAlMenosAKm(km) = flota.all({r =>r.velMax()>=km})
    method capacidadTotalEnColor(color) = self.rodadosDelColor(color).sum({r =>r.capacidad()})
    method rodadosDelColor(color) = flota.filter({r =>r.color() == color})
    method colorDelRodadoMasRapido() = self.elRodadoMasRapido().color()
    method elRodadoMasRapido() =  flota.max({r =>r.velMax()})
    method capacidadFaltante() = 0.max(empleados - self.capacidadFlota())
    method capacidadFlota() = flota.sum({r =>r.capacidad()})
    method esGrande() = empleados >= 40 and self.tieneAlMenosRodados(5)  
}