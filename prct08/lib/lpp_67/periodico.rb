require_relative 'codigo'

class Periodico < Bbl
     attr_accessor :periodico #args 3
     attr_accessor :precio #args 4
  def initialize(*args)
      
   # autores,titulo,serie,editorial,edicion,fecha,isbn      
   super(args[0],args[1],nil,nil,nil,args[2],nil)
   @periodico = args[3]
   @precio = args[4]
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
    
    j = "" 
    
    j << "\n Autores: #{x}\n Título: #{@titulo}\n Fecha: #{@fecha}"
     if @periodico != nil  
         j << "\n Periódico: #{@periodico}"
     end
     
     if @precio != nil
        j << "\n Precio: #{@precio}"
    end
    "#{j}"
  end

end


