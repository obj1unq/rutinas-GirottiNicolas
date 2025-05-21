import gimnasia.*



class Persona {
    var property peso 
    var property tiempoDeEjercicio
    
    method pesoPerdidoAlRealizar(rutina){
        return rutina.caloriasQueQuema(tiempoDeEjercicio) / self.kilosPorCalorias()
    }

    method aplicar(rutina)

    method kilosPorCalorias()
    

}

class Sedentario inherits Persona {


    override method kilosPorCalorias(){
        return 7000
    }

    override method aplicar(rutina){
        self.validarPeso()
        self.bajarDePeso(self.pesoPerdidoAlRealizar(rutina))
    }

    method validarPeso(){
        if(peso < 50 ){
            self.error("No puede realizar actividades")
        }
    }

    method bajarDePeso(kilos){
        peso -= kilos
    }
}



class Atleta inherits Persona {
    override method pesoPerdidoAlRealizar(rutina){
        return super(rutina) -1
    }

    override method kilosPorCalorias(){
        return 8000
    }

    override method tiempoDeEjercicio(){
        return 90
    }

    override method aplicar(rutina){
        self.validarCalorias(rutina.caloriasQueQuema(tiempoDeEjercicio))
        peso -= self.kilosPorCalorias()
    }

    method validarCalorias(calorias){
        if (calorias < 10000){
            self.error("Calorias insuficientes")
        }
    }
}