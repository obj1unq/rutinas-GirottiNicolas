class Club {
    const predios
    
    method mejorPredioPara(persona){
        return predios.max({
            predio => predio.caloriasTotales(persona)
        })
    }

    method prediosTranquiPara(persona) {
        return predios.filter({
            predio => predio.tieneRutinaTranqui(persona)
        })
    }

    method rutinasMasExigentes(persona){
        return predios.map({
            predio => predio.rutinaMasExigente(persona)
        }).asSet()
    }
}


class Predio {
    const rutinas
    
    method rutinaMasExigente(persona) {
        return rutinas.max({
            rutina => rutina.caloriasQueQuema(persona.tiempo())
        })
    }

    method tieneRutinaTranqui(persona){
        return rutinas.any({
            rutina => rutina.caloriasQueQuema(persona.tiempo()) <= 500
        })
    }

    method caloriasTotales(persona){
        return rutinas.sum({
            rutina => rutina.caloriasQueQuema(persona.tiempo())
        })
    }
}