# encoding: UTF-8

include Comparable

class Bbl
     
    attr_accessor :autores, :titulo, :serie, :editorial, :edicion, :fecha, :isbn
    
    def initialize(autores,titulo,serie=nil,editorial,edicion,fecha,isbn)
        
        @autores=autores
        @titulo=titulo
        @serie=serie
        @editorial=editorial
        @edicion=edicion
        @fecha= fecha
        @isbn = isbn
        
    end
      
      
      
    def <=>(value)
       return nil unless value.instance_of? Bbl
       @autores <=> value.autores
      
    end
    
    def ==(value)
      
      if value.instance_of? Bbl
         @autores == value.autores
      else
        false
      end
    end
 

    
      
    def to_s
       x = ""
       @autores.each do |i|
          if i == @autores.last then
            x << i 
          else 
            x << i << "," << " "
          end
       end   
       
       y = ""
       @isbn.each do |i|
          if i == @isbn.last then
            y << i 
          else 
            y << i << "," << " "
          end
       end  
 
      
	   if @serie != nil then 
	  	  "\n Autores: #{x}\n Título: #{@titulo}\n Serie: #{@serie}\n Editorial: #{@editorial}\n Edición: #{@edicion}\n Fecha: #{@fecha}\n Código: #{y}"
	    else
	      "\n Autores: #{x}\n Título: #{@titulo}\n Editorial: #{@editorial}\n Edición: #{@edicion}\n Fecha: #{@fecha}\n Código: #{y}"
	   end
	    
    end
	 
end 



