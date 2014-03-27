# coding: utf-8
module Ejercicio

	def boolean palindromo?(s)

		str= s.gsub(/\W+/, '')
		return s==str.reverse
	end

end

class Test
	include Ejercicio
	
	def testPalindromo
		puts palindromo?("A man, a plan, a canal – Panama")
	end
end

test = Test.new
puts  test.testPalindromo