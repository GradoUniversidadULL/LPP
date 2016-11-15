#!/usr/bin/env ruby

class Numero
    
    attr_reader :numerador,:denominador #variables necesarias representar número fraccionario
    def initialize(x,y)
        raise RuntimeError,"El numerador no puede ser 0 " if y == 0
        raise ArgumentError,"Los operandos tienes que ser números" unless (y.is_a? Numeric) && (x.is_a? Numeric)
        @numerador,@denominador = x,y
    end
    
    
    def to_s
        "#{@numerador}/#{@denominador}"     
    end
    
    def *(value)
        num = @numerador * value.numerador 
        den = @denominador * value.denominador
        simplificar(num,den)
    end

    def +(value)
        num = (@numerador * value.denominador) + (value.numerador * @denominador)
        den = @denominador * value.denominador
        simplificar(num,den)
        
    end
    
    def -(value)
        num = (@numerador * value.denominador) - (value.numerador * @denominador)
        den = @denominador * value.denominador
        simplificar(num,den)
           
        
    end
    
    def /(value)
        raise RuntimeError,"El numerador no puede ser 0 " if @denominador == 0
        num = @numerador *  value.denominador
        den = @denominador * value.numerador
        
        simplificar(num,den)
       
    end
    
    def simplificar(num,den)
        while num%11==0 && den%11==0 
             num=num/11
             den=den/11
        end
        
        while num%7==0 && den%7==0
             num=num/7
             den=den/7
        end
         
        while num%5==0 && den%5==0
             num=num/5
             den=den/5
        end
        
         while num%3==0 && den%3==0
             num=num/3
             den=den/3
         end
         
         while num%2==0 && den%2==0
             num=num/2
             den=den/2
         end
        Numero.new(num,den)
    end
    
    
   
end


