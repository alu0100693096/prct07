class Fraccion
    attr_reader :num, :denom
    def initialize(n,d)
        @num, @denom = n, d
        reducir
    end

    def to_s
        "#{num}/#{denom}"
    end

    def to_float
        @num, @denom = @num.to_f, @denom.to_f 
	#to_f pasa a numero flotante.
    end

    def ==(other)
        @num == other.num && @denom == other.denom
    end
    	

private

    # Pasa la fracción actual a su forma más reducida y coloca el signo de la
    # fracción en el numerador.
    def reducir
        # Si alguno es negativo, que sea el numerador. Si ambos son negativos,
        # se pasan a positivos.
        if @denom < 0
            @num = -@num
            @denom = -@denom
        end

        # Para reducir la fracción se dividen numerador y denominador entre el
        # máximo común divisor de ambos.
        mcd = gcd(@num, @denom)
        if mcd != 0
            @num /= mcd
            @denom /= mcd
        end
    end

    # Calcula el máximo común divisor entre dos números enteros a y b.
    def gcd(a, b)
        a, b = a.abs, b.abs
        while b != 0
            a, b = b, a % b
        end
        a
    end
end
