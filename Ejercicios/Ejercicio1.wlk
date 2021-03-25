object gimenez {
	const sueldo = 15000
	var salarioAcumulado = 0
	
	method sueldo() {
		return sueldo
	}
	
	method cobrarSueldo() {
		salarioAcumulado += sueldo
	}
	
	method totalCobrado() {
		return salarioAcumulado
	}
}

object baigorria {
	var dinero = 0
	var deuda = 0
	const sueldo = 15000
	
	method sueldo() {
		return sueldo
	}
	
	method cobrarSueldo() {
		var cobrado = sueldo
		if(cobrado > deuda) {
			cobrado -= deuda
			deuda = 0
			dinero += cobrado
		}else{
			deuda -= cobrado	
		}
	}
	
	method gastar(monto) {
		if(dinero >= monto) {
			dinero -= monto
		}else {
			var gasto = monto
			gasto -= dinero
			dinero = 0
			deuda += gasto 
		}
	}
	
	method totalDinero() {
		return dinero
	}
	
	method totalDeuda() {
		return deuda
	}
	
}

object galvan {
	var dinero = 300000
	
	method pagarA(empleado) {
    	dinero -= empleado.sueldo()
    	empleado.cobrarSueldo()
	}
}