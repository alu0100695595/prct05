# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion

	attr_reader :n, :d
	def initialize (n,d)
		@n = n
		@d = d
	end
	
	def to_s 
		"#{@n/gcd(@n,@d)}/#{@d/gcd(@n,@d)}"
	end
	
	def +(other)
		if(@d == other.d)
		  Fraccion.new(@n + other.n,@d)
		else
		  Fraccion.new((@n*other.d)+(@d*other.n),@d*other.d)
		end
	end
	
	def -(other)
		if (@d == other.d)
		  Fraccion.new(@n - other.n,@d)
		else
		  Fraccion.new((@n*other.d)-(@d*other.n),@d*other.d)
		end
	end
	
	def *(other)
		Fraccion.new(@n * other.n,@d * other.d)
	end
	
	def /(other)
		Fraccion.new(@n * other.d,@d * other.n)
	end
	  
end

f1 = Fraccion.new(7, 2)
f2 = Fraccion.new(1, 3)

puts "Operaciones con números racionales: "
puts "\n"

puts "Fracción 1: "
puts "#{f1.to_s}"
puts "\n"
puts "Fracción 2: "
puts "#{f2.to_s}"
puts "\n"
puts "Suma: "
puts "#{f1} + #{f2} = #{f1+f2}"
puts "\n"
puts "Resta: "
puts "#{f1} - #{f2} = #{f1-f2}"
puts "\n"
puts "Multiplicación: "
puts "#{f1} * #{f2} = #{f1*f2}"
puts "\n"
puts "División: "
puts "#{f1} / #{f2} = #{f1/f2}"

