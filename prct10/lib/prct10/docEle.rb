# encoding: UTF-8


require_relative 'periodico'


class DocEle < Periodico 
    attr_accessor :enlace, :disponible, :edicion, :medio, :lugar, :facceso
    
    
  def initialize(*args)
   # autores,titulo,fecha,periodico,precio, enlace, disponible, edicion, medio,lugar,editor,facceso
   super(args[0],args[1],args[2])
   @enlace = args[3]
   @disponible = args[4]
   @edicion = args[5]
   @medio = args[6]
   @lugar = args[7]
   @editor = args[8]
   @facceso = args[9]
  end
  
  def to_s
   "#{super}\n Enlace: #{@enlace}"
  end

  def [](value)
   
    if value == 8
      return @edicion
     elsif value == 9 
      return @medio
     elsif value == 10
      return @disponible
     elsif  value == 11 
      return @lugar
     elsif value == 12 
      return @editor
     elsif value == 13
      return @facceso
      
    end
    super
  end
end