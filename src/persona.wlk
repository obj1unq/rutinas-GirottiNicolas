import gimnasia.*



class Persona {
    var property peso 
    var property tiempo
    method pesoPerdidoAlRealizar(rutina){
        return rutina.caloriasQueQuema(tiempo) / self.kilosPorCalorias()
    }

    method peso(){
        return peso.truncate(3)
    }
    method aplicar(rutina)

    method kilosPorCalorias()
    

}

class Sedentario inherits Persona {

    override method tiempo(){
        return 5
    }

    override method kilosPorCalorias(){
        return 7000
    }

    override method aplicar(rutina){
        self.validarPeso()
        peso -= self.pesoPerdidoAlRealizar(rutina)
    }

    method validarPeso(){
        if(peso < 50 ){
            self.error("No puede realizar actividades")
        }
    }

    
}



class Atleta inherits Persona {
    override method pesoPerdidoAlRealizar(rutina){
        return super(rutina) -1
    }

    override method kilosPorCalorias(){
        return 8000
    }

    override method tiempo(){
        return 90
    }

    override method aplicar(rutina){
        self.validarCalorias(rutina.caloriasQueQuema(tiempo))
        peso -= self.pesoPerdidoAlRealizar(rutina)
    }

    method validarCalorias(calorias){
        if (calorias < 10000){
            self.error("Calorias insuficientes")
        }
    }
}