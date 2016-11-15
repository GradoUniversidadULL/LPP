#!/usr/bin/env ruby
require 'test/unit'
require 'lib/numero.rb'


class TestNumero < Test::Unit::TestCase
    
   
    def setup
        #numeros simples
        @num1 = Numero.new(2,1)
        @num2 = Numero.new(3,3)
        
        
        #numeros grandes para probar simplificación
        @num5 = Numero.new(200,100)
        @num6 = Numero.new(500,600)
        
    end
    
    def test_simple
        assert_equal("2/1",@num1.to_s)    
        assert_equal("3/3",@num2.to_s)
    end
    
    def test_operaciones
        
        #Probando suma
        assert_equal("3/1",(@num1+@num2).to_s,"Suma")
        assert_equal("17/6",(@num5+@num6).to_s,"Suma grande")
    
        #Probando resta
        assert_equal("1/1",(@num1-@num2).to_s,"Resta")
        assert_equal("7/6",(@num5-@num6).to_s,"Resta grande")
        
        #Probando multiplicación
         assert_equal("2/1",(@num1*@num2).to_s,"Multiplicación")
         assert_equal("5/3",(@num5*@num6).to_s,"Multiplicación grande")
         
        #Probando división
        assert_equal("2/1",(@num1/@num2).to_s,"División")
        assert_equal("12/5",(@num5/@num6).to_s,"División grande")
        
    end
    
    def test_raises
        assert_raise(RuntimeError){Numero.new(1,0)}
        assert_raise(ArgumentError){Numero.new(2,'e')}
    end
    
end





