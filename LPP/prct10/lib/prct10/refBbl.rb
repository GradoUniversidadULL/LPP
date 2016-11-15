# encoding: UTF-8



class Bbl
    include Comparable 
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
       
      if (@autores!=value.autores)
          return @autores <=> value.autores
      else
          return @fecha <=> value.fecha
      end
    end
    
    def ==(value)
      if (@autores==value.autores)
          if(@fecha == value.fecha)
            return true
          end
      end
      return false
    end
 

    def [](value)
      if value ==1
        return autores
        elsif value == 2 
          return titulo
        elsif value == 3
          return serie
        elsif value == 4
          return editorial
        elsif value == 5
          return edicion
        elsif value ==6
          return fecha
        elsif value ==7
          return isbn
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



