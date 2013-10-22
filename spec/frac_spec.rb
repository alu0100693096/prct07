require "lib/fraccion.rb"

describe Fraccion do

    before :each do
        @f1 = Fraccion.new(1,1)
        @f2 = Fraccion.new(2,3)
    end

    describe "#Comprobacion de variables" do
        #Debe existir un numerador
        it "Hay numerador" do
            @f1.num.should eq(1)
        end
        #Debe existir un denominador
        it "Hay denominador" do
            @f1.d.should eq(1)
        end
    end

    it "Debe estar en su forma reducida" do
        f2 = Fraccion.new(2, 4)
        f2.num.should eq(1)
        f2.d.should eq(2)
    end

    describe "# Acceso a las variables" do
        it "Debe permitir el acceso al numerador mediante el metodo num()" do
            @f1.num.should eq(1)
            @f2.num.should eq(2)
        end
    end
end
