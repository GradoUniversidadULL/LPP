# encoding: UTF-8

require_relative 'periodico'

class ArtPer < Periodico 
    attr_accessor :seccion, :nomper, :numpag 
    
  def initialize(*args)
   super(args[0],args[1],args[2],args[3],args[4])
   @seccion = args[5]
   @nomper = args[6]
   @numpag = args[7]
  end
  
  def to_s
   "#{super}\n Sección: #{@seccion}"
  end
  
  def [](value)
   
    if value == 8 
      return @nomper
     elsif value == 9 
      return @numpag
    end
    super
  end
end