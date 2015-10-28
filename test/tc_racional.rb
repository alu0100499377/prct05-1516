require '../lib/racional'
require 'test/unit'

class TestFraccion < Test::Unit::TestCase
	def test_to_s
		assert_equal("(1/3)", Fraccion.new(1,3).to_s)
		assert_equal("(2/5)", Fraccion.new(2,5).to_s)
	end
	
	def test_suma
		assert_equal("(11/15)", Fraccion.new(1,3).suma(2,5).to_s)
	end

	#este debe fallar
	def test_suma_fail
		assert_equal("(5/6)", Fraccion.new(1,3).div(2,5))
	end

end
