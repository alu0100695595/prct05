# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion

	attr_reader :n, :d
	def initialize (n,d)
		@n = n
		@d = d
	end
	
	def to_s 
		puts "Fracción: "
		puts "#{@n}/#{@d}"
		puts "Fracción minimizada: "
		puts "#{@n/gcd(@n,@d)}/#{@d/gcd(@n,@d)}"
	end
	def *(other)
		Fraccion.new(@n * other.n,@d * other.d)
	end
	def /(other)
		Fraccion.new(@n * other.d,@d * other.n)
	end
	  
end

f1 = Fraccion.new(2, 5)
f2 = Fraccion.new(3, 4)
f3 = f1*f2
f4 = f1/f2

puts f1.to_s
puts f2.to_s
puts "Multiplicacion: "
puts f3.to_s
puts "Division: "
puts f4.to_s