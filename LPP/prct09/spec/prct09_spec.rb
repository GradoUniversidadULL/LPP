# encoding: UTF-8
require 'spec_helper'


describe Prct09 do
    
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
    @b6 = Book.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'],'The Pragmatic Programmers Guide','The Facets of Ruby','Pragmatic Bookshelf','4 edition','July 7, 2013',['ISBN-13: 978-1937785499','ISBN-10: 1937785491'],'12€','Online')
    @b7 = Periodico.new(['Eric'],'Pragmatic','July 7, 2013','El Pais','2€')
    @b8 = ArtPer.new(['Juan'],'Lectura','July 7, 2013','El Pais','2€','Moda')
    @b9 = DocEle.new(['Juan'],'Lectura','July 7, 2013','www.miarticulo.com')
    @b10 = ArtRev.new(['Pepito'],'Lectura','Jan 4, 2013','5€','Hola!','Coches')    

    #Listas
    @l = Lista.new()
    @l.insert_empty(@b2)
    @l.insert_end(@b3)
    @l.insert_end(@b4)
  
    @l2 = Lista.new()
    
    @l3 = Lista.new()
    @l3.insert_empty(2)
  
    @l4 = Lista.new()
    @l4.insert_empty(0)
    
    @l5 = Lista.new()
    @l5.insert_empty(2)
    @l5.insert_end(6)
    
    @l6 = Lista.new()
    @l6.insert_empty(4)
    @l6.insert_end(2)
    @l6.insert_end(5)
    @l6.insert_end(1)
    @l6.insert_end(8)
    
end


  describe 'Comparación' do

    it "Richard está antes que Scott" do
      expect(@b5 < @b2).to eq(true)
    end
    
    it "Los autores de @b y @b1 son menores o iguales" do
      expect(@b <= @b1).to eq(true)
    end
    
    it "El autor Scott está antes que Eric" do
      expect(@b7 < @b2).to eq(true)
    end
    
    it "El @b es mayor o igual que @b4" do
      expect(@p2 >= @p1).to eq(true)
    end

    it "El autor de b es igual al de b1" do
      expect(@b == @b1).to eq(true)
    end

    it "El autor de b y el de b3 son distintos" do
      expect(@b3 == @b4).to eq(false)
    end

  end 

  describe "Enumerable" do 
   
   

    
    
    it "comprobrando el metodo any?" do
      expect(@l.any?).to eq(true)
      expect(@l2.any?).to eq(false)
    end 

    
    
    it "comprobrando el metodo collect" do
      expect(@l3.map{|i| i*i}).to eq([4])
   
    end 
    
 
    it "comprobrando el metodo count" do
      expect(@l.count).to eq(3)
    end
     
    
    
    it "comprobrando el metodo detect" do
      expect(@l4.detect {|i| i == 0}).to eq(0)
    end

    
    
    it "comprobrando drop" do
      expect(@l5.drop(1)).to eq([6])
    end
         
   
    
    it "comprobrando max" do
      expect(@l6.max).to eq(8)
    end
    
    
    
    it "comprobrando min" do
      expect(@l6.min).to eq(1)
    end
  
    
    it "comprobrando sort" do
      expect(@l6.sort).to eq([1,2,4,5,8])
    end
 

    
  end


end
