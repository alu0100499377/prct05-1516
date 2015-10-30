class Fraccion

	def initialize(n, d)
		@num = n
		@denom = d
	end

	def to_s
		"(#{@num}/#{@denom})"
	end

	#maximo comun divisor
	def gcd(u, v)
		u, v = u.abs, v.abs
		while v != 0
			u, v = v, u % v
		end
		u
	end

	#SUMA
	def +(n, d)
		aux_d = @denom*d
		aux_n1 = (aux_d/@denom)*@num
		aux_n2 = (aux_d/d)*n
		aux_n = aux_n1+aux_n2

		#reduzco la expresion a la minima
		max = gcd(aux_n, aux_d)
		@denominador = aux_d/max
		@numerador = aux_n/max

		fraccion = Fraccion.new(@numerador, @denominador)
		return fraccion
	end

	#RESTA
	def -(n, d)
		aux_d = @denom*d
		aux_n1 = (aux_d/@denom)*@num
		aux_n2 = (aux_d/d)*n
		aux_n = aux_n1-aux_n2

		#reduzco el resultado a la minima expresion
		max = gcd(aux_n, aux_d)
		@denominador = aux_d/max
		@numerador = aux_n/max
		
		fraccion = Fraccion.new(@numerador, @denominador)
		return fraccion
	end

	#MULTIPLICACION
	def mul(n, d)
		#multiplico y reduzco el resultado a la minima expresion
		aux_n = n*@num
		aux_d = d*@denom
		max = gcd(aux_n, aux_d)
		@denominador = aux_d/max
		@numerador = aux_n/max
		fraccion = Fraccion.new(@numerador, @denominador)
		return fraccion
	end

	#DIVICION
	def /(n, d)
		#divido y reduzco el resultado a la minima expresion
		aux_d = n*@denom
		aux_n = d*@num
		max = gcd(aux_n, aux_d)
		@denominador = aux_d/max
		@numerador = aux_n/max
		fraccion = Fraccion.new(@numerador, @denominador)
		return fraccion

	end
end #end clase
















