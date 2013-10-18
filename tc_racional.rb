# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
    def test_simple
      assert_equal("7/2",Fraccion.new(7,2).to_s)
      assert_equal("1/3",Fraccion.new(2,6).to_s)
      assert_equal("23/6",(Fraccion.new(7,2) + Fraccion.new(2,6)).to_s)
      assert_equal("19/6",(Fraccion.new(7,2)-Fraccion.new(2,6)).to_s)
      assert_equal("7/6",(Fraccion.new(7,2)*Fraccion.new(2,6)).to_s)
      assert_equal("21/2",(Fraccion.new(7,2)/Fraccion.new(2,6)).to_s)
    end
    def test_failure
      assert_equal("2/6",Fraccion.new(2,6).to_s)
      #assert_equal("5/6",(Fraccion.new(7,2)*Fraccion.new(2,6)).to_s)
      #assert_equal("7/2",(Fraccion.new(7,2)+Fraccion.new(2,6)).to_s)
      #assert_equal("1/3",(Fraccion.new(7,2)-Fraccion.new(2,6)).to_s)
      #assert_equal("3/3",(Fraccion.new(7,2)/Fraccion.new(2,6)).to_s)
    end
end
