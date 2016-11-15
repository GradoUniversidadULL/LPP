# encoding: UTF-8
require_relative 'refBbl'

class Book < Bbl
  
  attr_accessor :precio,:volumen   
  
  def initialize(autores,titulo,serie=nil,editorial,edicion,fecha,isbn,precio,volumen)
   
   super(autores,titulo,serie,editorial,edicion,fecha,isbn)
   @precio = precio
   @volumen = volumen
  end
     
  def to_s
   
   "#{super}\n Precio: #{@precio}\n volumen: #{@volumen}"
  end
  
  def [](value)
    if value == 8 
      return volumen
    end
    super
  end
   
end