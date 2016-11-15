# encoding: UTF-8
require_relative "refBbl"
require_relative "lista"
require_relative "artPer"
require_relative "artRev"
require_relative "periodico"
require_relative "libro"
require_relative "docEle"



class Cita
   
   
    attr_accessor :lista
    
    def initialize()
        @lista = Lista.new()      
        @sufijo = 0
    end
   
   
   def insert(node)

      
       @lista.sort
       @lista.insert_end(node);
   end
   
  def to_s
      alm = ""
      
    @lista.sort
    @lista.each do |i|
        aut = ""
        
        if(i.class==Book)
            for j in (0..i[1].length-1) 
                nombreApell = i[1][j].scan(/\w+/)
                nombre = nombreApell[0][0]
                apellido = nombreApell[1]
                if (j != i[1].length-1) 
                    aut <<  "#{apellido},#{nombre}. & " 
                else
                    aut <<  "#{apellido},#{nombre}."
                end
            end
=begin
    Libros: Elementos de referencia de un libro completo:
    Autor, A. A. (A˜no de publicaci´on). T´ıtulo del libro: May´uscula inicial tambi´en para el
    subt´ıtulo (edici´on) (volumen). Lugar de publicaci´on: editor o casa publicadora.  
=end
    #Libro tiene autor, titulo, serie , editorial, edicion, fecha, isbn, precio, volumen
            
                 alm <<  "Autor: #{aut}(#{i[6]}).Título del libro #{i[2].capitalize}, #{i[3].capitalize}(#{i[5]}) (#{i[8]}). Lugar de publicación: #{i[4]}"

        end
        
    
    
        if(i.class== ArtPer)
                for j in (0..i[1].length-1) 
                    nombreApell = i[1][j].scan(/\w+/)
                    nombre = nombreApell[0][0]
                    apellido = nombreApell[1]
                    if (j != i[1].length-1) 
                        aut <<  "#{apellido},#{nombre}. & " 
                    else
                        aut <<  "#{apellido},#{nombre}."
                    end
                end
=begin
Art´ıculo de peri´odico:
Autor, A. A. (Fecha mostrada en la publicaci´on). T´ıtulo del art´ıculo. Nombre del peri´odico,
pp. n´umeros de p´aginas.
=end
            
                alm <<  "Autor: #{aut}(#{i[6]}).Título del artículo #{i[2]}. #{i[8]}, pp. #{i[9]}"
              
            
            
        end
            
        if(i.class== DocEle)
            
            for j in (0..i[1].length-1) 
                        nombreApell = i[1][j].scan(/\w+/)
                        nombre = nombreApell[0]
                        apellido = nombreApell[1]
                        if (j != i[1].length-1) 
                            aut <<  "#{apellido},#{nombre}. & " 
                        else
                            aut <<  "#{apellido},#{nombre}."
                        end
            end           
=begin
    Autor/responsable (fecha de publicaci´on). T´ıtulo (edici´on), [tipo de medio]. Lugar de publicaci´on:
    editor. Disponible en: especifique la v´ıa [fecha de acceso].
=end
            
                 alm << "Autor/#{aut}(#{i[6]}).#{i[2]} (#{i[8]}), [#{i[9]}], #{i[11]}, #{i[12]}. Disponible en: #{i[10]} [#{i[13]}]" 
                 
        end
     
   
        if(i.class== Periodico)
                    for j in (0..i[1].length-1) 
                        nombreApell = i[1][j].scan(/\w+/)
                        nombre = nombreApell[0][0]
                        apellido = nombreApell[1]
                        if (j != i[1].length-1) 
                            aut <<  "#{apellido},#{nombre}. & " 
                        else
                            aut <<  "#{apellido},#{nombre}."
                        end
                    end
=begin
    Autor, A. A. & Autor, B. B. (A˜no de publicaci´on). T´ıtulo del art´ıculo o cap´ıtulo. En A.
    Editor & B. Editor (Eds.), T´ıtulo de la obra (n´umeros de p´aginas del cap´ıtulo) (edici´on)
    (volumen). Lugar de publicaci´on: editor o casa publicadora.
=end
                alm << "Autor: #{aut}(#{i[6]}). #{i[2]}. #{i[14]}(#{i[15]})(#{i[16]})(#{i[17]}). #{i[18]}"
                
        end
      
    end
  return "#{alm}"
  end
   
   
   
   def each
		@lista.each{ |i| yield i}
   end
   
   
   
   
   
   
   
    
    
    
end