require "lib/fraccion.rb"

describe Fraccion do

    before :all do
        @f1 = Fraccion.new(1,1)
        @f2 = Fraccion.new(2,3)
        @f3 = Fraccion.new(5,2)
        @f4 = Fraccion.new(-12,6)
    end

    describe "# Comprobacion de variables" do
        #Debe existir un numerador
        it "Hay numerador" do
            @f1.should respond_to :num
        end
        #Debe existir un denominador
        it "Hay denominador" do
            @f1.should respond_to :denom
        end
    end

    it "Debe estar en su forma reducida" do
        # 2/4 == 1/2
        f2 = Fraccion.new(2, 4)
        f2.num.should eq(1)
        f2.denom.should eq(2)
    end

    describe "# Acceso a las variables" do
        it "Debe permitir el acceso al numerador mediante el metodo num()" do
            @f1.num.should eq(1)
            @f2.num.should eq(2)
        end
        it "Debe permitir el acceso al denominador mediante el metodo denom()" do
            @f1.denom.should eq(1)
            @f2.denom.should eq(3)
        end
    end

    describe "# Funciones de conversion" do
        it "Debe mostrar la fraccion de la forma numerador/denominador" do
            @f1.to_s.should eq("1/1")
            @f2.to_s.should eq("2/3")
        end
        it "Debe mostrar la fraccion en formato flotante" do
            @f1.to_f.should eq(1.0)
            @f3.to_f.should eq(2.5)
        end

        it "Debe calcular el reciproco de una fraccion" do
            @f2.rec.should eq(Fraccion.new(3,2))
            @f4.rec.should eq(Fraccion.new(-1,2))
        end

        it "Debe poder calcular el opuesto de una fraccion" do
            (-@f1).should eq(Fraccion.new(-1,1))
            (-@f4).should eq(Fraccion.new(12,6))
        end
    end

    describe "# Funciones de calculo" do
        it "Debe calcular el valor absoluto de la funcion con abs" do
            @f4.abs.should eq(Fraccion.new(12,6))
        end

        it "Debe hacer la suma entre dos fracciones y dar el resultado reducido" do
            (@f2 + @f3).should eq(Fraccion.new(19,6))
            (@f3 + @f4).should eq(Fraccion.new(1,2))
        end

        it "Debe hacer la resta entre dos fracciones y dar el resultado reducido" do
            (@f2 - @f3).should eq(Fraccion.new(-11,6))
            (@f3 - @f4).should eq(Fraccion.new(9,2))
        end

        it "Debe hacer el producto entre dos fracciones y dar el resultado reducido" do
            (@f2 * @f3).should eq(Fraccion.new(5,3))
            (@f3 * @f4).should eq(Fraccion.new(-5,1))
        end

        it "Debe hacer el cociente entre dos fracciones y dar el resultado reducido" do
            (@f2 / @f3).should eq(Fraccion.new(4,15))
            (@f3 / @f4).should eq(Fraccion.new(-15,12))
        end
    end

    describe "# Funciones de comparacion" do
        # Formato: @f2.should be < @f3 ...
	it "Se debe comparar si dos fracciones son iguales con ==" do
            @f3.==(Fraccion.new(10,4)).should eq(true)
            (@f3 == @f2).should_not eq(true)
        end
        it "Se debe de poder comprobar si una fraccion es menor que otra" do
            @f2.should be < @f1
            @f3.should_not be < @f4
        end

    end

end
