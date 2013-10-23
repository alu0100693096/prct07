require "lib/fraccion.rb"

describe Fraccion do

    before :each do
        @f1 = Fraccion.new(1,1)
        @f2 = Fraccion.new(2,3)
	@f3 = Fraccion.new(5,2)
    end

    describe "#Comprobacion de variables" do
        #Debe existir un numerador
        it "Hay numerador" do
            @f1.num.should eq(1)
        end
        #Debe existir un denominador
        it "Hay denominador" do
            @f1.denom.should eq(1)
        end
    end

    it "Debe estar en su forma reducida" do
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
	    @f3.to_float.should eq(2.5)
	end
    end
end
