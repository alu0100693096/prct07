require 'lib/fraccion.rb'

numeradores = [0, 0]
denominadores = [0, 0]
2.times do |i|
    print "Introduce el numerador de la fraccion #{i+1}: "
    numeradores[i] = gets.to_i

    print "Introduce el denominador de la fraccion #{i+1}: "
    denominadores[i] = gets.to_i
end

f1 = Fraccion.new(numeradores[0], denominadores[0])
f2 = Fraccion.new(numeradores[1], denominadores[1])

print "\n"

puts "#{f1} + #{f2} = #{f1+f2}"
puts "#{f1} - #{f2} = #{f1-f2}"
puts "#{f1} * #{f2} = #{f1*f2}"
puts "#{f1} / #{f2} = #{f1/f2}"
puts "#{f1} % #{f2} = #{f1%f2}"

print "\n"

if f1 == f2
    puts "#{f1} y #{f2} son iguales."
else
    puts "#{f1} y #{f2} no son iguales."
end

if f1 < f2
    puts "#{f1} es menor que #{f2}."
else
    puts "#{f1} no es menor que #{f2}."
end

if f1 > f2
    puts "#{f1} es mayor que #{f2}."
else
    puts "#{f1} no es mayor que #{f2}."
end

if f1 <= f2
    puts "#{f1} es menor o igual que #{f2}."
else
    puts "#{f1} no es menor o igual que #{f2}."
end

if f1 >= f2
    puts "#{f1} es mayor o igual que #{f2}."
else
    puts "#{f1} no es mayor o igual que #{f2}."
end
