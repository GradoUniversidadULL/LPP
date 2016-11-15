require_relative 'periodico'

class ArtRev < Periodico 
    attr_accessor :revista, :seccion
    
  def initialize(*args)
   # autores,titulo,fecha,periodico,precio
   super(args[0],args[1],args[2],nil,args[3])
   @revista = args[4]
   @seccion = args[5]
  end
  
  def to_s
   "#{super}\n Revista: #{@revista}\n Sección: #{@seccion}"
  end

end