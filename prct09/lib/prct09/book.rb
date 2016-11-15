
# encoding: UTF-8
require_relative 'refBbl'

class Book < Bbl
  
  attr_accessor :precio,:disponible   
  
  def initialize(autores,titulo,serie=nil,editorial,edicion,fecha,isbn,precio,disponible)
   
   super(autores,titulo,serie,editorial,edicion,fecha,isbn)
   @precio = precio
   @disponible = disponible
  end
     
  def to_s
   
   "#{super}\n Precio: #{@precio}\n Disponible: #{@disponible}"
  end
   
end
