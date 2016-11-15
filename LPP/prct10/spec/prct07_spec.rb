# encoding: UTF-8
require 'spec_helper'

module Prct07
end

describe Prct07 do
    
  before :each do
    
    @b = Bbl.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'],'The Pragmatic Programmers Guide','serie 3','The Facets of Ruby','Pragmatic Bookshelf; 4 edition','July 7, 2013',['3459'])
    @b2 = Bbl.new(['Dave Jones'],'Linux para listos','Alfaguara','5 edicion','July 7,2015',['321'])

  end
  
    
    it 'Primeras pruebas'  do
      expect(@b.autores).to eq ['Dave Thomas','Andy Hunt','Chad Fowler']
      expect(@b2.autores).to eq ['Dave Jones']
  
  
  
      expect(@b.titulo).to eq 'The Pragmatic Programmers Guide'
      expect(@b2.titulo).to eq 'Linux para listos'
  
  
  
      expect(@b.serie).to eq 'serie 3'
      expect(@b2.serie).to eq nil

  
  
      expect(@b.editorial).to eq 'The Facets of Ruby'
      expect(@b2.editorial).to eq 'Alfaguara'
  
  
  
      expect(@b.edicion).to eq 'Pragmatic Bookshelf; 4 edition'
      expect(@b2.edicion).to eq '5 edicion'
  
  
  
      expect(@b.fecha).to eq 'July 7, 2013'
      expect(@b2.fecha).to eq 'July 7,2015'

  
    
      expect(@b.isbn).to eq ['3459']
      expect(@b2.isbn).to eq ['321']

  

  
      expect(@b.to_s).to eq("\n Autores: Dave Thomas, Andy Hunt, Chad Fowler\n Título: The Pragmatic Programmers Guide\n Serie: serie 3\n Editorial: The Facets of Ruby\n Edición: Pragmatic Bookshelf; 4 edition\n Fecha: July 7, 2013\n Código: 3459")
      expect(@b2.to_s).to eq("\n Autores: Dave Jones\n Título: Linux para listos\n Editorial: Alfaguara\n Edición: 5 edicion\n Fecha: July 7,2015\n Código: 321")

    
  
      expect(@b.autores[0]).to be_a(String)
      expect(@b.autores[1]).to be_a(String)
      expect(@b.autores[2]).to be_a(String)
      expect(@b.titulo).to be_a(String)
      expect(@b.serie).to be_a(String)
       expect(@b.fecha).to be_a(String)
      expect(@b.isbn[0]).to be_a(String)
      expect(@b.edicion).to be_a(String)
      
      #Segunda clase
      expect(@b2.autores[0]).to be_a(String)
      expect(@b2.titulo).to be_a(String)
      expect(@b2.serie).to be_nil
      expect(@b2.fecha).to be_a(String)
      expect(@b2.isbn[0]).to be_a(String)
      expect(@b2.edicion).to be_a(String) 
  
  end
  
end