# encoding: UTF-8

require_relative 'refBbl'

class Periodico < Bbl
     attr_accessor :periodico, :precio, :obra, :paginas, :edicion, :volumen, :lugar
  def initialize(*args)
      
   # autores,titulo,serie,editorial,edicion,fecha,isbn, periodico, precio, obra, paginas , edicion, volumen , lugar      
   super(args[0],args[1],nil,nil,nil,args[2],nil)
   @periodico = args[3]
   @precio = args[4]
   @obra = args[5]
   @paginas = args[6]
   @edicion = args[7]
   @volumen = args[8]
   @lugar = args[9]
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
  
  def [](value)
    if value == 14 
        return @obra
    elsif value == 15
        return @paginas
    elsif value == 16
        return @edicion
    elsif value == 17
        return @volumen
    elsif value == 18
        return @lugar
    end
    super
  end

end
