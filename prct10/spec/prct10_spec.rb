# encoding: UTF-8
require 'spec_helper'


describe Prct10 do
    
  before :each do
    
    #Referencias bibliografía
    @b =  Bbl.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'],'The Pragmatic Programmers Guide','The Facets of Ruby','Pragmatic Bookshelf','4 edition','July 7, 2013',['ISBN-13: 978-1937785499','ISBN-10: 1937785491'])
    @b1 = Bbl.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'],'The Pragmatic Programmers Guide','The Facets of Ruby','Pragmatic Bookshelf','4 edition','July 7, 2013',['ISBN-13: 978-1937785499','ISBN-10: 1937785491'])
    @b2 = Bbl.new(['Scott Chacon'],'Pro Git 2009th Edition','(Pro)','Apress','2009 edition','August 27, 2009',['ISBN-13: 978-1430218333','ISBN-10: 1430218339'])
    @b3 = Bbl.new(['David Flanagan', 'Yukihiro Matsumoto'], 'The Ruby Programming Language', 'O’Reilly Media', '1 edition','February4, 2008',['ISBN-10: 0596516177', 'ISBN-13: 978-0596516178'])
    @b4 = Bbl.new(['David Chelimsky','Dave Astels', 'Bryan Helmkamp', 'Dan North', 'Zach Dennis', 'Aslak Hellesoy'],'The RSpecBook: Behaviour Driven Development with RSpec, Cucumber, and Friends','The Face,ts of Ruby','PragmaticBookshelf','1 edition''December 25, 2010',['ISBN-10: 1934356379', 'ISBN-13: 978-1934356371'])
    @b5 = Bbl.new(['Richard E. Silverman'],'Git Pocket Guide', 'O’Reilly Media','1 edition','August 2, 2013',['ISBN-10: 1449325866','ISBN-13: 978-1449325862'])
    @bn = Bbl.new(false,nil,nil,nil,nil,nil,nil)
    
    
    #Herencia
    @b6 = Book.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'],'The Pragmatic Programmers Guide','The Facets of Ruby','Pragmatic Bookshelf','4 edition','July 7, 2013',['ISBN-13: 978-1937785499','ISBN-10: 1937785491'],'12€','Volumen 5')
    @b7 = Periodico.new(['Eric Ramos'],'Pragmatic','July 7, 2013','El Pais','2€','El lobo Feroz','112 páginas','3 edición','1er volumen','Todas las librerias')
    @b8 = ArtPer.new(['Juan Ramos'],'Cosas de Casa','July 7, 2013','Atrib','2€','Moda','El Pais','118')
    @b9 = DocEle.new(['Juan Lechugo'],'Lectura','July 7, 2013','www.miarticulo.com','web','3 edicion', 'Internet','Amazon','Juan Palomo','July 25, 2013')
    @b10 = ArtRev.new(['Pepito'],'Lectura','Jan 4, 2013','5€','Hola!','Coches')    
    # autores,titulo,fecha,periodico,precio, enlace, disponible, edicion, medio,lugar,editor,facc
    
    ###Practica 10
    
    @acta = Cita.new()
    @acta.insert(@b6)
    #@acta.insert(@b3)
    
    @peri = Cita.new()
    @peri.insert(@b8)
    
    
    @docu = Cita.new()
    @docu.insert(@b9)
    
    @capi = Cita.new()
    @capi.insert(@b7)

    @new = Cita.new()
    @new.insert(@b8)
    @new.insert(@b6)
  end


  describe 'APA' do
    
  
    
    it "Se muestran los libros" do
      expect(@acta.to_s).to eq('Autor: Thomas,D. & Hunt,A. & Fowler,C.(July 7, 2013).Título del libro The pragmatic programmers guide, The facets of ruby(4 edition) (Volumen 5). Lugar de publicación: Pragmatic Bookshelf')
    end
    
     it "Se muestran los artículos de periódico" do
      expect(@peri.to_s).to eq('Autor: Ramos,J.(July 7, 2013).Título del artículo Cosas de Casa. El Pais, pp. 118')
    end
    
    it "Se muestran los documentos electrónicos" do
      expect(@docu.to_s).to eq('Autor/Lechugo,Juan.(July 7, 2013).Lectura (3 edicion), [Internet], Amazon, Juan Palomo. Disponible en: web [July 25, 2013]')
    end
    
    it "Se muestran los artículos" do
      expect(@capi.to_s).to eq('Autor: Ramos,E.(July 7, 2013). Pragmatic. El lobo Feroz(112 páginas)(3 edición)(1er volumen). Todas las librerias')
    end


    it "Meter más de uno ordenados" do
      expect(@new.to_s).to eq('Autor: Ramos,J.(July 7, 2013).Título del artículo Cosas de Casa. El Pais, pp. 118Autor: Thomas,D. & Hunt,A. & Fowler,C.(July 7, 2013).Título del libro The pragmatic programmers guide, The facets of ruby(4 edition) (Volumen 5). Lugar de publicación: Pragmatic Bookshelf')
    end
  end


end
