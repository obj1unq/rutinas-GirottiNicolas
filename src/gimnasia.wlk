
class Rutina {
    method intensidad()
    
    method descanso(tiempo) 

    method caloriasQueQuema(tiempo) {
        return 100 * (tiempo - self.descanso(tiempo)) * self.intensidad()
    }
}

class Running inherits Rutina {
    
    var property intensidad

    override method descanso(tiempo){
        return self.descansoPorTiempo(tiempo)
    } 

    method descansoPorTiempo(tiempo){
        return if (tiempo > 20) { 5 } else { 2 }
    }
}


class Maraton inherits Running {

    override method caloriasQueQuema(tiempo){
        return super(tiempo) * 2
    }
} 


class Remo inherits Rutina {
    
    override method intensidad(){
        return 1.3
    }

    override method descanso(tiempo){
        return tiempo / 5 
    }

    override method caloriasQueQuema(duracion){
        return super(duracion) * self.intensidad()
    }
}


class RemoDeCompeticion inherits Remo{ // Alternativa Remo(intensidad = 1.7)
    override method intensidad(){
        return 1.7
    }

    override method descanso(tiempo){
        return (super(tiempo) - 3).max(2)
    }
    
}