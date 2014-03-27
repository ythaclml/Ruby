# coding: utf-8
module RubyModule

	def palindromo? (s)

		str= s.gsub(/\W+/, '')
		return str.downcase==str.reverse.downcase
	end

	def cuenta_palabras(s)
		h = Hash.new(0)
		s.scan(/\w+/) do |w|
 		 h[w] += 1
 		end
 		return h

	end


	def hanoi(numero_discos, t_origen, t_destino, t_alterna)
  		if numero_discos == 1
   			 puts "Mover disco de #{t_origen} a #{t_destino}}"
 		else
   			hanoi(numero_discos-1, t_origen, t_alterna, t_destino)
    		hanoi(1,t_origen, t_destino, t_alterna)
    		hanoi(numero_discos-1, t_alterna, t_destino, t_origen)
  		end 
	end

	def char_count(s, c)
		aux =0
		
		s.each_char do|ch|
			if(ch == c)
				aux=aux+1
			end
		end
		return aux
	end

end


class Test
	include RubyModule
	
	def testProg
		char_count("cathyholacathy", 'a')
	end
end

test = Test.new
puts  test.testProg