# encoding: UTF-8

require_relative 'periodico'

class ArtPer < Periodico 
    attr_accessor :seccion
    
  def initialize(*args)
   super(args[0],args[1],args[2],args[3],args[4])
   @seccion = args[5]
  end
  
  def to_s
   "#{super}\n Sección: #{@seccion}"
  end

end
