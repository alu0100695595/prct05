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

f1 = Fraccion.new(3, 2)
f2 = Fraccion.new(5, 4)

puts "Fracción 1: #{f1.to_s}"
puts "Fracción 2: #{f2.to_s}"
puts "Suma: #{f1} + #{f2} = #{f1+f2}"
puts "Resta: #{f1} - #{f2} = #{f1-f2}"
puts "Multiplicación: #{f1} * #{f2} = #{f1*f2}"
puts "División: #{f1} / #{f2} = #{f1/f2}"

