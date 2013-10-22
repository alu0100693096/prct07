require "lib/frac_main.rb"

describe Fraccion do

	before :each do
		@f1 = Fraccion.new(1)
	end

	#Debe existir un numerador
	describe "#Comprobacion de variables" do
		it "Hay numerador" do
			@f1.n.should eq(1)
		end
	end
end
