# encoding: UTF-8

require 'spec_helper'
module Prct08
end

describe Prct08 do
    
  before :each do
    
    #Referencias bibliografía
    @b =  Bbl.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'],'The Pragmatic Programmers Guide','The Facets of Ruby','Pragmatic Bookshelf','4 edition','July 7, 2013',['ISBN-13: 978-1937785499','ISBN-10: 1937785491'])
    @b2 = Bbl.new(['Scott Chacon'],'Pro Git 2009th Edition','(Pro)','Apress','2009 edition','August 27, 2009',['ISBN-13: 978-1430218333','ISBN-10: 1430218339'])
    @b3 = Bbl.new(['David Flanagan', 'Yukihiro Matsumoto'], 'The Ruby Programming Language', 'O’Reilly Media', '1 edition','February4, 2008',['ISBN-10: 0596516177', 'ISBN-13: 978-0596516178'])
    @b4 = Bbl.new(['David Chelimsky','Dave Astels', 'Bryan Helmkamp', 'Dan North', 'Zach Dennis', 'Aslak Hellesoy'],'The RSpecBook: Behaviour Driven Development with RSpec, Cucumber, and Friends','The Face,ts of Ruby','PragmaticBookshelf','1 edition''December 25, 2010',['ISBN-10: 1934356379', 'ISBN-13: 978-1934356371'])
    @b5 = Bbl.new(['Richard E. Silverman'],'Git Pocket Guide', 'O’Reilly Media','1 edition','August 2, 2013',['ISBN-10: 1449325866','ISBN-13: 978-1449325862'])

    
    
    #lista
    @list = Lista.new()
    
    #prueba insertar vacío
    @list2 = Lista.new()
    @list2.insert_empty(@b)
    
  
    #prueba tipo nodo  
    @node = Node.new(2,3)
    
    
    #prueba extraer
    @list3 = Lista.new()
    @list3.insert_empty(@b2)
    @list3.insert_end(@b3)
    @list3.extract_inicio()
    
    #prueba insertar varios elementos
    @list4 = Lista.new()
    @list4.insert_end(@b4)
    @list4.insert_end(@b5)
    
    #prueba extraer
    @list5 = Lista.new()
    @list5.insert_empty(@b)
    
    
    #prueba each
    @list6 = Lista.new()
    @list6.insert_empty("eric")
    @list6.insert_end("juan")
    @list6.insert_end("pedro")
    
    
    #pruebas lista doblemente enlazada
    @list7 = Lista.new()
    @list7.insert_empty("eric")
    @list7.insert_end("juan")
    
    #pruebas lista doblemente enlazada extraer final
    @list8 = Lista.new()
    @list8.insert_empty("eric")
    @list8.insert_end("juan")
    @list8.insert_end("pepe")
    @list8.insert_end("lucas")
    @list8.extract_final()
    
    #pruebas lista doblemente enlazada insertar inicio
    @list9 = Lista.new()
    @list9.insert_empty("eric")
    @list9.insert_end("juan")
    @list9.insert_end("pepe")
    @list9.insert_inicio("lolo")

  end
  
    
    it 'Metodos'  do
      expect(@node.to_s).is_a? Struct
      expect(@list3.to_s()).to eq "\n Autores: David Flanagan, Yukihiro Matsumoto\n Título: The Ruby Programming Language\n Editorial: O’Reilly Media\n Edición: 1 edition\n Fecha: February4, 2008\n Código: ISBN-10: 0596516177, ISBN-13: 978-0596516178"
       expect(@list3.empty()).respond_to?("hola",false)
  
      expect(@list2.to_s()).to eq "\n Autores: Dave Thomas, Andy Hunt, Chad Fowler\n Título: The Pragmatic Programmers Guide\n Serie: The Facets of Ruby\n Editorial: Pragmatic Bookshelf\n Edición: 4 edition\n Fecha: July 7, 2013\n Código: ISBN-13: 978-1937785499, ISBN-10: 1937785491"
  
      expect(@list4.to_s()).to eq "\n Autores: David Chelimsky, Dave Astels, Bryan Helmkamp, Dan North, Zach Dennis, Aslak Hellesoy\n Título: The RSpecBook: Behaviour Driven Development with RSpec, Cucumber, and Friends\n Editorial: The Face,ts of Ruby\n Edición: PragmaticBookshelf\n Fecha: 1 editionDecember 25, 2010\n Código: ISBN-10: 1934356379, ISBN-13: 978-1934356371 \n Autores: Richard E. Silverman\n Título: Git Pocket Guide\n Editorial: O’Reilly Media\n Edición: 1 edition\n Fecha: August 2, 2013\n Código: ISBN-10: 1449325866, ISBN-13: 978-1449325862"
    
      expect{@list3.extract_inicio()}.to raise_error( RuntimeError,"No se puede extraer porque debe existir una lista con su cabeza")
  
        expect(@list7.print_before()).to eq "eric"
        expect(@list8.to_s()).to eq "eric juan pepe"
        expect(@list9.to_s()).to eq "lolo eric juan pepe"
        expect(@list9.to_s_i()).to eq "pepe juan eric lolo"
    
    
  end

end
