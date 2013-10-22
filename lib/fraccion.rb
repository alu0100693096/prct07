class Fraccion
    attr_reader :n, :d
    def initialize(n,d)
        @n,@d = n,d
        reducir
    end

private

    # Pasa la fracción actual a su forma más reducida y coloca el signo de la
    # fracción en el numerador.
    def reducir
        # Si alguno es negativo, que sea el numerador. Si ambos son negativos,
        # se pasan a positivos.
        if @d < 0
            @n = -@n
            @d = -@d
        end

        # Para reducir la fracción se dividen numerador y denominador entre el
        # máximo común divisor de ambos.
        mcd = gcd(@n, @d)
        if mcd != 0
            @n /= mcd
            @d /= mcd
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
