require './racional.rb'
require 'test/unit'

class TestFraccion < Test::Unit::TestCase
	def test_to_s
		assert_equal("(1/3)", Fraccion.new(1,3).to_s)
		assert_equal("(2/5)", Fraccion.new(2,5).to_s)
	end
end
