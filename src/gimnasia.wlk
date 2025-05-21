
class Rutina {
    var property intensidad
    var property descanso = 0


    method caloriasQueQuema(tiempo) {
        return 100 * (tiempo - descanso) * intensidad
    }


}

class Running inherits Rutina {
    const tiempo
    
    override method descanso(){
        return self.descansoPorTiempo()
    } 

    method descansoPorTiempo(){
        return if (tiempo > 20) { 5 } else { 2 }
    }
}


class Maraton inherits Rutina {

    override method caloriasQueQuema(tiempo){
        return super(tiempo) * 2
    }
} 


class Remo inherits Rutina(intensidad = 1.3) {
    
    const tiempo
    
    override method descanso(){
        return tiempo / 5 
    }

    override method caloriasQueQuema(duracion){
        return super(duracion) * intensidad
    }
}


