# encoding: UTF-8


require_relative 'periodico'


class DocEle < Periodico 
    attr_accessor :enlace
    
    
  def initialize(*args)
   # autores,titulo,fecha,periodico,precio      
   super(args[0],args[1],args[2])
   @enlace = args[3]
  end
  
  def to_s
   "#{super}\n Enlace: #{@enlace}"
  end

end
