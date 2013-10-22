require "lib/frac_main.rb"

describe Fraccion do

	before :each do
		@f1 = Fraccion.new(1,1)
	end

	describe "#Comprobacion de variables" do
		#Debe existir un numerador
		it "Hay numerador" do
			@f1.n.should eq(1)
		end
		#Debe existir un denominador
		it "Hay denominador" do
			@f1.d.should eq(1)
		end
	end
end
